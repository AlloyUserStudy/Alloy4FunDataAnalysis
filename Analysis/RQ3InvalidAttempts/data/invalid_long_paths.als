inv15 S: some p,q,r : Person | (p->q in Tutors or q->p in Tutors) and (q->r in Tutors and r->q in Tutors) and (p->r in Tutors and r-> in Tutors)implies (p in Teacher or q in Teacher or r in Teacher)
inv15 S: some p,q,r : Person | (p->q in Tutors or q->p in Tutors) and (q->r in Tutors and r->q in Tutors) and (p->r in Tutors and r-> in Tutors) implies (p in Teacher or q in Teacher or r in Teacher)
inv15 S: some p,q,r : Person | (p->q in Tutors or q->p in Tutors) and (q->r in Tutors or r->q in Tutors) and (p->r in Tutors or r-> in Tutors) implies (p in Teacher or q in Teacher or r in Teacher)
inv15 S: some p,q,r : Person | (p in Teacher or q in Teacher or r in Teacher) implies (p->q in Tutors or q->p in Tutors) and (q->r in Tutors or r->q in Tutors) and (p->r in Tutors or r-> in Tutors)
inv15 S: all p,q,r : Person | (p in Teacher or q in Teacher or r in Teacher) implies (p->q in Tutors or q->p in Tutors) and (q->r in Tutors or r->q in Tutors) and (p->r in Tutors or r-> in Tutors)
inv15 S: some p,q,r : Person | (p->q in Tutors or q->p in Tutors) and (q->r in Tutors or r->q in Tutors) and (p->r in Tutors or r-> in Tutors) implies (p in Teacher or q in Teacher or r in Teacher)
inv15 S: some p,q,r : Person | (p->q in Tutors or q->p in Tutors) and (q->r in Tutors or r->q in Tutors) and (p->r in Tutors or r-> in Tutors) implies (p in Teacher or q in Teacher or r in Teacher)

---
inv5 S: some c : Class, some t : Teacher | t->c in Teaches
inv5 S: some c : Class, some t : Teacher | t->c in Teaches
inv5 S: some c : Class, some t : Teacher | c->t in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches

---
inv10 T: all c : Class, s : Student | some g : Group | s->g in Groups
inv10 T: all s : Student | some g : Group | s->g in Groups
inv10 T: all s : Person | some g : Group | s->g in Groups
inv10 T: all c : Class, s : Student | some g : Group | s->g in c->Groups
inv10 T: all c : Class, s : Student, bg : Groups | some g : Group | s->g in c->bg
inv10 T: all c : Class, s : Student| some g : Group | s->g in Groups
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c.Groups
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c.Groups

---
inv11 S: all c:Class, g:Class.Groups | g in c.Groups implies t->c in Teaches
inv11 S: all c:Class, g:Class.Groups | t:Teacher | g in c.Groups implies t->c in Teaches
inv11 S: all c:Class, g:Groups | t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Class.Groups | some t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups.Group implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups.Person implies t->c in Teaches
inv11 T: all c:Class, pg:Person->Group | some t:Teacher | pg in c.Groups implies t->c in Teaches
inv11 T: all c:Class | some t:Teacher, p:Person | p in c.Groups implies t->c in Teaches

---
inv10 S: all x : Class | all y : Students | x->y in Group
inv10 T: all x : Class | all y : Student | x->y in Group
inv10 T: all x : Class | all y : Student | x->y in Group
inv10 T: all x : Class | x in Groups
inv10 T: all x : Class, y : Student | x->y in Groups
inv10 T: all x : Class, y : Student | x->y in Group
inv10 T: all x : Student | x in Groups

---
inv5 T: some t:Teacher | some g:Group | t->g in Group
inv5 S: some t:Teacher | some g:Group
inv5 S: all p:Person | some c : Classe | p->c in Teaches
inv5 S: all p:Person | some c : Classe | p->c in Teaches
inv5 S: all p:Person |
inv5 S: all p:Person | p in Person

---
inv5 S: some c : Class, some t : Teacher | t->c in Teaches
inv5 S: some c : Class, some t : Teacher | t->c in Teaches
inv5 S: some c : Class, some t : Teacher | c->t in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches

---
inv10 T: all c : Class, s : Student | some g : Group | s->g in Groups
inv10 T: all s : Student | some g : Group | s->g in Groups
inv10 T: all s : Person | some g : Group | s->g in Groups
inv10 T: all c : Class, s : Student | some g : Group | s->g in c->Groups
inv10 T: all c : Class, s : Student, bg : Groups | some g : Group | s->g in c->bg
inv10 T: all c : Class, s : Student| some g : Group | s->g in Groups
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c.Groups
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c.Groups

---
inv11 S: all c:Class, g:Class.Groups | g in c.Groups implies t->c in Teaches
inv11 S: all c:Class, g:Class.Groups | t:Teacher | g in c.Groups implies t->c in Teaches
inv11 S: all c:Class, g:Groups | t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Class.Groups | some t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups.Group implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups.Person implies t->c in Teaches
inv11 T: all c:Class, pg:Person->Group | some t:Teacher | pg in c.Groups implies t->c in Teaches
inv11 T: all c:Class | some t:Teacher, p:Person | p in c.Groups implies t->c in Teaches

---
inv15 S: all p1,p2,p3 : Person	  		| p1 in Teacher or	  		| (p2->p1 in Tutors and p2 in Teacher) or	  		| (p3->p2 in Tutors and p2->p1 Tutors and p3 in Teacher)
inv15 S: all p1,p2,p3 : Person	  		| p1 in Teacher or	  		| (p2->p1 in Tutors and p2 in Teacher) or	  		| (p3->p2 in Tutors and p2->p1 Tutors and p3 in Teacher)
inv15 S: all p1,p2,p3 : Person	  		| p1 in Teacher or	  		  (p2->p1 in Tutors and p2 in Teacher) or	  		  (p3->p2 in Tutors and p2->p1 Tutors and p3 in Teacher)
inv15 S: all p1,p2,p3 : Person	  		| p1 in Teacher or	  		  (p2->p1 in Tutors and p2 in Teacher) or 	  		  (p3->p2 in Tutors and p2->p1 Tutors and p3 in Teacher)
inv15 S: all p1,p2,p3 : Person	  		| p1 in Teacher or	  		  (p2->p1 in Tutors and p2 in Teacher) or 	  		  (p3->p2 in Tutors and p2->p1 Tutors and p3 in Teacher)

---
inv9 S: Teaches in Person one -> Class	  Teaches in Teacher one -> Class	  Teacher in Student no -> Class
inv9 T: Teaches in Person one -> Class	  Teaches in Teacher one -> Class	  Teacher in Student none -> Class
inv9 S: Teaches in Person one -> Class	  Teaches in Teacher one -> Class	  Teacher in Student no -> Class
inv9 T: Teaches in Person one -> Class	  Teaches in Teacher one -> Class	  all s:Student, c:Class | s -> c = none
inv9 T: Teaches in Person one -> Class	  Teaches in Teacher one -> Class	  all s:Student, c:Class | s.c  none

---
inv10 T: all c:Class, s:Student | one s.c
inv10 T: all c:Class, s:Student | one s.Group
inv10 T: all c:Class, s:Student | some c -> s in Groups
inv10 S: all c:Class, s:Student |
inv10 T: Groups in Class -> some Student

---
inv11 T: all c:Class | c not in Teaches implies Class.Groups = none
inv11 T: all c:Class | not c in Teaches implies Class.Groups = none
inv11 T: all c:Class | c not in Person.Teaches implies Class.Groups = none
inv11 T: all c:Class | c not in Person.Teaches implies Class->Groups is none
inv11 T: all c:Class | c not in Person.Teaches implies Class.Groups= none
inv11 T: all c:Class | c not in Person.Teaches implies Class.Groups is none
inv11 T: all c:Class | c not in Person.Teaches implies Class->Groups is none
inv11 S: all c:Class,s:Student | c not in Person.Teaches implies no c->s->g in Groups
inv11 T: all c:Class,s:Student | c not in Person.Teaches implies no c->s=none
inv11 T: all c:Class,s:Student | c not in Person.Teaches implies no c->s->Groups=none

---
inv5 T: some Teacher in Teacher->Teaches
inv5 T: some (Teacher in Teacher->Teaches)
inv5 T: some (Teacher in Teaches)
inv5 T: some (Teacher in Teaches)
inv5 T: some (Teacher in Teaches)
inv5 T: some (Teacher in Teaches)
inv5 T: some (Teacher in Teaches.(~Teaches))

---
inv3 T: all p : Person | no ( p in Student & p in Teacher)
inv3 T: all p : Person | no ( (p in Student) & (p in Teacher))
inv3 T: all p : Person | no ( p in Student & p in Teacher)
inv3 T: all p : Person | no ( p in Student & p in Teacher)
inv3 T: all p : Person | ( p not in Student & p not in Teacher)

---
inv15 S: all p1,p2,p3:Person |
inv15 S: /* all p1,p2,p3:Person |
inv15 S: /* all p1,p2,p3:Person |
inv15 S: /* all p1,p2,p3:Person |
inv15 S: /* all p1,p2,p3:Person

---
inv5 S: some c : Class, some t : Teacher | t->c in Teaches
inv5 S: some c : Class, some t : Teacher | t->c in Teaches
inv5 S: some c : Class, some t : Teacher | c->t in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches

---
inv10 T: all c : Class, s : Student | some g : Group | s->g in Groups
inv10 T: all s : Student | some g : Group | s->g in Groups
inv10 T: all s : Person | some g : Group | s->g in Groups
inv10 T: all c : Class, s : Student | some g : Group | s->g in c->Groups
inv10 T: all c : Class, s : Student, bg : Groups | some g : Group | s->g in c->bg
inv10 T: all c : Class, s : Student| some g : Group | s->g in Groups
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c.Groups
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c.Groups

---
inv11 S: all c:Class, g:Class.Groups | g in c.Groups implies t->c in Teaches
inv11 S: all c:Class, g:Class.Groups | t:Teacher | g in c.Groups implies t->c in Teaches
inv11 S: all c:Class, g:Groups | t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Class.Groups | some t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups.Group implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups.Person implies t->c in Teaches
inv11 T: all c:Class, pg:Person->Group | some t:Teacher | pg in c.Groups implies t->c in Teaches
inv11 T: all c:Class | some t:Teacher, p:Person | p in c.Groups implies t->c in Teaches

---
inv9 T: all c:Class,t:Teacher | lone c.~Teaches.t
inv9 T: all c:Class,t:Teacher | c.~Teaches.t
inv9 T: all c:Class,t:Teacher | ~Teaches.t
inv9 T: all c:Class,t:Teacher | Teaches.t
inv9 T: all c:Class,t:Teacher | t.Teaches

---
inv12 T: all t : Teacher	  		| some c : Class, s : Student, g : Groups	  			| c->s->g in Class
inv12 T: all t : Teacher	  		| (some c : Class, s : Student, g : Groups	  			| c->s->g in Class)
inv12 T: all t : Teacher	  		| (some c : Class, s : Student, g : Groups	  			| c->s->g in Groups)
inv12 T: all t : Teacher	  		| (some c : Class, p : Person, g : Groups	  			| c->p->g in Groups and t->p in Teaches)
inv12 T: all t : Teacher	  		| (some c : Class, p : Person, g : Groups	  			| c->p->g in Groups and t->p in Teaches)

---
inv6 T: Teacher in (Teacher.Teaches).~(Teacher.Teaches)
inv6 S: id in (Teacher.Teaches).~(Teacher.Teaches)
inv6 T: iden & Teacher in (Teacher.Teaches).~(Teacher.Teaches)
inv6 T: (iden & Teacher) in (Teacher.Teaches).~(Teacher.Teaches)
inv6 T: iden  in (Teacher.Teaches).~(Teacher.Teaches)

---
inv11 S: all c : Class, g : Person -> Group, t : Teacher	  		| true
inv11 T: all c : Class, g : Person -> Group	  		| c->g in Groups implies (some t : Teacher | t->c in Teaches)
inv11 T: all c : Class, g : Person -> Group | c->g in Groups implies (some t : Teacher | t->c in Teaches)
inv11 T: all c : Class, g : Person -> Group | c->g in Groups implies (some t : Teacher | t->c in Teaches)
inv11 T: all c : Class, g : Person -> Group | c-> g in Groups

---
inv1 S: Person in student
inv5 T: Teacher.Class
inv5 T: Teaches.Class
inv5 T: Teaches.Class
inv5 T: Teaches.Class.Teacher.Teaches
inv5 T: Teacher in Teacher.Class

---
inv4 S: Teacher | Student
inv4 T: Teacher || Student
inv4 T: Teacher & Person or Student & Person
inv4 T: some Teacher & Person or Student & Person
inv4 T: some (Teacher & Person or Student & Person)
inv4 T: set (Teacher & Person or Student & Person)

---
inv5 T: some t:Teacher | some g:Group | t->g in Group
inv5 S: some t:Teacher | some g:Group
inv5 S: all p:Person | some c : Classe | p->c in Teaches
inv5 S: all p:Person | some c : Classe | p->c in Teaches
inv5 S: all p:Person |
inv5 S: all p:Person | p in Person

---
inv5 S: some c : Class, some t : Teacher | t->c in Teaches
inv5 S: some c : Class, some t : Teacher | t->c in Teaches
inv5 S: some c : Class, some t : Teacher | c->t in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches

---
inv10 T: all c : Class, s : Student | some g : Group | s->g in Groups
inv10 T: all s : Student | some g : Group | s->g in Groups
inv10 T: all s : Person | some g : Group | s->g in Groups
inv10 T: all c : Class, s : Student | some g : Group | s->g in c->Groups
inv10 T: all c : Class, s : Student, bg : Groups | some g : Group | s->g in c->bg
inv10 T: all c : Class, s : Student| some g : Group | s->g in Groups
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c.Groups
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c.Groups

---
inv11 S: all c:Class, g:Class.Groups | g in c.Groups implies t->c in Teaches
inv11 S: all c:Class, g:Class.Groups | t:Teacher | g in c.Groups implies t->c in Teaches
inv11 S: all c:Class, g:Groups | t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Class.Groups | some t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups.Group implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups.Person implies t->c in Teaches
inv11 T: all c:Class, pg:Person->Group | some t:Teacher | pg in c.Groups implies t->c in Teaches
inv11 T: all c:Class | some t:Teacher, p:Person | p in c.Groups implies t->c in Teaches

---
inv5 S: some c : Class, some t : Teacher | t->c in Teaches
inv5 S: some c : Class, some t : Teacher | t->c in Teaches
inv5 S: some c : Class, some t : Teacher | c->t in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches

---
inv10 T: all c : Class, s : Student | some g : Group | s->g in Groups
inv10 T: all s : Student | some g : Group | s->g in Groups
inv10 T: all s : Person | some g : Group | s->g in Groups
inv10 T: all c : Class, s : Student | some g : Group | s->g in c->Groups
inv10 T: all c : Class, s : Student, bg : Groups | some g : Group | s->g in c->bg
inv10 T: all c : Class, s : Student| some g : Group | s->g in Groups
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c.Groups
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c.Groups

---
inv11 S: all c:Class, g:Class.Groups | g in c.Groups implies t->c in Teaches
inv11 S: all c:Class, g:Class.Groups | t:Teacher | g in c.Groups implies t->c in Teaches
inv11 S: all c:Class, g:Groups | t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Class.Groups | some t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups.Group implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups.Person implies t->c in Teaches
inv11 T: all c:Class, pg:Person->Group | some t:Teacher | pg in c.Groups implies t->c in Teaches
inv11 T: all c:Class | some t:Teacher, p:Person | p in c.Groups implies t->c in Teaches

---
inv5 T: Teacher.Class
inv5 T: Teaches.Class
inv5 T: Teaches.Class
inv5 T: Teaches.Class.Teacher.Teaches
inv5 T: Teacher in Teacher.Class

---
inv3 T: no Person in Student + Teacher
inv3 T: no Person in Student and Teacher
inv15 S: all p : Person {	    (some (p.~Tutors) & Teacher)) or (some (p.~Tutors.~Tutors) & Teacher)) or (some (p.~Tutors.~Tutors.~Tutors) & Teacher))	  }
inv5 S: some c : Class, some t : Teacher | t->c in Teaches
inv5 S: some c : Class, some t : Teacher | t->c in Teaches
inv5 S: some c : Class, some t : Teacher | c->t in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches

---
inv10 T: all c : Class, s : Student | some g : Group | s->g in Groups
inv10 T: all s : Student | some g : Group | s->g in Groups
inv10 T: all s : Person | some g : Group | s->g in Groups
inv10 T: all c : Class, s : Student | some g : Group | s->g in c->Groups
inv10 T: all c : Class, s : Student, bg : Groups | some g : Group | s->g in c->bg
inv10 T: all c : Class, s : Student| some g : Group | s->g in Groups
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c.Groups
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c.Groups

---
inv11 S: all c:Class, g:Class.Groups | g in c.Groups implies t->c in Teaches
inv11 S: all c:Class, g:Class.Groups | t:Teacher | g in c.Groups implies t->c in Teaches
inv11 S: all c:Class, g:Groups | t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Class.Groups | some t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups.Group implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups.Person implies t->c in Teaches
inv11 T: all c:Class, pg:Person->Group | some t:Teacher | pg in c.Groups implies t->c in Teaches
inv11 T: all c:Class | some t:Teacher, p:Person | p in c.Groups implies t->c in Teaches

---
inv5 S: some c : Class, some t : Teacher | t->c in Teaches
inv5 S: some c : Class, some t : Teacher | t->c in Teaches
inv5 S: some c : Class, some t : Teacher | c->t in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches

---
inv10 T: all c : Class, s : Student | some g : Group | s->g in Groups
inv10 T: all s : Student | some g : Group | s->g in Groups
inv10 T: all s : Person | some g : Group | s->g in Groups
inv10 T: all c : Class, s : Student | some g : Group | s->g in c->Groups
inv10 T: all c : Class, s : Student, bg : Groups | some g : Group | s->g in c->bg
inv10 T: all c : Class, s : Student| some g : Group | s->g in Groups
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c.Groups
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c.Groups

---
inv11 S: all c:Class, g:Class.Groups | g in c.Groups implies t->c in Teaches
inv11 S: all c:Class, g:Class.Groups | t:Teacher | g in c.Groups implies t->c in Teaches
inv11 S: all c:Class, g:Groups | t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Class.Groups | some t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups.Group implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups.Person implies t->c in Teaches
inv11 T: all c:Class, pg:Person->Group | some t:Teacher | pg in c.Groups implies t->c in Teaches
inv11 T: all c:Class | some t:Teacher, p:Person | p in c.Groups implies t->c in Teaches

---
inv5 T: some t:Teacher | some g:Group | t->g in Group
inv5 S: some t:Teacher | some g:Group
inv5 S: all p:Person | some c : Classe | p->c in Teaches
inv5 S: all p:Person | some c : Classe | p->c in Teaches
inv5 S: all p:Person |
inv5 S: all p:Person | p in Person

---
inv13 S: all t:Teacher , s:Student | t in Tutors and |(s in Tutors)
inv13 T: all t:Teacher , s:Student | t in Tutors and !(s in Tutors)
inv13 T: all t:Teacher , s:Student | t in Tutors and not (s in Tutors)
inv13 T: all t:Teacher , s:Student | t in Tutors
inv13 T: all t:Teacher  | t in Tutors
inv13 S: all p:Person | p in Tutor implies p in Teacher
inv13 T: all p:Person | p in Tutors implies p in Teacher
inv13 T: all p:Person | p in Tutors implies p in Teacher
inv13 T: all p:Person | p in Tutors implies p in Teacher

---
inv8 S: all t1,t2:Teacher | some c1,c2:Class | t1->c1 in Teaches and t1->c2 in Teaches implies c1=c2 | t1->c in Teaches and t2->c1 in Teaches implies t1=t2 |
inv8 S: all t1,t2:Teacher | some c1,c2:Class | t1->c in Teaches and t2->c1 in Teaches implies t1=t2 |
inv8 S: all t1,t2:Teacher | some c1,c2:Class | t1->c1 in Teaches and t1->c2 in Teaches implies c1=c2 | t1->c in Teaches and t2->c1 in Teaches implies t1=t2
inv8 S: all t1,t2:Teacher | some c1,c2:Class | t1->c in Teaches and t2->c1 in Teaches implies t1=t2
inv8 S: all t1,t2:Teacher | some c1,c2:Class | t1->c1 in Teaches and t1->c2 in Teaches implies c1=c2 | t1->c1 in Teaches and t2->c1 in Teaches implies t1=t2

---
inv11 T: all x : Class, p:Person, g:Group | some x->p->g in Class implies p->g in Teacher
inv11 S: all x : Class | some p: Person, g : Groups, x->p->g in Class implies p->g in Teacher
inv11 S: all x : Class | some p: Person, g : Groups, x->p->g in Class implies p->g in Teacher
inv11 S: all x : Class | some p: Person, g : Groups, x->p->g in Class implies p->g in Teaches
inv11 S: all x : Class | some p: Person, g : Groups, x->p->g in Groups implies p->g in Teaches
inv11 T: all x : Class | some p: Person, g : Groups | x->p->g in Groups implies p->g in Teaches
inv11 T: all x : Class | some p: Person, g : Groups | x->p->g in Groups implies some t : Teacher | p->g in Teaches
inv11 T: all x : Class | some p: Person, g : Groups | x->p->g in Groups implies some t : Teacher | t->x in Teaches
inv11 T: all x : Class | some p: Person, g : Groups | x->p->g in Class implies some t : Teacher | t->x in Teaches
inv11 T: all x : Class | some p: Person, g : Groups | x->p->g in Groups implies some t : Teacher | t->x in Teaches
inv11 T: all x : Class | some p: Person, g : Groups | x->p->g in Groups implies some t : Teacher | t->x in Teaches

---
inv12 S: all x : Class | (some p: Person, g : Group | x->p->g in Groups) implies (some t : Teacher | t->g in Tutors)
inv12 S: all x : Class | (some p: Person, g : Group | x->p->g in Groups) implies (some t : Teacher | t->g in Tutors)
inv12 S: all t: Teacher , x :Class | (some g : Group | x->p->g in Groups) implies t->g in Tutors
inv12 S: all t: Teacher , x :Class | (some g : Group | x->t->g in Groups) implies t->g in Tutors
inv12 S: all t: Teacher , x :Class | some g : Group | x->t->g in Groups | t->g in Tutors

---
inv12 S: all t: Teacher| (some x:Class | t->x in Teaches) implies some g:Group | x->g in Groups
inv12 T: all t: Teacher| some x:Class | t->x in Teaches implies some g:Group | x->g in Groups
inv12 T: all t: Teacher| some x:Class | t->x in Teaches implies some g:Group | x->g in Groups
inv12 T: all t: Teacher| some x:Class | t->x in Teaches implies some g:Group | x->g in Groups
inv12 T: all t: Teacher| some x:Class | t->x in Teaches implies some g:Group | x->g in Groups
inv12 T: all t: Teacher| some x:Class | t->x in Teaches implies some g:Group | x->g in Groups
inv12 T: all t: Teacher| some x:Class | t->x in Teaches implies some g:Group | x->g in Groups

---
inv5 T: some t:Teacher | some g:Group | t->g in Group
inv5 S: some t:Teacher | some g:Group
inv5 S: all p:Person | some c : Classe | p->c in Teaches
inv5 S: all p:Person | some c : Classe | p->c in Teaches
inv5 S: all p:Person |
inv5 S: all p:Person | p in Person

---
inv8 S: -Teaches.Teaches in iden
inv8 S: -(Teacher<:Teaches) . (Teacher <: Teaches) in iden
inv8 S: -(Teacher<:Teaches) . (Teacher <: Teaches) in iden
inv8 S: -(Teacher<:Teaches).(Teacher<:Teaches) in iden
inv8 S: -(Teacher<:Teaches).(Teacher<:Teaches) in iden

---
inv11 T: all c:Class |some t:Teacher |some g:Group |some p:Person | c->( p->g)  implies t->c in Teaches
inv11 T: all c:Class |some t:Teacher |some g:Group |some p:Person | c->p->g  implies t->c in Teaches
inv11 T: all c:Class |some g:Group |some p:Person | c->p->g  implies some t:Teacher| t->c in Teaches
inv11 S: all c:Class |some g:Group |some p:Person | c->p->g  implies some t:Teacher t->c in Teaches
inv11 S: all c:Class |some g:Group |some p:Person | c->p->g  implies |some t:Teacher t->c in Teaches
inv11 T: all c:Class |some g:Group |some p:Person | c->p->g  implies (some t:Teacher| t->c in Teaches )
inv11 T: all c:Class | (some g:Group |some p:Person | c->p->g)  implies (some t:Teacher | t->c in Teaches )
inv11 T: all c:Class | (some g:Group |some p:Person | c->(p->g))  implies (some t:Teacher | t->c in Teaches )
inv11 T: all c:Class | (some g:Group |some p:Person | c->(p->g))  implies (some t:Teacher | t->c in Teaches )

---
inv12 S: all t: Teacher  implies (some c:Class | t->c in Teaches) implies (some g:Group |all p:Person | c->p->g in Groups )
inv12 S: all t: Teacher t in Teacher implies (some c:Class | t->c in Teaches) implies (some g:Group |all p:Person | c->p->g in Groups )
inv12 S: all t: Teacher implies (some c:Class | t->c in Teaches) implies (some g:Group |all p:Person | c->p->g in Groups )
inv12 S: all t: Teacher implies (some c:Class | t->c in Teaches) implies (some g:Group |all p:Person | c->p->g in Groups )
inv12 S: (all t: Teacher | some c:Class | t->c in Teaches) implies (some g:Group |all p:Person | c->p->g in Groups )

---
inv14 S: some s :Student | some c:class | some g:Group c->s->g in Groups and (some t:Teacher t->c) implies t->s in Tutors
inv14 S: some s :Student | some c:class | some g:Group c->s->g in Groups and (some t:Teacher t->c)
inv14 S: some s :Student | some c:class | some g:Group| c->s->g in Groups and (some t:Teacher t->c)
inv14 S: some s :Student | some c:class | some g:Group | c->s->g in Groups and (some t:Teacher t->c) implies t->s in Tutors
inv14 S: some s :Student | some c:class | some g:Group | c->s->g in Groups
inv14 S: some s :Student | some c:class | some g:Group  c->s->g in Groups
inv14 S: some s :Student | some c:class | some g:Group | c->s->g in Groups

---
inv14 S: some s :Student | some c:Class | some g:Group | c->s->g in Groups and some t:Teacher t->c implies t->s in Tutors
inv14 T: some s :Student | some c:Class | some g:Group | c->s->g in Groups and some t:Teacher| t->c implies t->s in Tutors
inv14 T: some s :Student | some c:Class | some g:Group | c->s->g in Groups and (some t:Teacher| t->c) implies t->s in Tutors
inv14 T: some s :Student | some c:Class | some g:Group | c->s->g in Groups and (some t:Teacher| t->c implies t->s in Tutors)
inv14 S: (all s :Student | some c:Class | some g:Group | c->s->g in Groups) and (some t:Teacher| t->c in Teaches implies t->s in Tutors)

---
inv9 S: all t1,t2:Teacher |
inv9 S: all t1,t2:Teacher |
inv9 S: all t1,t2:Teacher |
inv9 S: all t1,t2:Teacher |
inv9 S: all t1,t2:Teacher |
inv9 S: all t1,t2:Teacher |

---
inv14 S: some c:Class ,g:Groups | all s :Students | g in c
inv14 T: some c:Class ,g:Groups | all s :Student | g in c
inv14 S: some c:Class ,g:Groups ,t:Teacher| all s :Students | c->(s->g) in Groups implies t->s in Tutors
inv14 T: some c:Class ,g:Groups ,t:Teacher| all s :Student | c->(s->g) in Groups implies t->s in Tutors
inv14 T: some c:Class ,g:Groups ,t:Teacher| all s :Student | (c->(s->g) in Groups  and t->c in Teaches) implies t->s in Tutors
inv14 T: some c:Class ,g:Groups ,t:Teacher| all s :Student | (c->(s->g) in Groups  and t->c in Teaches)
inv14 T: some c:Class ,g:Groups ,t:Teacher| all s :Student | (c->(s->g) in Groups  and t->c in Teaches) implies t->s in Tutors
inv14 S: some c:Class ,g:Groups ,t:Teacher| all s :Student | (c->(s->g) in Groups
inv14 T: some c:Class ,g:Groups ,t:Teacher| all s :Student | c->(s->g) in Groups
inv14 T: some c:Class |some g:Groups |some t:Teacher| all s :Student | c->(s->g) in Groups
inv14 T: some c:Class |some g:Groups | all s :Student | c->(s->g) in Groups

---
inv5 S: some c : Class, t : Teacher | t.teahes in Class
inv5 S: some c : Class, some t : Teacher | t->c in Teaches
inv5 S: some c : Class, some t : Teacher | t->c in Teaches
inv5 S: some c : Class, some t : Teacher | c->t in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches
inv5 S: some t : Teacher, some c : Class | t->c in Teaches

---
inv10 T: all c : Class, s : Student | some g : Group | s->g in Groups
inv10 T: all s : Student | some g : Group | s->g in Groups
inv10 T: all s : Person | some g : Group | s->g in Groups
inv10 T: all c : Class, s : Student | some g : Group | s->g in c->Groups
inv10 T: all c : Class, s : Student, bg : Groups | some g : Group | s->g in c->bg
inv10 T: all c : Class, s : Student| some g : Group | s->g in Groups
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c.Groups
inv10 T: all c : Groups in Class, s : Student| some g : Group | s->g in c.Groups

---
inv11 S: all c:Class, g:Class.Groups | g in c.Groups implies t->c in Teaches
inv11 S: all c:Class, g:Class.Groups | t:Teacher | g in c.Groups implies t->c in Teaches
inv11 S: all c:Class, g:Groups | t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Class.Groups | some t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups.Group implies t->c in Teaches
inv11 T: all c:Class, g:Groups | some t:Teacher | g in c.Groups.Person implies t->c in Teaches
inv11 T: all c:Class, pg:Person->Group | some t:Teacher | pg in c.Groups implies t->c in Teaches
inv11 T: all c:Class | some t:Teacher, p:Person | p in c.Groups implies t->c in Teaches

---
inv14 S: all s : Student | s in Class, g : Group | c->s->g  in Groups implies some t : Teacher | t->s in Tutors
inv14 S: all s : Student | s in Class, g : Group | c->s->g  in Groups implies some t : Teacher | t->s in Tutors
inv14 S: all s : Student | c : Class, g : Group | c->s->g  in Groups implies some t : Teacher | t->s in Tutors
inv14 S: all s : Student | (c : Class, g : Group | c->s->g  in Groups) implies some t : Teacher | t->s in Tutors
inv14 S: all s : Student | (c : Class, g : Group | c->s->g in Groups) implies some t : Teacher | t->s in Tutors

---
inv12 T: all t : Teacher | some c : Class, g : Groups | c->t->g in Groups
inv12 T: all t : Teacher | some c : Class, g : Groups | c->t->g in Groups
inv12 T: all t : Teacher | some c : Class | some g : Groups | c->t->g in Groups
inv12 T: all t : Teacher | some c : Class | some g : Groups | c->t->g in Groups
inv12 T: some c : Class | some g : Groups | all t : Teacher | c->t->g in Groups
inv12 T: some c : Class | all t : Teacher | some g : Groups | c->t->g in Groups
inv12 T: all c : Class | all t : Teacher | all g : Groups | c->t->g in Groups

---
inv9 T: all c : Class | lone c.Groups in Teacher.Teaches
inv9 T: lone Teacher in Teaches.Class
inv9 T: lone Teacher in Teaches.Teaches
inv9 S: no some Teacher in Teaches.Class
inv9 T: no Teacher in Teaches.Class

---
inv9 S: all c : Class | t1, t2 : Teacher | t1 in Teaches.c & t2 in Teaches.c :> t1=t2
inv9 S: all c : Class | t1, t2 : Teacher | t1 in Teaches.c & t2 in Teaches.c -> t1=t2
inv9 S: all c : Class | t1, t2 : Teacher | t1 in Teaches.c and t2 in Teaches.c -> t1=t2
inv9 T: all c : Class | some t1, t2 : Teacher | t1 in Teaches.c and t2 in Teaches.c -> t1=t2
inv9 T: all c : Class | lone Teacher in Teaches.c

---
inv5 T: some t:Teacher | some g:Group | t->g in Group
inv5 S: some t:Teacher | some g:Group
inv5 S: all p:Person | some c : Classe | p->c in Teaches
inv5 S: all p:Person | some c : Classe | p->c in Teaches
inv5 S: all p:Person |
inv5 S: all p:Person | p in Person

---
inv10 S: all x : Class | (some p : Person, g : Group x->p->g in Groups) -> ( some t : Teacher | t->x in Teaches)
inv10 S: all x : Class | (some p : Person, g : Group x->p->g in Groups) -> ( some t : Teacher | t->x in Teaches)
inv10 T: all x : Class | (some p : Person, g : Group | x->p->g in Groups) -> ( some t : Teacher | t->x in Teaches)
inv10 S: all x : Class | (some p : Person, g : Group  x->p->g in Groups) -> 	(some t : Teacher | t->x in Teaches)
inv10 S: all x : Class | (some p : Person, g : Group  x->p->g in Groups) -> 	(some t : Teacher | t->x in Teaches)
inv10 S: all x : Class | (some p : Person, g : Group  x->p->g in Groups) -> 	(some t : Teacher | t->x in Teaches)

---
inv11 T: all c:Class, t:Teacher | some g:Group | c->g in Groups
inv11 T: all c:Class, t:Teacher | some g:Group | c.Groups implies t->c in Teaches
inv11 T: all c:Class, t:Teacher | some g:Group | c->g implies t->c in Teaches
inv9 T: all c : Class | lone Teacher.c
inv9 T: all c : Class | lone Teacher.c
inv9 T: all c : Class | lone Teacher in Teaches.c
inv9 T: all c : Class | lone (Teacher in Teaches.c)
inv9 T: all c : Class | one Teacher in Teaches.c
inv9 T: all c : Class | one Teacher in Teaches.c
inv9 T: all c : Class | one Teacher in Teaches.c

---
inv9 T: some c : Class | lone Teacher in Teaches.c
inv9 S: lone Teavher in Teacher.teaches
inv9 T: lone Teacher in Teacher.teaches
inv9 T: lone Teacher in Teacher.teaches
inv9 T: lone Teacher in Teacher.Teaches
inv9 T: one Teacher in Teacher.Teaches
inv9 T: one Teacher in Teaches.Class

---
inv10 S: All c : Class | S : Student | s.(c.Groups)
inv10 S: All c : Class | S : Student | s.(c.Groups)
inv10 S: all c : Class | S : Student | s.(c.Groups)
inv10 S: all c : Class | s : Student | s.(c.Groups)
inv10 T: all c : Class, s : Student | s.(c.Groups)

---
inv10 S: all x : Class | (some p : Person, g : Group x->p->g in Groups) -> ( some t : Teacher | t->x in Teaches)
inv10 S: all x : Class | (some p : Person, g : Group x->p->g in Groups) -> ( some t : Teacher | t->x in Teaches)
inv10 T: all x : Class | (some p : Person, g : Group | x->p->g in Groups) -> ( some t : Teacher | t->x in Teaches)
inv10 S: all x : Class | (some p : Person, g : Group  x->p->g in Groups) -> 	(some t : Teacher | t->x in Teaches)
inv10 S: all x : Class | (some p : Person, g : Group  x->p->g in Groups) -> 	(some t : Teacher | t->x in Teaches)
inv10 S: all x : Class | (some p : Person, g : Group  x->p->g in Groups) -> 	(some t : Teacher | t->x in Teaches)

---
inv10 T: (all c : Class | all s : Student | some g : Groups | s->g in Groups)
inv10 T: (all c : Class | all s : Student | some g : Groups | s->g in Groups)
inv10 S: (all c : Class | some g : Groups | s->g in Groups)
inv10 T: (all s : Student | some g : Groups | s->g in Groups)
inv10 T: (all s : Student | some g : Group | s->g in Groups)
inv10 T: (all s : Student | some g : Group | s->g in Class)
inv10 T: (all s : Student | some g : Group | all c : Class |  (s->g)->c in Class)
inv10 T: (all s : Student | some g : Group | all c : Class |  c->(s->g) in Class)

---
inv14 S: all p1 : Student, some t : Teacher | (all c: Class, some g: Group | c->g->p1) => t->p1 in Tutors
inv14 S: all p1 : Student, some t : Teacher | (some c: Class, some g: Group | c->g->p1) and t->p1 in Tutors
inv14 S: all p1 : Student | some t : Teacher | (some c: Class, some g: Group | c->g->p1) and t->p1 in Tutors
inv14 S: all p : Student, some t : Teacher | (some c: Class, some g: Group | c->g->p) and t->p in Tutors
inv14 T: all s : Student | some c:Class, g:Group | (c->s->g in Group and some t:Teacher | t->c in Teaches and t->s in Tutors)
inv14 S: all s: Student | some t:Teacher | (some c:Class, g:Group | c->s->g in Groups) and t->c in Teaches and t->s in Tutors
inv14 S: all s: Student | some t:Teacher, some c:Class | (some g:Group | c->s->g in Groups) and t->c in Teaches and t->s in Tutors

---
inv5 S: some c: Class | some t: Teacher | t.class
inv5 T: some c: Class | some t: Teacher | t.Class
inv5 T: some c: Class | some t: Teacher | c.t
inv5 T: all t: Teacher | t.Teaches
inv5 T: some t: Teacher | t.Teaches

---
inv5 S: some c: Class | all t: Teacher | t.teaches.c
inv5 T: some c: Class | all t: Teacher | t.Teaches.c
inv5 S: some c: Class | all t: Teacher | c->t->g
inv5 T: some c: Class | all t: Teacher | c->t->Group
inv5 S: some c: Class | all t: Teacher | p->c in Teaches

---
inv8 S: all t: Teacher | lone c: Class |
inv8 S: all t: Teacher | lone c: Class |
inv8 S: all t: Teacher | lone c: Class |
inv8 S: all t: Teacher | lone c: Class |
inv8 S: all t: Teacher | lone c: Class |

---
inv12 T: some g: Groups | lone t: Teacher | t.Groups
inv12 T: some g: Groups | lone t: Teacher | t.Teaches.Groups
inv12 T: some g: Groups | lone t: Teacher | t.Teaches.g
inv12 T: some g: Groups | lone t: Teacher | t.Teaches in g
inv12 T: some g: Group | lone t: Teacher | t.Teaches in g.Groups
inv12 T: some c: Class | lone t: Teacher | t.Teaches in c.Groups
inv12 T: some c: Class | lone t: Teacher | t.Teaches.Groups

---
inv13 T: all t: Teacher | all s: Student | t.Tutors and not s.Tutors
inv13 S: all t: Teacher | all s: Student | t.Tutors and not in s.Tutors
inv13 T: all t: Teacher | all s: Student | t.Tutors and no s.Tutors
inv13 T: all t: Teacher | t.Tutors
inv13 T: all t: Teacher | t.Tutors.Student

---
inv7 T: all class : Class | class in Teacher.class
inv7 S: Class  in Teacher.class
inv7 T: Class  in Teacher.Class
inv7 T: all c:Class | c  in Teacher.Class
inv7 T: all c:Class | c  in Teacher.Class
inv7 T: all c:Class | c  in Teacher.Class
inv7 T: all c:Class | c  in Teacher.Class

---
inv14 T: all s: Student | Teacher in Teaches.Groups.(s->Group)
inv14 T: all s: Student | Teaches.Groups.(s->Group) in Teacher
inv14 T: all s: Student | some g: Group | Teaches.Groups.(s->g) in Teacher
inv14 T: all s: Student | all g: Group | Teaches.Groups.(s->g) in Teacher
inv14 T: all s: Student | some g: Group | Teaches.Groups.(s->g) in Teacher

---
inv11 S: all c:Class | some g:Group iff c in Teacher.Teaches
inv11 S: all c:Class | some g:Group iff {c in Teacher.Teaches}
inv11 S: all c:Class | some g:Group iff some t:Teacher | c in t.Teaches
inv11 S: all c:Class , g:Group iff some t:Teacher | c in t.Teaches
inv11 S: all c:Class , g:Group iff some t:Teacher | c in t.Teaches
inv11 T: all c:Class | some c.Group iff some t:Teacher | c in t.Teaches

---
inv11 T: all c:Class, g:Groups| some c.g iff some t:Teacher | c in t.Teaches
inv11 T: all c:Class | all g:Groups| some c.g iff some t:Teacher | c in t.Teaches
inv11 T: all c:Class | all g:Groups| some (c.g) iff some t:Teacher | c in t.Teaches
inv11 S: all c:Class | c.Groups iff | c in Teacher.Teaches
inv11 T: all c:Class | c.Groups iff some t:Teacher| c in t.Teaches
inv11 S: all c:Class , c.Groups iff some t:Teacher| c in t.Teaches
inv11 S: all c:Class | all c.Groups iff some t:Teacher| c in t.Teaches

---
inv4 S: Person in (Student | Teacher)
inv4 T: Person in (Student || Teacher)
inv4 T: Person in (Student or Teacher)
inv4 S: Person in (Student | Teacher)
inv4 T: Person in (Student || Teacher)

---
inv10 T: Class.Student.Group
inv10 T: Group.Person
inv10 T: Group.Class
inv10 T: Group.Student
inv10 T: Groups.Student
inv10 T: Student -> Group
inv10 T: Student -> Groups
inv10 S: Groups: Student -> Group
inv10 T: Class.Person
inv10 T: some Class.Person
inv10 T: some Class.Student
inv10 T: some Class.Student.Group
inv10 T: some Class + Student.Group
inv10 T: all c: Class | some c.Student.Group
inv10 T: all c: Class | some c.Group

---
inv11 T: ~Groups.Class implies ~Class.Teacher
inv11 T: ~Group.Class implies ~Class.Teacher
inv11 T: ~Groups.Class implies ~Class.Teacher
inv11 T: Groups.Class implies ~Class.Teacher
inv11 T: Class.Group implies Person = Teacher
inv11 T: Class.Groups implies Teacher.Teaches

---
inv6 S: all t : Teacher | some c in t.Teaches
inv6 T: all t : Teacher | some Class in t.Teaches
inv6 T: all t : Teacher | some (Class in t.Teaches)
inv6 S: all t : Teacher | (some Class) in t.Teaches)
inv6 T: all t : Teacher | (some Class) in t.Teaches

---
inv6 T: all t : Teacher | some Class.t
inv6 T: all t : Teacher | some t.Class
inv6 T: all t : Teacher | some Class.t.Teaches
inv6 T: all t : Teacher | some t.Teaches.Class
inv6 S: all t : Teacher |
inv6 S: all t : Teacher |

---
inv10 T: all c : Class | no c.Student.Groups
inv10 T: all c : Class | some c.Student.Groups
inv10 T: all c : Class | some c in Student.Groups
inv10 T: all c : Class | c in Student.Groups
inv10 T: all c : Class | c in Person.Groups
inv10 T: all c : Class | c in Person->Groups
inv10 T: all c : Class | c.Groups in c.Person->c.Groups
inv10 T: all c : Class | c.Groups in c.Student->c.Groups
inv10 T: all c : Class | c.Groups in c.Student->Groups
inv10 T: all c : Class | c.Groups in c.Tutors->c.Groups
inv10 T: all c : Class | c in c.Student->c.Groups

---
inv10 T: all c : Class | c in Student->c.Groups
inv10 T: all c : Class | c in Student->Groups
inv10 T: all c : Class | Student->c.Groups in c
inv10 T: all c : Class | c in Student->Groups
inv10 T: all c : Class | Student->Groups
inv10 T: all c : Class | all s : Student | s in c.Groups
inv10 T: all c : Class | all s : Student | c.Groups in s
inv10 T: all c : Class | all s : Student | c in s->Groups
inv10 T: all c : Class | all s : Student | s->Groups in c
inv10 T: all c : Class | Student->Groups in c
inv10 T: all c : Class | c.Student->Groups
inv10 T: all c : Class | c & Student->Groups
inv10 T: all c : Class | c->Groups
inv10 T: all c : Class | c.Groups

---
inv13 T: Person.Tutors & Student and Tutors.Person & Teacher
inv13 T: Person.Tutors & Student	  Tutors.Person & Teacher
inv13 T: Person.Tutors & Student and	  Tutors.Person & Teacher
inv13 S: Person.Tutors & Student, 	  Tutors.Person & Teacher
inv13 T: Person.Tutors & Student

---
inv4 T: Student or Teacher
inv4 T: no ( (not Student) & (not Teacher) )
inv4 S: no ( not Student & not Teacher )
inv4 T: Person in Teacher or Student
inv4 T: Person in (Teacher or Student)

---
inv5 T: Teacher.Class
inv5 T: Teacher & Class
inv5 T: Teacher.Teaches
inv5 T: Person.Teaches
inv5 T: some p:Person | p.Teaches

---
inv8 S: one Person.teacher Teacher.Teaches
inv8 T: one Person.Teacher Teacher.Teaches
inv8 T: one Person.Teacher + Teacher.Teaches
inv8 T: one Person.Teacher & Teacher.Teaches
inv8 T: one Teacher in Teacher.Teaches
inv8 T: one Person.Teacher in Teacher.Teaches
inv8 T: one (Teacher.Teaches).Teacher
inv8 T: one Teacher in (Teacher.Teaches)
inv8 T: one Teacher in Teaches.Class

---
inv3 S: (Person in Student and Person not in Teacher) or (Person not in Student and Person in Teacher) or (Person not in Student and Person not in Teacher)	}
inv3 S: no Person in Student in Teacher	}
inv3 S: Person in Student in Teacher	}
inv3 S: Person not in Student & Teacher	}
inv3 S: Person not in (Student & Teacher)	}
inv3 S: no Person not (Student & Teacher)	}
inv3 S: }
inv3 S: }
inv3 S: no Student & Teacher	}
inv3 S: no Student & Teacher 	}

---
inv4 S: no (no Student & no Teacher)
inv4 T: no (~Student & ~Teacher)
inv4 T: no ~Student & ~Teacher
inv4 T: Student or Teacher
inv4 T: Student + Teacher

---
inv5 T: Teacher.Class
inv5 T: Teacher & Class
inv5 T: Teacher.Teaches
inv5 T: Person.Teaches
inv5 T: some p:Person | p.Teaches

---
inv10 T: all c : Class | all s : c.Groups.Student | #s.Group > 0
inv10 T: all c : Class | all s : c.Groups.Person | #s.Group > 0
inv10 T: all c : Class | all s : c.Groups | #s.Group > 0
inv10 T: all c : Class | all s : c.Groups | #s.Student > 0
inv10 T: all c : Class | all g : c.Groups | #g->Student > 0

---
inv10 T: all c: Class,s: Student | some s.c.Groups
inv10 T: all c: Class,s: Student | some (s.c.Groups)
inv10 S: all c : Class, all s: Student | some (s.c.Groups)
inv10 T: all c : Class| all s: Student | some (s.c.Groups)
inv10 T: all c : Class | all s: Student | some (s.c.Groups)
inv10 T: all c : Class | all s: Student | some (s.c.Groups)

---
inv13 T: (Person.Tutors in Student) and (Person.Student in Teacher)
inv10 T: (Groups < Group) = (Class -> Student)
inv10 T: (Groups <: Group) = (Class -> Student)
inv10 T: (Groups :> Group) = (Class -> Student)
inv10 T: (Groups . (Student.Group)) = (Class -> Student)
inv10 T: (Groups . Group) = (Class + Student)
inv10 T: (Groups .^ Group) = (Class -> Student)
inv10 T: (Groups .~ Group) = (Class -> Student)
inv10 T: (Groups .* Group) = (Class -> Student)
inv10 T: (Groups . Group) = (Class - Student)
inv10 T: (Groups . ^Group) = (Class -> Student)
inv10 T: (Groups -> Group) = (Class -> Student)
inv10 T: (Groups + Group) = (Class -> Student)

---
inv5 S: all t:Teacher | t.Teaches = c
inv5 S: all t:Teacher | t.Teaches = c
inv5 S: all t:Teacher | t.Teaches = c
inv5 S: all t:Teacher | t.Teaches = c
inv5 S: all t:Teacher | t.Teaches = c

---
inv8 S: one Person.teacher Teacher.Teaches
inv8 T: one Person.Teacher Teacher.Teaches
inv8 T: one Person.Teacher + Teacher.Teaches
inv8 T: one Person.Teacher & Teacher.Teaches
inv8 T: one Teacher in Teacher.Teaches
inv8 T: one Person.Teacher in Teacher.Teaches
inv8 T: one (Teacher.Teaches).Teacher
inv8 T: one Teacher in (Teacher.Teaches)
inv8 T: one Teacher in Teaches.Class

---
inv12 T: all t : Teacher | some p : Person, g : Group | some g.p.(t.Teaches)
inv12 T: all t : Teacher | some p : Person, g : Group | some g.(p.(t.Teaches))
inv12 T: all t : Teacher | some p : Person, g : Group | some g.(p.(t.Teaches).Groups)
inv12 T: all t : Teacher | some p : Person, g : Group | some g.(p.(t.Teaches.Groups))
inv12 S: all t : Teacher | some p : Person, g : Group | some g.(p.((t.Teaches).Groups)))

---
inv15 S: for p in Person | p . *Tutors in Teacher
inv15 S: for p in Person | (p.*Tutors) in Teacher
inv15 S: for p in Person | (p.*Tutors) in Teacher
inv15 S: for p in Person | (p.*Tutors) in Teacher
inv15 S: for p : Person | (p.*Tutors) in Teacher

---
inv3 T: ~((Student and Teacher) in Person)
inv3 T: all p:Person | ~(p in Student and p in Teacher)
inv3 T: all p:Person | ~(p in Student and p in Teacher)
inv3 T: all p:Person | ~(p in Student and p in Teacher)
inv3 S: p in Person implies (p in Student or p in Teacher)

---
inv4 T: one Student or Teacher
inv4 T: Student or Teacher
inv4 S: forall p:Person -> p in Teacher or p in Student
inv4 S: all p:Person -> p in Teacher or p in Student
inv4 S: all p:Person , p in Teacher or p in Student

---
inv10 T: all c : Class | all s : c.Groups.Student | #s.Group > 0
inv10 T: all c : Class | all s : c.Groups.Person | #s.Group > 0
inv10 T: all c : Class | all s : c.Groups | #s.Group > 0
inv10 T: all c : Class | all s : c.Groups | #s.Student > 0
inv10 T: all c : Class | all g : c.Groups | #g->Student > 0

---
inv12 T: Teacher in Groups.Group
inv12 T: Teacher in ~(Teacher<:Groups).Teacher
inv12 T: Teacher in ~(Teacher<:Groups)
inv12 T: Teacher in Teacher<:Groups
inv12 T: Teacher in Teacher<:Groups

---
inv12 T: all t:Teacher | some(Class.Groups.Group.t)
inv12 T: all t:Teacher | some t.(Class.Groups.Group)
inv12 T: all t:Teacher | some t.Person
inv12 T: all t:Teacher | some Person.t
inv12 T: all t:Teacher | some Person.Teacher

---
inv14 T: all c : Class, g : Group, s : c->Student->g, t : Teaches.c | s in t.Tutors
inv14 T: all c : Class, g : Group, s : c.Student, t : Teaches.c | s in t.Tutors
inv14 T: all c : Class, s : c.Student, t : Teaches.c | s in t.Tutors
inv14 T: all c : Class, s : c.Student, t : Teaches.c | s in t.Tutors
inv14 T: all c : Class, s : Student, t : Teaches.c | some g : Group | 	  		c->s->g in Groups & s in t.Tutors

---
inv10 T: all s: Student | s one->Groups
inv10 T: all s: Student | s one->Group
inv10 S: all s: Student,c:Class | s.c -> one Group
inv10 S: all s: Student,c:Class | c.s -> one Group
inv10 T: one Group.Student
inv10 T: all c:Class| one c.Group.Student

---
inv10 S: all c : Class | Students in c.Groups
inv10 T: all c : Class | Student in c.Groups
inv10 S: all c : Class, student | some s.(c.Groups)
inv10 S: all c : Class, student | some s.(c.Groups)
inv10 S: all c : Class, Student | some s.(c.Groups)

---
inv5 T: Teacher.Class
inv5 T: Teacher & Class
inv5 T: Teacher.Teaches
inv5 T: Person.Teaches
inv5 T: some p:Person | p.Teaches

---
inv5 T: all t : Teacher | (some c : Class| (c -> t))
inv5 S: all t : Teacher | (some c : Class| (c -> t) not none)
inv5 S: all t : Teacher | (some c : Class | (c -> t) not none)
inv5 T: all t : Teacher | some c : Class | (c -> t) not none
inv5 S: all t : Teacher | some c->t

---
inv12 T: some Group.Class & Class.Teaches.Teacher
inv12 T: some Group.Class & Class.Teaches
inv12 T: some Group.Class & Class.Teaches
inv12 T: some Class.Groups & Teaches.Class
inv12 T: some Class.Group & Teaches.Class
inv12 S: some ~Teaches&Teacher.Groups & some Group in Class

---
inv5 T: Teacher.Class
inv5 T: Teacher & Class
inv5 T: Teacher.Teaches
inv5 T: Person.Teaches
inv5 T: some p:Person | p.Teaches

---
inv8 S: one Person.teacher Teacher.Teaches
inv8 T: one Person.Teacher Teacher.Teaches
inv8 T: one Person.Teacher + Teacher.Teaches
inv8 T: one Person.Teacher & Teacher.Teaches
inv8 T: one Teacher in Teacher.Teaches
inv8 T: one Person.Teacher in Teacher.Teaches
inv8 T: one (Teacher.Teaches).Teacher
inv8 T: one Teacher in (Teacher.Teaches)
inv8 T: one Teacher in Teaches.Class

---
inv5 S: Class->Teacher->Group in Groups	}		run test { inv5 and noy inv5o}		pred inv5{		Class->Teacher->Group in Groups	}		run test { inv5 and noy inv5o
inv5 S: Class->Teacher->Group in Groups	}		run test { inv5 and not inv5OK}		pred inv5{		Class->Teacher->Group in Groups	}		run test { inv5 and not inv5OK
inv5 S: Class->Teacher->Group in Groups	}		run test { inv5 and not inv5ok}		pred inv5{		Class->Teacher->Group in Groups	}		run test { inv5 and not inv5ok
inv5 S: Class->Teacher->Group in Groups	}		run test { inv5 and not inv50K}		pred inv5{		Class->Teacher->Group in Groups	}		run test { inv5 and not inv50K
inv5 S: Class->Teacher->Group in Groups	}		run test { inv5 and not inv5O}		pred inv5{		Class->Teacher->Group in Groups	}		run test { inv5 and not inv5O
inv5 S: Class->Teacher->Group in Groups	}		run test { inv5 and not inv5o	}		pred inv5{		Class->Teacher->Group in Groups	}		run test { inv5 and not inv5o
inv5 S: Class->Teacher->Group in Groups	}		run test{ inv5 and not inv5o	}		pred inv5{		Class->Teacher->Group in Groups	}		run test{ inv5 and not inv5o

---
inv10 S: all s : Student,c : class | some c->
inv10 S: all s : Student,c : class | some c->
inv10 S: all s : Student,c : class | some c->
inv10 S: all s : Student,c : class | some c->
inv10 S: all s : Student,c : class | some c->
inv10 S: all s : Student,c : class | some c->s . Groups

---
inv4 T: Student or Teacher
inv4 T: no ( (not Student) & (not Teacher) )
inv4 S: no ( not Student & not Teacher )
inv4 T: Person in Teacher or Student
inv4 T: Person in (Teacher or Student)

---
inv10 S: all c: Class | all s: Student | s in c.groups
inv10 T: all c: Class | all s: Student | s in c.Groups
inv10 T: all c: Class | all s: Student | s in Groups.c
inv10 T: all c: Class | all s: Student | s in c.Groups
inv10 S: all c: Class | all s: Student | s in
inv10 S: all c: Class | all s: Student | s in
inv10 S: all c: Class | all s: Student | s in
inv10 S: all c: Class | all s: Student | s in
inv10 S: all c: Class | all s: Student | s in
inv10 S: all c: Class | all s: Student | s in
inv10 S: all c: Class | all s: Student

---
inv10 S: all c : Class | Students in c.Groups
inv10 T: all c : Class | Student in c.Groups
inv10 S: all c : Class, student | some s.(c.Groups)
inv10 S: all c : Class, student | some s.(c.Groups)
inv10 S: all c : Class, Student | some s.(c.Groups)

---
inv5 S: Class->Teacher->Group in Groups	}		run test { inv5 and noy inv5o}		pred inv5{		Class->Teacher->Group in Groups	}		run test { inv5 and noy inv5o
inv5 S: Class->Teacher->Group in Groups	}		run test { inv5 and not inv5OK}		pred inv5{		Class->Teacher->Group in Groups	}		run test { inv5 and not inv5OK
inv5 S: Class->Teacher->Group in Groups	}		run test { inv5 and not inv5ok}		pred inv5{		Class->Teacher->Group in Groups	}		run test { inv5 and not inv5ok
inv5 S: Class->Teacher->Group in Groups	}		run test { inv5 and not inv50K}		pred inv5{		Class->Teacher->Group in Groups	}		run test { inv5 and not inv50K
inv5 S: Class->Teacher->Group in Groups	}		run test { inv5 and not inv5O}		pred inv5{		Class->Teacher->Group in Groups	}		run test { inv5 and not inv5O
inv5 S: Class->Teacher->Group in Groups	}		run test { inv5 and not inv5o	}		pred inv5{		Class->Teacher->Group in Groups	}		run test { inv5 and not inv5o
inv5 S: Class->Teacher->Group in Groups	}		run test{ inv5 and not inv5o	}		pred inv5{		Class->Teacher->Group in Groups	}		run test{ inv5 and not inv5o

---
inv3 S: (Person in Student and Person not in Teacher) or (Person not in Student and Person in Teacher) or (Person not in Student and Person not in Teacher)	}
inv3 S: no Person in Student in Teacher	}
inv3 S: Person in Student in Teacher	}
inv3 S: Person not in Student & Teacher	}
inv3 S: Person not in (Student & Teacher)	}
inv3 S: no Person not (Student & Teacher)	}
inv3 S: }
inv3 S: }
inv3 S: no Student & Teacher	}
inv3 S: no Student & Teacher 	}

---
inv4 S: no (no Student & no Teacher)
inv4 T: no (~Student & ~Teacher)
inv4 T: no ~Student & ~Teacher
inv4 T: Student or Teacher
inv4 T: Student + Teacher

---
inv8 S: one Person.teacher Teacher.Teaches
inv8 T: one Person.Teacher Teacher.Teaches
inv8 T: one Person.Teacher + Teacher.Teaches
inv8 T: one Person.Teacher & Teacher.Teaches
inv8 T: one Teacher in Teacher.Teaches
inv8 T: one Person.Teacher in Teacher.Teaches
inv8 T: one (Teacher.Teaches).Teacher
inv8 T: one Teacher in (Teacher.Teaches)
inv8 T: one Teacher in Teaches.Class

---
inv11 S: all c : Class in Teacher.Teaches
inv11 T: all c : Class | Teacher.Teaches
inv11 S: all c : Class | c.Grouops in Teacher.Teaches
inv11 T: all c : Class | c.Groups in Teacher.Teaches
inv11 T: all c : Class | Teacher.Teaches.(c.Groups)
inv11 T: all c : Class | (Teacher.Teaches).(c.Groups)

---
inv10 T: Student.Groups in Student
inv10 T: Student.Groups in Student
inv10 T: Class.Groups.Student
inv10 T: Class.Groups.Student in iden
inv10 T: Class.Groups
inv10 T: Student.Class.Groups
inv10 T: Student.(Class.Groups)
inv10 T: Student.(Class.~Groups)
inv10 T: ~Groups
inv10 T: ~Groups.Class

---
inv5 T: Teacher.Class
inv5 T: Teacher & Class
inv5 T: Teacher.Teaches
inv5 T: Person.Teaches
inv5 T: some p:Person | p.Teaches

---
inv10 T: all c:Class | all s:Student | some g:Group | some c->s->g in Groups
inv10 T: all c:Class | all s:Student | some g:Group | some (c->s->g in Groups)
inv10 T: all c:Class | all s:Student | s in c.Group
inv10 T: all c:Class | all s:Student | some c->s->Group in Groups
inv10 T: all c:Class | all s:Student | some (c->s->Group in Groups)
inv10 T: all c:Class | all s:Student | some (c->s->Group in Groups)
inv10 T: all c:Class | all s:Student | some (c->s->Group in Groups)

---
inv14 S: all s:Student | all t:Teacher.(<:s.Group) in Teaches implies t->s in Tutors
inv14 S: all s:Student | all t:Teacher.(<:s.Group) in Teaches implies t->s in Tutors
inv14 S: all s:Student | all t:Teacher->(<:s.Group) in Teaches implies t->s in Tutors
inv14 S: all s:Student | all t:Teacher->(<:s.Group) in Teaches implies t->s in Tutors
inv14 S: all s:Student | (all t:Teacher)->(<:s.Group) in Teaches implies t->s in Tutors
inv14 S: all s:Student | ((all t:Teacher)->(<:s.Group) in Teaches) implies t->s in Tutors

---
inv15 T: all p:Person | some (Teacher in p.^Tutors)
inv15 S: all p:Person | (some Teacher) in p.^Tutors)
inv15 T: all p:Person | (some Teacher) in p.^Tutors
inv15 S: all p:Person | (some Teacher in (p.^Tutors)
inv15 T: all p:Person | some Teacher in (p.^Tutors)

---
inv3 S: (Person in Student and Person not in Teacher) or (Person not in Student and Person in Teacher) or (Person not in Student and Person not in Teacher)	}
inv3 S: no Person in Student in Teacher	}
inv3 S: Person in Student in Teacher	}
inv3 S: Person not in Student & Teacher	}
inv3 S: Person not in (Student & Teacher)	}
inv3 S: no Person not (Student & Teacher)	}
inv3 S: }
inv3 S: }
inv3 S: no Student & Teacher	}
inv3 S: no Student & Teacher 	}

---
inv4 S: no (no Student & no Teacher)
inv4 T: no (~Student & ~Teacher)
inv4 T: no ~Student & ~Teacher
inv4 T: Student or Teacher
inv4 T: Student + Teacher

---
inv10 T: all c:Class | all s:Student | some g:Group | some c->s->g in Groups
inv10 T: all c:Class | all s:Student | some g:Group | some (c->s->g in Groups)
inv10 T: all c:Class | all s:Student | s in c.Group
inv10 T: all c:Class | all s:Student | some c->s->Group in Groups
inv10 T: all c:Class | all s:Student | some (c->s->Group in Groups)
inv10 T: all c:Class | all s:Student | some (c->s->Group in Groups)
inv10 T: all c:Class | all s:Student | some (c->s->Group in Groups)

---
inv14 S: all s:Student | all t:Teacher.(<:s.Group) in Teaches implies t->s in Tutors
inv14 S: all s:Student | all t:Teacher.(<:s.Group) in Teaches implies t->s in Tutors
inv14 S: all s:Student | all t:Teacher->(<:s.Group) in Teaches implies t->s in Tutors
inv14 S: all s:Student | all t:Teacher->(<:s.Group) in Teaches implies t->s in Tutors
inv14 S: all s:Student | (all t:Teacher)->(<:s.Group) in Teaches implies t->s in Tutors
inv14 S: all s:Student | ((all t:Teacher)->(<:s.Group) in Teaches) implies t->s in Tutors

---
inv15 T: all p:Person | some (Teacher in p.^Tutors)
inv15 S: all p:Person | (some Teacher) in p.^Tutors)
inv15 T: all p:Person | (some Teacher) in p.^Tutors
inv15 S: all p:Person | (some Teacher in (p.^Tutors)
inv15 T: all p:Person | some Teacher in (p.^Tutors)

---
inv3 S: Person = no (Student + Teacher)
inv3 S: Person = no Student + Teacher	  Person = Student & Teacher
inv3 S: Person = no Student + Teacher,	  Person = Student & Teacher
inv3 S: Person = no Student + Teacher,	  Student & Teacher
inv3 S: Person = Student + Teacher,	  no Student & Teacher

---
inv12 T: all c: Class.Groups, t: Teacher | some g: Group | t->g in c
inv12 T: all t: Class.Teacher | some g: Group | t->g in Groups
inv12 T: all t: Teacher | some g: Group | t->g in Groups
inv12 T: all t: Teacher | some g: Group | Class.t->g in Groups
inv12 T: all t: Teacher | some g: Group | Class.t.g in Groups
inv12 T: all t: Teacher | all c: Class | some g: Group | t->c in Teaches and t->g in Groups

---
inv10 T: Class.Student.Group
inv10 T: Group.Person
inv10 T: Group.Class
inv10 T: Group.Student
inv10 T: Groups.Student
inv10 T: Student -> Group
inv10 T: Student -> Groups
inv10 S: Groups: Student -> Group
inv10 T: Class.Person
inv10 T: some Class.Person
inv10 T: some Class.Student
inv10 T: some Class.Student.Group
inv10 T: some Class + Student.Group
inv10 T: all c: Class | some c.Student.Group
inv10 T: all c: Class | some c.Group

---
inv11 T: ~Groups.Class implies ~Class.Teacher
inv11 T: ~Group.Class implies ~Class.Teacher
inv11 T: ~Groups.Class implies ~Class.Teacher
inv11 T: Groups.Class implies ~Class.Teacher
inv11 T: Class.Group implies Person = Teacher
inv11 T: Class.Groups implies Teacher.Teaches

---
inv10 T: Class.Student.Group
inv10 T: Group.Person
inv10 T: Group.Class
inv10 T: Group.Student
inv10 T: Groups.Student
inv10 T: Student -> Group
inv10 T: Student -> Groups
inv10 S: Groups: Student -> Group
inv10 T: Class.Person
inv10 T: some Class.Person
inv10 T: some Class.Student
inv10 T: some Class.Student.Group
inv10 T: some Class + Student.Group
inv10 T: all c: Class | some c.Student.Group
inv10 T: all c: Class | some c.Group

---
inv11 T: ~Groups.Class implies ~Class.Teacher
inv11 T: ~Group.Class implies ~Class.Teacher
inv11 T: ~Groups.Class implies ~Class.Teacher
inv11 T: Groups.Class implies ~Class.Teacher
inv11 T: Class.Group implies Person = Teacher
inv11 T: Class.Groups implies Teacher.Teaches

---
inv11 T: Class.Groups implies Teacher.Teaches
inv11 T: Class.Groups implies Teacher.Teaches
inv11 T: Class.Groups implies Teacher.Teaches
inv11 T: Class.Groups implies Teacher.Teaches
inv11 T: Class.Groups implies Teacher.Teaches

---
inv6 S: all t : Teacher | t.teaches
inv6 T: all t : Teacher | t.Teaches
inv6 S: all p : Person | p in Teacher implies t.Teaches
inv6 T: all p : Person | p in Teacher implies p.Teaches
inv6 T: all p : Person | p in Teacher implies p.Teaches

---
inv9 S: all c.Class | lone c.Teaches
inv9 S: all c.Class | lone c.Teaches
inv9 S: all c.Class | lone Teaches.c
inv9 S: all c.Class | lone Teaches.c
inv9 S: all c.Class | lone c.Teaches

---
inv5 T: Teacher.Class
inv5 T: Teacher & Class
inv5 T: Teacher.Teaches
inv5 T: Person.Teaches
inv5 T: some p:Person | p.Teaches

---
inv10 T: all c : Class, s : Student | some c.Groups & s
inv10 T: all c : Class, s : Student | some c.s.Groups
inv10 T: all c : Class, s : Student | some c.s.Groups
inv10 T: all c : Class, s : Student | some c.s & s.Groups
inv10 T: all c : Class, s : Student | some c.s.Groups

---
inv10 T: all c: Class,s: Student | some s.c.Groups
inv10 T: all c: Class,s: Student | some (s.c.Groups)
inv10 S: all c : Class, all s: Student | some (s.c.Groups)
inv10 T: all c : Class| all s: Student | some (s.c.Groups)
inv10 T: all c : Class | all s: Student | some (s.c.Groups)
inv10 T: all c : Class | all s: Student | some (s.c.Groups)

---
inv10 T: Class.Student.Group
inv10 T: Group.Person
inv10 T: Group.Class
inv10 T: Group.Student
inv10 T: Groups.Student
inv10 T: Student -> Group
inv10 T: Student -> Groups
inv10 S: Groups: Student -> Group
inv10 T: Class.Person
inv10 T: some Class.Person
inv10 T: some Class.Student
inv10 T: some Class.Student.Group
inv10 T: some Class + Student.Group
inv10 T: all c: Class | some c.Student.Group
inv10 T: all c: Class | some c.Group

---
inv11 T: ~Groups.Class implies ~Class.Teacher
inv11 T: ~Group.Class implies ~Class.Teacher
inv11 T: ~Groups.Class implies ~Class.Teacher
inv11 T: Groups.Class implies ~Class.Teacher
inv11 T: Class.Group implies Person = Teacher
inv11 T: Class.Groups implies Teacher.Teaches

---
inv10 S: all c : Class | Student.(c.Groups)
inv10 S: all c : Class | lone Student.(c.Groups)
inv10 S: all c : Class | lone Student.c.Groups
inv10 S: all c : Class | lone c.Groups
inv10 S: all c : Class | lone c.Group
inv10 T: all c : Class | lone Student.c.Group
inv10 T: all c : Class | lone Student.c.Group
inv10 T: all c : Class | lone Student.c.Group
inv10 T: all c : Class | lone Student.(c.Group)

---
inv10 T: all c : Class | c.Groups
inv10 T: all c : Class | (Student->Group).Groups
inv10 T: all c : Class | Groups.(Student->Group)
inv10 T: all c : Class | Groups<:(Student->Group)
inv10 T: all c : Class | Groups:>(Student->Group)
inv10 T: all c : Class | Groups.(Student->Group)
inv10 T: all c : Class | (Student->Group)
inv10 T: all c : Class | Student->Group

---
inv5 S: some c : Class, p : Teacher | p.(c.groups)
inv5 T: some c : Class, p : Teacher | p.(c.Groups)
inv5 T: some c : Class, p : Teacher | (c.Groups).p
inv5 T: some c : Class | (Person.Teaches).c in Teacher
inv5 T: some c : Class | (Person.Teaches).c in Teacher
inv5 T: some c : Class | c.(Person.Teaches) in Teacher

---
inv10 T: all c : Class | all s:Student | one g : c.Groups  |  s-> g in c.Groups
inv10 T: all c : Class | all p: Person | one g : c.Groups  | p in Student implies p-> g in c.Groups
inv10 T: Student -> one Group
inv10 T: all c : Class | all p: Person | one g : c.Groups  | p in Student implies p->g in c.Groups
inv10 T: all c : Class | all p: Person | one g : c.Groups  | p in Student implies p->g in c.Groups
inv10 T: all c : Class | all p: Person | one g : c.Groups  | p in Student implies p->g in c.Groups
inv10 T: all c : Class | all p: Person | all g : c.Groups  | p in Student implies p->g in c.Groups
inv10 T: all c : Class | all p: Person | all g : c.Groups  | p in Student implies p->g in c.Groups
inv10 T: all c : Class | all p: Person | all g : Groups  | p in Student and g in c.Groups implies p->g in c.Groups

---
inv10 T: all c : Class |  Student<:c.Groups ->  Group:>c.Groups in c.Groups
inv10 T: all c : Class |  one Student<:c.Groups -> one Group:>c.Groups in c.Groups
inv11 T: all c : Class  | c.Groups iff c in  Teacher.Teaches
inv11 T: all c : Class  | c.Groups iff c in  Teacher.Teaches
inv11 T: all c : Class  | c.Groups iff c in  Teacher.Teaches
inv11 T: all c : Class  |  c not in   Teacher.Teaches =>  none c.Groups
inv11 T: all c : Class  |  c not in  Teacher.Teaches => not  c.Groups

---
inv11 S: Class not in Teacher.Teaches => Class.Groups = empty
inv11 T: Class not in Teacher.Teaches => Class.Groups = none
inv11 S: all c : Class | c not in Teacher.Teaches => class.Groups = none
inv11 T: all c : Class | c not in Teacher.Teaches => c.Groups = none
inv11 T: Class not in Teacher.Teaches => Class.Groups = none

---
inv6 T: Teacher.Teaches
inv6 T: Teacher in Teaches.~Teaches
inv6 T: Teacher in Teaches.~Teaches
inv6 T: Teacher in ~Teaches
inv6 T: Teacher in Teaches.Teaches

---
inv8 S: (Teacher.Teaches).Teaches in ident
inv8 T: (Teacher.Teaches).Teaches in iden
inv8 T: Teaches.(Teacher.Teaches) in iden
inv8 T: (Teacher.Teaches).~(Teacher.Teaches) in iden
inv8 T: Teacher.(Teacher.Teaches) in iden
inv8 T: Teacher.(Teacher.Teaches) in iden
inv8 T: (Teacher.Teaches).Teaches in iden
inv8 T: (Teacher.Teaches).Teacher in iden
inv8 T: (Teacher.Teaches).Person in iden

---
inv11 T: all c : Class, t : Teacher | no (t.Teaches).c => no c.Groups
inv11 T: all c : Class, t : Teacher | no (t->c in Teaches) => no c.Groups
inv11 T: all c : Class, t : Teacher | no (t->c in Teacher.Teaches) => no c.Groups
inv11 T: all c : Class, t : Teacher | no (t->c in Teacher->Teaches) => no c.Groups
inv11 T: all c : Class, t : Teacher | no (t->c in Teacher.Teaches) => no c.Groups
inv11 T: all c : Class, t : Teacher | no (t->c in Teacher->Teaches) => no c.Groups
inv11 T: all c : Class, t : Teacher | no (t->c in Teaches) => no c.Groups

---
inv14 T: all c : Class, g : Group, s : c->Student->g, t : Teaches.c | s in t.Tutors
inv14 T: all c : Class, g : Group, s : c.Student, t : Teaches.c | s in t.Tutors
inv14 T: all c : Class, s : c.Student, t : Teaches.c | s in t.Tutors
inv14 T: all c : Class, s : c.Student, t : Teaches.c | s in t.Tutors
inv14 T: all c : Class, s : Student, t : Teaches.c | some g : Group | 	  		c->s->g in Groups & s in t.Tutors

---
inv3 S: (Person in Student and Person not in Teacher) or (Person not in Student and Person in Teacher) or (Person not in Student and Person not in Teacher)	}
inv3 S: no Person in Student in Teacher	}
inv3 S: Person in Student in Teacher	}
inv3 S: Person not in Student & Teacher	}
inv3 S: Person not in (Student & Teacher)	}
inv3 S: no Person not (Student & Teacher)	}
inv3 S: }
inv3 S: }
inv3 S: no Student & Teacher	}
inv3 S: no Student & Teacher 	}

---
inv4 S: no (no Student & no Teacher)
inv4 T: no (~Student & ~Teacher)
inv4 T: no ~Student & ~Teacher
inv4 T: Student or Teacher
inv4 T: Student + Teacher

---
inv14 T: all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some t.(Teaches.c)
inv14 S: all s : Student, t : Teacher, c : Class | some s.(c.Groups) & some t.(Teaches.c)
inv14 T: all s : Student, t : Teacher, c : Class | some s.(c.Groups) & t.(Teaches.c)
inv14 T: all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some t.(Teaches.c) implies s.(t.Tutors)
inv14 T: all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some (t.Teaches).c implies s.(t.Tutors)
inv14 T: all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some c.(t.Teaches) implies s.(t.Tutors)
inv14 T: all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some t.(Teaches.c) implies s.(t.Tutors)
inv14 T: all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some t.(Teaches) implies s.(t.Tutors)
inv14 T: all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some t.(Teaches) implies s.(t<:Tutors)
inv14 T: all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some t.(Teaches) implies s.(t:>Tutors)

---
inv14 S: Student in (c.Groups) and some (t<:Teaches).c implies some (t<:Tutors).s
inv14 S: Student in (c.Groups) and Class in (t<:Teaches) implies Student in (t<:Tutors)
inv14 T: Student in (Class.Groups) and Class in (Teacher<:Teaches) implies Student in (Teacher<:Tutors)
inv14 T: Student in (Class.Groups) and Class in (Teacher.Teaches) implies Student in (Teacher.Tutors)
inv14 T: Student in (Class<:Groups) and Class in (Teacher.Teaches) implies Student in (Teacher.Tutors)
inv14 T: Student in (Class<:Groups) and Class in (Teacher<:Teaches) implies Student in (Teacher.Tutors)
inv14 T: Student in (Class<:Groups) and Class in (Teacher<:Teaches) implies Student in (Teacher<:Tutors)
inv14 T: Student in (Class<:Groups) and Class in (Teacher<:Teaches) implies Student in (Teacher:>Tutors)
inv14 T: Student in (Class:>Groups) and Class in (Teacher<:Teaches) implies Student in (Teacher:>Tutors)
inv14 T: Student in Student.(Class:>Groups) and Class in (Teacher<:Teaches) implies Student in (Teacher:>Tutors)
inv14 T: Student in Student.(Class.Groups) and Class in (Teacher<:Teaches) implies Student in (Teacher:>Tutors)
inv14 T: Student in Student.(Class.Groups) and Class in (Teacher.Teaches).Class implies Student in (Teacher:>Tutors)
inv14 T: Student in Student.(Class.Groups) and Class in (Teacher.Teaches).Class implies Student in (Teacher.Tutors).Student

---
inv14 T: Student in Student.(Class.Groups) and Class in (Teacher<:Teaches).Class implies Student in (Teacher:>Tutors).Student
inv14 T: Student in Student.(Class.Groups) and Class in (Teacher<:Teaches).Class implies Student in Student.(Teacher:>Tutors)
inv14 T: Student in Student.(Class.Groups) and Class in (Teacher<:Teaches).Class implies some Student.(Teacher:>Tutors)
inv14 T: Student in Student.(Class.Groups) and Class in (Teacher<:Teaches).Class implies some (Teacher:>Tutors).Student
inv14 T: Student in Student.(Class.Groups) and Class in (Teacher<:Teaches).Class implies Student in (Teacher:>Tutors).Student

---
inv10 T: Class.Student.Group
inv10 T: Group.Person
inv10 T: Group.Class
inv10 T: Group.Student
inv10 T: Groups.Student
inv10 T: Student -> Group
inv10 T: Student -> Groups
inv10 S: Groups: Student -> Group
inv10 T: Class.Person
inv10 T: some Class.Person
inv10 T: some Class.Student
inv10 T: some Class.Student.Group
inv10 T: some Class + Student.Group
inv10 T: all c: Class | some c.Student.Group
inv10 T: all c: Class | some c.Group

---
inv11 T: ~Groups.Class implies ~Class.Teacher
inv11 T: ~Group.Class implies ~Class.Teacher
inv11 T: ~Groups.Class implies ~Class.Teacher
inv11 T: Groups.Class implies ~Class.Teacher
inv11 T: Class.Group implies Person = Teacher
inv11 T: Class.Groups implies Teacher.Teaches

---
inv10 S: all s:Student | some g:Group | no  Class - Groups.(s->g) )
inv10 T: all s:Student | some g:Group | no  (Class - Groups.(s->g) )
inv10 T: all s:Student | some g:Group |  Groups.(s->g)
inv10 T: all s:Student | some g:Group |  Groups.(s->g) in Class
inv10 T: all s:Student | some g:Group |  Groups.(s->g)

---
inv10 T: all s:Student | some g:Group |  no (Class -(Groups.(s->g))   )
inv10 T: all p:Person | some g:Group |  no (Class -(Groups.(p->g))   )
inv10 S: all s:Student | some g:Group |   (Class - (Groups.(s->g))
inv10 T: all s:Student | some g:Group |   (Class - (Groups.(s->g)))
inv10 T: all s:Student | some g:Group |   no (Class - (Groups.(s->g)))
inv10 T: all s:Student | all g:Group |   no (Class - (Groups.(s->g)))
inv10 T: all s:Student | some g:Group |  no (Class - (Groups.(s->g)))
inv10 T: all s:Student | some g:Group |   (Class & (Groups.(s->g)))
inv10 T: all s:Student | some g:Group |    Groups.(s->g)  & Class

---
inv10 T: all s:Student| some g:Group | no (Groups.(s->g) - Class)
inv10 T: all s:Student| some g:Group | some (Groups.(s->g) & Class)
inv10 S: all s:Student| some g:Group |  (Groups.(s->g) in Class
inv10 T: all s:Student| some g:Group |  Groups.(s->g) in Class
inv10 S: all c:Class,s:Student| c->s->g in Groups
inv10 S: all c:Class | (x->y):c.Groups implies x in Student
inv10 S: all c:Class | (x,y):c.Groups in c

---
inv12 T: all t:Teacher | some t.Teaches in Class  and  some  t.Teaches.Groups
inv12 T: all t:Teacher | some t.Teaches in Class  and  some  (t.Teaches).Groups
inv12 T: all t:Teacher | some t.Teaches in Class  and  some  (t.Teaches).Groups
inv12 T: all t:Teacher | some t.Teaches in Class  and  some g:Group, p:Person | t.Teaches->p->g in Groups
inv12 T: all t:Teacher | some t.Teaches in Class

---
inv12 S: some c:Class |  all a: Teaches.c and some a->s->g in Groups
inv12 S: some c:Class |  all a: Teaches.c | some a->s->g in Groups
inv12 S: some c:Class |  all t: Teaches.c | some a->t->g in Groups
inv12 S: some c:Class |  all t: Teaches.c | some c->t->g in Groups
inv12 S: some c:Class| somee (Teaches.c - Teacher) and  some g:Group, p:Person | c->p->g in Groups

---
inv14 S: all p:Person |some g:Group | all t:Teacher | t-> Groups.(p,g)  in Teaches implies t->p in Tutors
inv14 S: all p:Person |some g:Group | all t:Teacher | t-> Groups.(p,g) in Teaches
inv14 T: all p:Person |some g:Group | all t:Teacher | t->Groups.(p->g)  in Teaches implies t->p in Tutors
inv14 T: all p:Person |some g:Group | all t:Teacher | t->Groups.(p->g)  in Teaches
inv14 T: all p:Person |some g:Group | all t:Teacher | t->Groups.(p->g)

---
inv14 S: some c:Class | {(x,y)| (x,y) in c.Groups } implies no Person
inv14 S: some c:Class | {(x,y)| (x,y) in c.Groups }
inv14 S: some c:Class | {(x,y)| (x,y) : c.Groups }
inv14 S: some c:Class |all t:Teacher | t->c in. Teaches implies {(s,g): c.Groups | t->s in Tutors}
inv14 S: some c:Class |all t:Teacher | t->c in Teaches implies {(s,g): c.Groups | t->s in Tutors}
inv14 S: all c:Class |all t:Person | t->c in Teaches implies {(s,g): c.Groups | t->s in Tutors}
inv14 S: all c:Class, t:Person | t->c in Teaches implies {(s->g): c.Groups | t->s in Tutors}
inv14 T: all c:Class, t:Person | t->c in Teaches implies {s,g: c.Groups | t->s in Tutors}

---
inv10 S: all c : Class | Students in c.Groups
inv10 T: all c : Class | Student in c.Groups
inv10 S: all c : Class, student | some s.(c.Groups)
inv10 S: all c : Class, student | some s.(c.Groups)
inv10 S: all c : Class, Student | some s.(c.Groups)

---
inv6 S: all Teacher in Teaches
inv6 S: all Teacher in ~Teaches
inv6 S: all Teacher in Teacher.Teaches
inv6 S: all Teacher in Class.~Teaches
inv6 S: (all t:Teacher ) some t.Teaches
inv6 S: (all t:Teacher ) some t.Teaches
inv6 S: (all t:Teacher ){ some t.Teaches }

---
inv8 T: Teacher -> lone Class
inv8 T: Person -> lone Class
inv8 T: Person -> lone Class
inv8 T: Teaches -> lone Class
inv8 T: Person -> lone Teaches
inv8 T: Person -> lone Teaches
inv8 T: Person -> lone Teaches
inv8 T: Person -> lone Teaches

---
inv5 T: Teacher.Class
inv5 T: Teacher & Class
inv5 T: Teacher.Teaches
inv5 T: Person.Teaches
inv5 T: some p:Person | p.Teaches

---
inv11 T: Class.Groups implies Teacher.Teaches
inv11 T: all c:Class,t:Teacher|c.Groups implies t.Teaches
inv11 T: all c:Class,t:Teacher | c.Groups and t.Teaches
inv11 T: all c:Class,t:Teacher | c.Groups.Group implies t.Teaches
inv11 T: all c:Class,t:Teacher | c.Groups implies t.Teaches in Class
inv11 T: all c:Class,t:Teacher | c.Groups  implies t.Teaches in c
inv11 T: all c:Class,t:Teacher | c.Groups  implies t.Teaches = c
inv11 T: all c:Class,t:Teacher | c.Groups.Group  implies t.Teaches = c

---
inv6 S: all t : Teacher | t.teaches
inv6 T: all t : Teacher | t.Teaches
inv6 S: all p : Person | p in Teacher implies t.Teaches
inv6 T: all p : Person | p in Teacher implies p.Teaches
inv6 T: all p : Person | p in Teacher implies p.Teaches

---
inv14 S: all c : Class, s : c.Groups.Group | (all t : (Teacher <: Teaches.c) | t->s Tutors)
inv14 S: all c : Class, s : c.Groups.Group | (all t : (Teacher <: Teaches).c | t->s Tutors)
inv14 T: all c : Class, s : c.Groups.Group | all t : (Teacher <: Teaches).c | t->s Tutors
inv14 T: all c : Class, s : c.Groups.Group | all t : (Teaches).c | t->s Tutors
inv14 T: all c : Class, s : c.Groups.Group | all t : (Teacher :> Teaches).c | t->s in Tutors

---
inv11 S: all c:Class | some p:Person | some g:Group c->p->g in Groups implies some t:Teacher | t->c in
inv11 S: all c:Class | some p:Person | some g:Group c->p->g in Groups implies some t:Teacher | t->c in Teaches
inv11 S: all c:Class | some p:Person | some g:Group c->p->g in Groups implies some t:Teacher | t->c in Teaches
inv11 S: all c:Class | some p:Person | some g:Group | some t:Teacher c->p->g in Groups implies t->c in Teaches
inv11 S: all c:Class | some p:Person | some g:Group | some t:Teacher c->p->g in Groups implies t->c in Teaches

---
inv10 T: all c: Class,s: Student | some s.c.Groups
inv10 T: all c: Class,s: Student | some (s.c.Groups)
inv10 S: all c : Class, all s: Student | some (s.c.Groups)
inv10 T: all c : Class| all s: Student | some (s.c.Groups)
inv10 T: all c : Class | all s: Student | some (s.c.Groups)
inv10 T: all c : Class | all s: Student | some (s.c.Groups)

---
inv3 T: ~((Student and Teacher) in Person)
inv3 T: all p:Person | ~(p in Student and p in Teacher)
inv3 T: all p:Person | ~(p in Student and p in Teacher)
inv3 T: all p:Person | ~(p in Student and p in Teacher)
inv3 S: p in Person implies (p in Student or p in Teacher)

---
inv11 S: all c : Class | (some c.Groups) implies Teacher.teaches
inv11 T: all c : Class | (some c.Groups) implies Teacher.Teaches
inv11 T: all c : Class | (some c.Groups) implies Teacher.Teaches.c
inv11 T: all c : Class | (some c.Groups) implies (Teacher.Teaches).c
inv11 T: all c : Class | (some c.Groups) implies Teacher & Teaches.c
inv11 T: all c : Class | (some c.Groups) implies Teacher & (Teaches.c)
inv11 T: all c : Class | (some c.Groups) implies some Teacher.(Teaches.c)

---
inv6 S: all Teacher.Teaches
inv6 T: all t:Teacher | t.Teaches
inv6 S: all t:Teacher | all t.Teaches
inv6 T: all t:Teacher | t.Teaches
inv6 T: all t:Teacher | t.Teaches

---
inv10 T: all s: Student, c: Class | one c.s.Groups
inv10 T: all s: Student, c: Class | one s.c.Groups
inv10 T: all s: Student, c: Class | one s -> one c.Group
inv10 T: all s: Student, c: Class | c & s . Groups
inv10 T: all s: Student, c: Class | c & s.Groups
inv11 T: all c : Class | (no c.Groups) + Teaches.c
inv11 T: all c : Class | (Group - Person.(c.Groups)) + Teaches.c
inv11 T: all c : Class | (Group - Student.(c.Groups)) + Teaches.c
inv11 T: all c : Class | ((Person -> Group) - (c.Groups)) + Teaches.c
inv11 T: all c : Class | ((Person -> Group) - c.Groups) + Teaches.c
inv11 T: all c : Class | (Person - c.Groups.Group) + Teaches.c
inv11 T: all c : Class | (Student - c.Groups.Group) + Teaches.c

---
inv8 S: one Person.teacher Teacher.Teaches
inv8 T: one Person.Teacher Teacher.Teaches
inv8 T: one Person.Teacher + Teacher.Teaches
inv8 T: one Person.Teacher & Teacher.Teaches
inv8 T: one Teacher in Teacher.Teaches
inv8 T: one Person.Teacher in Teacher.Teaches
inv8 T: one (Teacher.Teaches).Teacher
inv8 T: one Teacher in (Teacher.Teaches)
inv8 T: one Teacher in Teaches.Class

---
inv8 T: ~(Teacher.Teaches).(Teacher.Teaches) in iden
inv8 T: Teaches.Class in iden
inv8 T: ~(Teaches.Class).(Teaches.Class) in iden
inv8 T: ~(Teacher.Teaches).(Teacher.Teaches) in iden
inv8 T: ~(Teacher in Teaches.Class).(Teacher in Teaches.Class) in iden
inv8 T: ~(Teaches.Class).(Teaches.Class) in iden
inv8 T: Teacher.(Teaches.Class) in iden

---
inv15 T: ^Tutors
inv15 T: some Teacher in ^Tutors
inv15 T: all s : Student | s.^Tutors
inv15 S: all s : Student | some t : Teacher t.(s.^Tutors)
inv15 T: all s : Student | some t : Teacher | t.(s.^Tutors)
inv15 T: all s : Student | some Teacher in s.^Tutors

---
inv8 S: one Person.teacher Teacher.Teaches
inv8 T: one Person.Teacher Teacher.Teaches
inv8 T: one Person.Teacher + Teacher.Teaches
inv8 T: one Person.Teacher & Teacher.Teaches
inv8 T: one Teacher in Teacher.Teaches
inv8 T: one Person.Teacher in Teacher.Teaches
inv8 T: one (Teacher.Teaches).Teacher
inv8 T: one Teacher in (Teacher.Teaches)
inv8 T: one Teacher in Teaches.Class

---
inv11 S: all c:Class | some p:Person | some g:Group c->p->g in Groups implies some t:Teacher | t->c in
inv11 S: all c:Class | some p:Person | some g:Group c->p->g in Groups implies some t:Teacher | t->c in Teaches
inv11 S: all c:Class | some p:Person | some g:Group c->p->g in Groups implies some t:Teacher | t->c in Teaches
inv11 S: all c:Class | some p:Person | some g:Group | some t:Teacher c->p->g in Groups implies t->c in Teaches
inv11 S: all c:Class | some p:Person | some g:Group | some t:Teacher c->p->g in Groups implies t->c in Teaches

---
inv7 T: all s : Student, enrC : s.enrolled | lone enrC.projects in s.projects
inv7 S: all s : Studen, enroll : s.enrolled | lone enroll in s.projects
inv7 T: all s : Student, enroll : s.enrolled | lone enroll in s.projects
inv7 S: all s : Student, enroll : s.enrolled | lone enroll : s.projects
inv7 S: all s : Student, enroll : s.enrolled | lone proj : s.projects | proj in enroll.projectgs

---
inv5 S: all p : Project | some p : Person <: projects.p and Person <: projects.p in Student
inv5 S: all p : Project | some p : Person <: projects.p and Person <: projects.p in Student
inv5 S: all p : Project | some p : Person <: projects.p and Person <: projects.p in Student
inv5 S: all p : Project | some p : Person <: projects.p and Person <: projects.p in Student
inv5 S: all p : Project | p : Person <: projects.p and Person <: projects.p in Student

---
inv3 S: all c : Course| implies (all p : Professor | some p.teaches.c)
inv3 S: all c : Course| implies (some p : Professor | p.teaches.c)
inv3 S: all c : Course implies (some p : Professor | p.teaches.c)
inv3 S: all c : Course | implies (some p : Professor | p.teaches.c)
inv3 T: all c : Course | some p : Professor | p.teaches.c
inv3 T: all c : Course | all p : Professor | some p.teaches.c
inv3 T: all c : Course | all p : Professor | some c in p.teaches
inv3 T: all c : Course | all p : Professor | some c in p.teaches

---
inv3 T: all x:Course, y:Person| teaches.x implies y in Professor
inv3 T: all x:Course, y:Person| y.teaches implies y->x in teaches
inv3 T: all x:Course, y:Person| x.teaches implies y->x in teaches
inv3 S: all x:Course, y:Person|
inv3 S: all x:Course| one y, z:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
inv3 S: all x:Course, one y, z:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
inv3 S: all x:Course| one y, z:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
inv3 S: all x:Course| one  z, y:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
inv3 S: all x:Course| one  z, k:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
inv3 S: all x:Course| one  z, k:Person | z->x in enrolled and z in Student implies k->x in teaches y in Professor
inv3 S: all x:Course| one  z, k:Person | z->x in enrolled and z in Student implies k->x in teaches k in Professor

---
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and enrolled.y and one project.z
inv7 S: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects  and one project.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects  and one projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and enrolled.y and one projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and one enrolled.y and one projects.z

---
inv7 S: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and all enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z

---
inv5 S: all p : Person | (p in Student => (p.projects = p.projects) and (p in Professor => (p.projects = none))), all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects) and (p in Professor => (p.projects = none))), all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects)) and (p in Professor => (p.projects = none)),	    all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects)) & (p in Professor => (p.projects = none)),	    all p : Project | (some s : Student | p in s.projects)
inv5 T: all p : Project | (some s : Student | p in s.projects) 	    all p : Person | (p in Student => (p.projects = p.projects)) & (p in Professor => (p.projects = none))

---
inv13 S: all c : Course | (sone s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max (c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)

---
inv5 S: all p : Person | (p in Student => (p.projects = p.projects) and (p in Professor => (p.projects = none))), all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects) and (p in Professor => (p.projects = none))), all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects)) and (p in Professor => (p.projects = none)),	    all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects)) & (p in Professor => (p.projects = none)),	    all p : Project | (some s : Student | p in s.projects)
inv5 T: all p : Project | (some s : Student | p in s.projects) 	    all p : Person | (p in Student => (p.projects = p.projects)) & (p in Professor => (p.projects = none))

---
inv13 S: all c : Course | (sone s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max (c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)

---
inv5 S: all p : Person | (p in Student => (p.projects = p.projects) and (p in Professor => (p.projects = none))), all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects) and (p in Professor => (p.projects = none))), all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects)) and (p in Professor => (p.projects = none)),	    all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects)) & (p in Professor => (p.projects = none)),	    all p : Project | (some s : Student | p in s.projects)
inv5 T: all p : Project | (some s : Student | p in s.projects) 	    all p : Person | (p in Student => (p.projects = p.projects)) & (p in Professor => (p.projects = none))

---
inv13 S: all c : Course | (sone s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max (c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)

---
inv5 T: all c: Course | all p: Professor | no p in c.projects
inv5 T: all c: Course | all p: Professor | no p in c.projects
inv5 T: all c: Course | all p: Professor | no p in c.projects
inv5 T: all c: Course | all p: Professor | no p in c.projects
inv5 T: all c: Course | all p: Professor | no p in c.projects
inv5 T: all c: Course | all p: Professor | no p in c.projects
inv5 T: all c: Course | all p: Professor | no p in c.projects
inv5 T: all c: Course | all p: Professor | no p in c.projects
inv5 T: all c: Course | all p: Professor | no p in c.projects
inv5 T: all c: Course | all p: Professor | no p in c.projects
inv5 T: all c: Course | all p: Professor | no p in c.projects
inv5 T: all c: Course | all p: Professor | no p in c.projects
inv5 T: all c: Course | all p: Professor | no p in c.projects

---
inv3 S: some p : Professor | p in teaches.c
inv3 S: all c : Courses, some p : Professor | p in teaches.c
inv3 S: all c : Courses, some p : Professor | p->c in teaches
inv3 S: all c : Course, some p : Professor | p->c in teaches
inv3 S: all c : Course, some p : Professor
inv3 S: all c : Course, some p : Professor | c in Course

---
inv4 S: all p : Project | one proposes.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 S: all p : Project, c : Courses | one c in projects.p
inv4 T: all p : Project, c : Course | one c in projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one Course in projects.p
inv4 T: all p : Project, c : Course | one c in projects.p

---
inv5 T: all s : Person, p : Project | p in s.projects implies s in Student		all p : Project, s : Person | some s in projects.p
inv5 T: all s : Person, p : Project | p in s.projects implies s in Student		all p : Project, s : Person | some s in projects.p
inv5 T: all s : Person, p : Project | p in s.projects implies s in Student and some s in projects.p
inv5 T: all s : Person, p : Project | (p in s.projects implies s in Student) and (some s in projects.p)
inv5 T: all s : Person, p : Project | (p in s.projects implies s in Student) and (some s in projects.p)

---
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and enrolled.y and one project.z
inv7 S: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects  and one project.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects  and one projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and enrolled.y and one projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and one enrolled.y and one projects.z

---
inv7 S: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and all enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z

---
inv5 S: all p : Person | (p in Student => (p.projects = p.projects) and (p in Professor => (p.projects = none))), all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects) and (p in Professor => (p.projects = none))), all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects)) and (p in Professor => (p.projects = none)),	    all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects)) & (p in Professor => (p.projects = none)),	    all p : Project | (some s : Student | p in s.projects)
inv5 T: all p : Project | (some s : Student | p in s.projects) 	    all p : Person | (p in Student => (p.projects = p.projects)) & (p in Professor => (p.projects = none))

---
inv13 S: all c : Course | (sone s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max (c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)

---
inv3 T: all x:Course, y:Person| teaches.x implies y in Professor
inv3 T: all x:Course, y:Person| y.teaches implies y->x in teaches
inv3 T: all x:Course, y:Person| x.teaches implies y->x in teaches
inv3 S: all x:Course, y:Person|
inv3 S: all x:Course| one y, z:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
inv3 S: all x:Course, one y, z:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
inv3 S: all x:Course| one y, z:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
inv3 S: all x:Course| one  z, y:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
inv3 S: all x:Course| one  z, k:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
inv3 S: all x:Course| one  z, k:Person | z->x in enrolled and z in Student implies k->x in teaches y in Professor
inv3 S: all x:Course| one  z, k:Person | z->x in enrolled and z in Student implies k->x in teaches k in Professor

---
inv7 T: all s:Student | all pr:Project | lone (s.enrolled.projects in pr)
inv7 T: all s:Student | all pr:Project | lone (s.enrolled.projects in pr)
inv7 S: all s:Student | all pr:Project | lone (s.enrolled.projects
inv7 S: all s:Student | all pr:Project | lone (pr s.enrolled.projects)
inv7 T: all s:Student | all pr:Project | pr in s.projects implies lone( pr in s.enrolled.projects )
inv7 S: all s:Student | all pr:Project | pr in s.projects implies pr in lone(s.enrolled.projects )

---
inv6 S: all pe:Student | all c:Courses |some(p.projects=c.projects)  implies c in p.enrolled
inv6 S: all pe:Student | all c:Course |some(p.projects=c.projects)  implies c in p.enrolled
inv6 T: all pe:Student | all c:Course |some(pe.projects=c.projects)  implies c in p.enrolled
inv6 T: all pe:Student | all c:Course |some (pe.projects=c.projects)  implies c in p.enrolled
inv6 S: all pe:Student | all c:Course | (pe.projects=c.projects)  implies c in p.enrolled

---
inv4 T: all p: Project | p in Course.projects and one projects.p
inv4 S: all p: Project | p in Course.projects and one p.Courses
inv4 T: all p: Project | p in Course.projects and one p.Course
inv4 T: all p: Project | all c: Course | p in Course.projects and one c.p
inv4 T: all p: Project | all c: Course | p in c.projects and one c.p

---
inv8 S: all c: Course, p: Professor | c in p.teaches => p not in c.teachers
inv8 T: all c: Course, p: Professor | c in p.teaches => p not in c.grades
inv8 T: all c: Course, p: Professor | c in p.teaches => p not in c.grades
inv8 S: all c: Course, p: Professor | c in p.teaches => p != c.grades.getKey(p.grades)
inv8 S: all c: Course, p: Professor | c in p.teaches => p != c.grades.getKey(p.grades)

---
inv8 T: all c: Course, p: Professor | c in p.teaches => no p.grades[p] in c.grades
inv8 T: all c: Course, p: Professor | c in p.teaches => no p in c.grades
inv8 T: all c: Course, p: Professor | c in p.teaches => no c.grades[p] in c.grades
inv8 T: all c: Course, p: Professor | c in p.teaches => not (p.grades[p] in c.grades)
inv8 S: all c: Course, p: Professor | c in p.teaches => p.grades[p] not in c.grades.ran	}
inv8 S: all c: Course, p: Professor | c in p.teaches => p.grades[p] not in c.grades.ran
inv8 T: all c: Course, p: Professor | c in p.teaches => p.grades[p] not in c.grades
inv8 T: all c: Course, p: Professor | c in p.teaches => p not in c.grades

---
inv9 T: all p : Professor | all c : Course | c in p.teaches => no (p.teaches & p.enrolled) in c
inv9 T: all p : Professor | all c : Course | c in p.teaches => no (p.teaches & p.enrolled) in c
inv9 T: all p : Professor | all c : Course | c in p.teaches => no (p.teaches & p.enrolled) in c
inv9 T: all p : Professor | all c : Course | (c in p.teaches => no (p.teaches & p.enrolled) in c)
inv9 S: all p : Professor |	all c1, c2 : Course |	c1 in p.teaches and c2 in p.enrolled and c1 = c2 => false

---
inv10 S: all p : Person - Student | no c : Courses | p in c.grades
inv10 T: all p : Person - Student | no c : Course | p in c.grades
inv10 T: all p : Person - Student | no c : Course | p.grades & c.grades != none
inv10 T: all p : Person - Student | no c : Course | p->grades & c.grades != none
inv10 T: all p : Person - Student | no c : Course | p.grades != none
inv10 T: all p : Person - Student | no c : Course | c.grades != none
inv10 T: all p : Person - Student | all c : Course | p->Grade & c.grades = none
inv10 T: all p : Person - Student | all c : Course | p->Grade & c.grades = none
inv10 T: all p : Person - Student | all c : Course | all g : c.grades | g not in p->Grade
inv10 T: all p : Person - Student | all c : Course | all g1 : c.grades | all g2 : p->Grade | g1 != g2

---
inv13 S: all s : Students | all c in s.enrolled | no p : c.projects implies some sm : Student | c in sm.enrolled and c.s->Grade < c.sm->Grade
inv13 S: all s : Students | all c in s.enrolled | no p : c.projects implies some sm : Student | c in sm.enrolled and s->c.grade < sm->c.grade
inv13 S: all s : Students | all c in s.enrolled | no p : c.projects implies some sm : Student | c in sm.enrolled and s->c.grade < sm->c.grade
inv13 S: all s : Students | all c : s.enrolled | no p in c.projects implies some sm : Student | c in sm.enrolled and s->c.grade < sm->c.grade
inv13 S: all s : Student | all c : s.enrolled | no p in c.projects implies some sm : Student | c in sm.enrolled and s->c.grade < sm->c.grade
inv13 S: all s : Student | all c : s.enrolled | p not in c.projects implies some sm : Student | c in sm.enrolled and s->c.grade < sm->c.grade
inv13 S: all s : Student | all c : s.enrolled | s.projects & c.projects = none implies some sm : Student | c in sm.enrolled and s->c.grade < sm->c.grade
inv13 T: all s : Student | all c : s.enrolled | s.projects & c.projects = none implies some sm : Student | c in sm.enrolled and s->c.grades < sm->c.grades

---
inv13 S: all s : Student | all g : Grades | all c : s.enrolled | s.projects & c.projects = none implies s->g in c.grades and not first[g]
inv13 T: all s : Student | all g : Grade | all c : s.enrolled | s.projects & c.projects = none implies s->g in c.grades and not first[g]
inv13 T: all s : Student | all g : Grade | all c : s.enrolled | s.projects & c.projects = none implies s->g in c.grades and first[g]
inv13 T: all s : Student | all g : Grade | all c : s.enrolled | s.projects & c.projects = none implies s->g in c.grades and not first[g]
inv13 T: all s : Student | all g : Grade | all c : s.enrolled | s.projects & c.projects = none implies s->g in c.grades and not first[g]

---
inv4 T: all p : Project | one (p.(~projects))
inv4 T: all p : Project | one (p.(~projects))
inv4 T: all p : Project | one (p.(~projects <: Course))
inv4 T: all p : Project | one (p.(~(projects <: Course)))
inv4 T: all p : Project | one (p.(~projects))

---
inv7 S: all s : Student | all p1, p2 : Project | ((p1 in s.projects) and (p2 in s.projects) and (p1~(Course <: projects))=(p2.~(Course <: projects))) implies (p1=p2)
inv7 S: all s : Student | all p1, p2 : Project | ((p1 in s.projects) and (p2 in s.projects) and (p1~(Course <: projects))=(p2.~(Course <: projects)))) implies (p1=p2)
inv7 S: all s : Student | all p1, p2 : Project | ((p1 in s.projects) and (p2 in s.projects) and (p1~(Course <: projects))=(p2.~(Course <: projects)) implies (p1=p2)
inv7 S: all s : Student | all p1, p2 : Project | ((p1 in s.projects) and (p2 in s.projects) and (p1~(Course <: projects))=(p2.~(Course <: projects))) implies (p1=p2)
inv7 S: all s : Student | all p1, p2 : Project | ((p1 in s.projects) and (p2 in s.projects) and (p1~(Course <: projects))=(p2.~(Course <: projects))))) implies (p1=p2)
inv7 S: all s : Student | all p1, p2 : Project | ((p1 in s.projects) and (p2 in s.projects) and (p1~(Course <: projects))=(p2.~(Course <: projects)))))) implies (p1=p2)
inv7 S: all s : Student | all p1, p2 : Project | ((p1 in s.projects) and (p2 in s.projects) and (p1~(Course <: projects))=(p2.~(Course <: projects) implies (p1=p2)
inv7 S: all s : Student | all p1, p2 : Project | ((p1 in s.projects) and (p2 in s.projects) and (p1~(Course <: projects))=(p2.~(Course <: projects)) implies (p1=p2)
inv7 S: all s : Student | all p1, p2 : Project | ((p1 in s.projects) and (p2 in s.projects) and (p1~(Course <: projects))=(p2.~(Course <: projects))) implies (p1=p2)
inv7 S: all s : Student | all p1, p2 : Project | ((p1 in s.projects) and (p2 in s.projects) and (p1~(Course <: projects))=(p2.~(Course <: projects)))) implies (p1=p2)

---
inv7 S: all s: Student | all c: s.enrolled | lone p: s.projects & projects.c
inv7 S: all s: Student | all c: s.enrolled | one p: s.projects & projects.c
inv7 T: all s: Student | all c: s.enrolled | lone s.projects & projects.c
inv7 T: all s: Student | all c: s.enrolled | lone (s.projects & projects.c)
inv7 T: all s: Student | all c: s.enrolled | lone (s.projects & getCourseProjects[c])	}		fun getCourseProjects[course: Course]: set Project {		projects.course & Project
inv7 T: all s: Student | all c: s.enrolled | lone (s.projects & c.projects)	}		fun getCourseProjects[course: Course]: set Project {		projects.course & Project

---
inv14 T: one (projects & Course)
inv14 T: one (projects & Person -> Course)
inv14 T: one (Person -> Course & projects)
inv14 S: all p: Person | getProjectStudents[project]	}		fun getProjectStudents[project : Project]: set Student {	  	(projects.project & Person)
inv14 T: all p: Person | getProjectStudents[p.projects]	}		fun getProjectStudents[project : Project]: set Student {	  	(projects.project & Person)

---
inv13 T: all s:Student, c:Course | s in c.grades.max implies s in c.projects
inv13 T: all s:Student, c:Course | s in c.grades.max implies s in c.projects
inv13 S: all s:Student, c:Course, g: Grades | s in (c.grades).g.max implies s in c.projects
inv13 T: all s:Student, c:Course, g: Grade | s in (c.grades).g.max implies s in c.projects
inv13 T: all s:Student, c:Course, g: Grade | s in ((c.grades).g).max implies s in c.projects

---
inv10 S: all p : Person | g : Grade | g in p.enrrolled.grades implies p in Student
inv10 S: all p : Person | g : Grade | g in p.enrolled.grades implies p in Student
inv10 S: all p : Person | g : Grade | g in p.enrolled.grades.person implies p in Student
inv10 T: all p : Person, g : Grade | g in p.enrolled.grades implies p in Student
inv10 T: all p : Person, c : Course, g : Grade | c in p.enrolled && g in c.grades implies p in Student
inv10 T: all p : Person, c : Course, g : Grade | some g in p.enrolled implies p in Student
inv10 T: all p : Person, c : Course, g : Grade | some g in p.enrolled.grades implies p in Student
inv10 S: all p : Person g : Grade | some g in p.enrolled.grades implies p in Student
inv10 S: all p : Person g : Grade | g in p.enrolled implies p in Student
inv10 T: all p : Person, g : Grade | g in p.enrolled.grades implies p in Student

---
inv5 S: all p : Person | (p in Student => (p.projects = p.projects) and (p in Professor => (p.projects = none))), all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects) and (p in Professor => (p.projects = none))), all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects)) and (p in Professor => (p.projects = none)),	    all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects)) & (p in Professor => (p.projects = none)),	    all p : Project | (some s : Student | p in s.projects)
inv5 T: all p : Project | (some s : Student | p in s.projects) 	    all p : Person | (p in Student => (p.projects = p.projects)) & (p in Professor => (p.projects = none))

---
inv13 S: all c : Course | (sone s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max (c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)

---
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max (c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : Student | c.grades[s] = max c.grades) => s.projects != none
inv13 S: all c : Course | (some s : Student | c.grades[s] = max c.grades) => s.projects != none
inv13 S: all c : Course | (some s : Student | c.grades[s] = max(c.grades)) => s.projects != none
inv13 S: all c : Course | (some s : Student | c.grades[s] = max c.grades) => s.projects != none
inv13 S: all c : Course | (some s : Student | c.grades[s] = max c.grades) => s.projects != none
inv13 S: all c : Course | (some s : Student | c.grades[s] = max c.grades) => (s.projects & c.projects) != none

---
inv10 S: all x: Person | all c: Course | some g: grade | g in grades(x) => x in Student
inv10 T: all x: Person | all c: Course | some g: Grade | g in grades(x) => x in Student
inv10 T: all x: Person | all c: Course | some g: Grade | g in grades.x => x in Student
inv10 T: all x: Person | all c: Course | some g: Grade | grades(x) => x in Student
inv10 T: all x: Person | all c: Course | grades(x) => x in Student
inv10 T: all x: Person | all c: Course | grades(x) => cin x.enrolled && x in Student
inv10 T: all x: Person | all c: Course | grades(x) => c in x.enrolled && x in Student
inv10 T: all x: Person | all c: Course | grades(x) => c in x.enrolled
inv10 T: all x: Person | all c: Course | x in Student && grades(x) => c in x.enrolled
inv10 T: all x: Person | all c: Course | x in Student && c.grades(x) => c in x.enrolled

---
inv5 S: all p: Project | some projects.p and projects.p in Student
inv5 S: all p: Project | some projects.p and projects.p in Student
inv5 S: all p: Project | some projects.p and projects.p in Student
inv5 T: all p: Project | some projects.p and projects.p in Student
inv5 T: all p: Project | some projects.p and projects.p in Student
inv5 T: all p: Project | some projects.p and projects.p in Student

---
inv10 S: all x: Person | all c: Course | some g: grade | g in grades(x) => x in Student
inv10 T: all x: Person | all c: Course | some g: Grade | g in grades(x) => x in Student
inv10 T: all x: Person | all c: Course | some g: Grade | g in grades.x => x in Student
inv10 T: all x: Person | all c: Course | some g: Grade | grades(x) => x in Student
inv10 T: all x: Person | all c: Course | grades(x) => x in Student
inv10 T: all x: Person | all c: Course | grades(x) => cin x.enrolled && x in Student
inv10 T: all x: Person | all c: Course | grades(x) => c in x.enrolled && x in Student
inv10 T: all x: Person | all c: Course | grades(x) => c in x.enrolled
inv10 T: all x: Person | all c: Course | x in Student && grades(x) => c in x.enrolled
inv10 T: all x: Person | all c: Course | x in Student && c.grades(x) => c in x.enrolled

---
inv5 T: all p:Person | some projects.p & Person in Student
inv5 T: all p:Person | projects.p in Student
inv5 T: all p:Person | projects.p & Person in Student
inv5 T: all p:Person | projects.p & Person in Student
inv5 T: all p:Person | (projects.p & Person) in Student
inv5 T: all p:Person | one projects.p & Person in Student
inv5 S: all p:Person | all projects.p & Person in Student
inv5 T: all p:Person | projects.p & Person in Student

---
inv3 S: all c.Curses | some t:Professor | t in c.grades
inv3 S: all c.Curses | some t:Professor | c in t.teaches
inv3 S: all c.Curses | (some t:Professor | c in t.teaches)
inv3 S: all c:Curses | some t:Professor | c in t.teaches
inv3 S: all c:Courses | some t:Professor | c in t.teaches

---
inv4 T: all p : Project | #projects.p = 1
inv4 T: all p : Project | #(projects.p) = 1
inv4 S: all p : Project | (Course <: #(projects.p) = 1)
inv4 T: all p : Project | Course <: (#(projects.p) = 1)
inv4 T: all p : Project | (Course <: (#(projects.p) = 1))
inv4 S: all p : Project | (Course <: (#(projects.p) = 1)))
inv4 S: all p : Project | (Course <: #projects).p = 1))
inv4 S: all p : Project | (Course <: #projects).p = 1)
inv4 S: all p : Project | (Course <: #projects).p = 1

---
inv10 T: all c : Course | all g : c.grades | g in Student
inv10 T: all c : Course | all g : c.grades | g in Student
inv10 S: all c : Course | all g : Grades | g.c in Student
inv10 T: all c : Course | all g : Grade | g.c in Student
inv10 T: all c : Course | all g : Grade | g.grades in Student
inv10 T: all c : Course | all g : Grade | grades.g in Student
inv10 T: all p : Person | all g : Grade | lone c : Course | g->p in c implies p in Student

---
inv13 S: all p : Student | lone pM : Student | all c : Course | all g : c.grades	  		pM->g >= p->g implies some pM.projects & c.projects
inv13 T: all p : Student | lone pM : Student | all c : Course | all g : c.grades |	  		pM->g >= p->g implies some pM.projects & c.projects
inv13 T: lone pM : Student | all p : Student - pM  | all c : Course | all g : c.grades |	  		pM->g > p->g implies some pM.projects & c.projects
inv13 S: lone pM : Student | all p : Student - pM  | all c : Course | all g : c.grades |	  		gt[pM->g, p->g] implies some pM.projects & c.projects
inv13 S: lone pM : Student | all p : Student - pM  | all c : Course | all g : c.grades |	  		gte[pM->g, p->g] implies some pM.projects & c.projects
inv13 S: lone pM : Student | all p : Student - pM  | all c : Course | all g : c.grades |	  		gte[g->pM, g->p] implies some pM.projects & c.projects
inv13 T: lone pM : Student | all p : Student - pM  | all c : Course | all g : c.grades |	  		gte[g.pM, g.p] implies some pM.projects & c.projects
inv13 T: lone pM : Student | all p : Student - pM  | all c : Course | all g : c.grades |	  		gt[g.pM, g.p] implies some pM.projects & c.projects
inv13 T: lone pM : Student | all p : Student - pM  | all c : Course | all g : c.grades |	  		gt[g.pM, g.p] implies some pM.projects & c.projects
inv13 S: lone pM : Student | all p : Student - pM  | all c : Course | all g : c.grades |	  		ordering.gt[g.pM, g.p] implies some pM.projects & c.projects
inv13 T: lone pM : Student | all p : Student - pM  | all c : Course | all g : c.grades |	  		gt[g.pM, g.p] implies some pM.projects & c.projects
inv13 T: lone pM : Student | all p : Student - pM  | all c : Course | all g : c.grades |	  		gte[g.pM, g.p] implies some pM.projects & c.projects

---
inv4 S: pojects in Course one -> set Project
inv4 T: projects in Course one -> set Project
inv4 T: projects in Course one -> set Project
inv4 T: projects in Course one -> set Project
inv4 T: Course.projects in Course one -> set Project
inv4 T: projects in Course one -> set Project

---
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and enrolled.y and one project.z
inv7 S: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects  and one project.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects  and one projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and enrolled.y and one projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and one enrolled.y and one projects.z

---
inv7 S: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and all enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z

---
inv11 S: all p: Person, c: Course | (c in p.enrolled <=> c in p.grades.dom)
inv11 S: all p: Person, c: Course |	(c in p.enrolled <=> c in (c: Course | c in p.grades))
inv11 S: all p: Person, c: Course | (c in p.enrolled <=> c in (c: Course | c in p.grades))
inv11 S: all p: Person, c: Course | (c in p.enrolled <=> c in (c: Course | c in p.grades))
inv11 T: all p: Person, c: Course | (c in p.enrolled <=> c in {c: Course | c in p.grades})

---
inv1 T: all p: Person | all c: Course | (p in Professor implies (no c in p.enrolled)) and (p in Student implies (c in p.enrolled))
inv1 S: all p: Person | all c: Course | p in Professor implies (c not in p.enrolled)	    all s: Person | s in Student implies (some c in p.enrolled)
inv1 T: all p: Person | all c: Course | p in Professor implies (c not in p.enrolled)	    all s: Person | all c: Course | s in Student implies (some c in p.enrolled)
inv1 S: all p: Person | all c: Course | p in Professor implies (c not in p.enrolled) or p in Studend implies some c in p.enrolled
inv1 T: all p: Person | all c: Course | p in Professor implies (c not in p.enrolled) or p in Student implies some c in p.enrolled
inv1 T: all p: Person | all c: Course | p in Professor implies (no c in p.enrolled)
inv1 T: all p: Person | all c: Course | p in Professor implies (no c in p.enrolled)
inv1 T: all p: Person | all c: Course | p in Professor implies (no p in enrolled.c)
inv1 T: all p: Person | all c: Course | p in Professor implies (no p in enrolled.c)

---
inv1 S: all c:Course, all p:Person | p.enrolled.course & Student
inv1 S: all c:Course, all p:Person | p.enrolled.course & Student
inv1 S: all c:Course, all p:Person | enrolled.c & Student
inv1 T: all c:Course, p:Person | enrolled.c & Student
inv1 T: all c:Course | enrolled.c & Student

---
inv6 S: all x : Person | one y : course | (x in projects.x and y in projects.x) implies x in enrolled.y
inv6 T: all x : Person | one y : Course | (x in projects.x and y in projects.x) implies x in enrolled.y
inv6 T: all x : Person | one y : Course | (x in projects.x and y in projects.x) implies x in enrolled.y
inv6 T: all x : Person | one y : Course | (x in Person.projects.x and y in Course.projects.x) implies x in enrolled.y
inv6 T: all x : Person | one y : Course | (x in projects.x and y in projects.x) implies x in enrolled.y
inv6 T: all x : Person | one y : Course | (x in Course<:projects.x and y in Person<:projects.x) implies x in enrolled.y

---
inv3 T: all x:Course, y:Person| teaches.x implies y in Professor
inv3 T: all x:Course, y:Person| y.teaches implies y->x in teaches
inv3 T: all x:Course, y:Person| x.teaches implies y->x in teaches
inv3 S: all x:Course, y:Person|
inv3 S: all x:Course| one y, z:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
inv3 S: all x:Course, one y, z:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
inv3 S: all x:Course| one y, z:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
inv3 S: all x:Course| one  z, y:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
inv3 S: all x:Course| one  z, k:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
inv3 S: all x:Course| one  z, k:Person | z->x in enrolled and z in Student implies k->x in teaches y in Professor
inv3 S: all x:Course| one  z, k:Person | z->x in enrolled and z in Student implies k->x in teaches k in Professor

---
inv4 T: all p : Project | #(p.Course)=1
inv4 T: all p : Project | #(projects.p)=1
inv4 T: all p : Project | #(projects.p)=1
inv4 T: all p : Project | #(projects.p)<=1
inv4 T: all p : Project | all x:Course | #(Course.projects.p)=1
inv4 T: all p : Project | all x : Course | #(x.projects.p)=1
inv4 T: all p : Project | #(Course.projects.p)=1

---
inv13 S: all x,w :Student| all g1,g2:Grade| all z: Course | one q : project |(z in x.enrolled and z in w.enrolled and x->g1 in z.grades and w.g2 in z.grades and g1>g2 and g1!=g2 and w!=x) implies (q in z.projects and q in x.projects)
inv13 T: all x,w :Student| all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and x->g1 in z.grades and w.g2 in z.grades and g1>g2 and g1!=g2 and w!=x) implies (q in z.projects and q in x.projects)
inv13 T: all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and x->g1 in z.grades and w.g2 in z.grades and g1>g2 and g1!=g2 and w!=x) implies (q in z.projects and q in x.projects)
inv13 T: all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and x->g1 in z.grades and w.g2 in z.grades and g1>g2 and g1!=g2 and w!=x) implies (q in z.projects and q in x.projects)
inv13 T: all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and x->g1 in z.grades and w->g2 in z.grades and g1>g2 and g1!=g2 and w!=x) implies (q in z.projects and q in x.projects)
inv13 T: all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and x->g1 in z.grades and w->g2 in z.grades and g1>g2 and g1!=g2 and w!=x) implies (q in z.projects and q in x.projects)
inv13 S: all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and x->g1 in z.grades and w->g2 in z.grades and (univ g1)>(univ g2) and g1!=g2 and w!=x) implies (q in z.projects and q in x.projects)
inv13 S: all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and x->g1 in z.grades and w->g2 in z.grades and (univ g1)>(univ g2) and g1!=g2 and w!=x) implies (q in z.projects and q in x.projects)
inv13 S: all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and x->g1 in z.grades and w->g2 in z.grades and (univ g1)>(univ g2) and g1!=g2 and w!=x) implies (q in z.projects and q in x.projects)
inv13 S: all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and	      x->g1 in z.grades and w->g2 in z.grades and (univ g1)>(univ g2) and g1!=g2 and w!=x) implies	(q in z.projects and q in x.projects)
inv13 S: all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and	      x->g1 in z.grades and w->g2 in z.grades and	      (univ g1)>(univ g2) and g1!=g2 and w!=x) implies	(q in z.projects and q in x.projects)
inv13 S: all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and	      x->g1 in z.grades and w->g2 in z.grades and	      ((univ g1)>(univ g2)) and g1!=g2 and w!=x) implies	(q in z.projects and q in x.projects)
inv13 S: all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and	      x->g1 in z.grades and w->g2 in z.grades and	      (univ(g1))>(univ (g2)) and g1!=g2 and w!=x) implies	(q in z.projects and q in x.projects)
inv13 S: all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and	      x->g1 in z.grades and w->g2 in z.grades and	      univ(g1)>univ (g2) and g1!=g2 and w!=x) implies	(q in z.projects and q in x.projects)
inv13 S: all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and	      x->g1 in z.grades and w->g2 in z.grades and	      univ(g1)>univ(g2) and g1!=g2 and w!=x) implies	(q in z.projects and q in x.projects)
inv13 T: all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and	      x->g1 in z.grades and w->g2 in z.grades and	      univ[g1]>univ[g2] and g1!=g2 and w!=x) implies	(q in z.projects and q in x.projects)
inv13 T: all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and	      x->g1 in z.grades and w->g2 in z.grades and	      univ[g1]>univ[g2] and g1!=g2 and w!=x) implies	(q in z.projects and q in x.projects)
inv13 T: all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and	      x->g1 in z.grades and w->g2 in z.grades and	      (univ[g1])>(univ[g2]) and g1!=g2 and w!=x) implies	(q in z.projects and q in x.projects)
inv13 T: all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and	      x->g1 in z.grades and w->g2 in z.grades and	      (univ[g1])=(univ[g2]) and g1!=g2 and w!=x) implies	(q in z.projects and q in x.projects)
inv13 S: one a:Student |all x : Student-a | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and	      x->g1 in z.grades and w->g2 in z.grades and	      (univ[g1])>(univ[g2]) and g1!=g2 and w!=x) implies	(q in z.projects and q in x.projects)

---
inv7 S: all u:User, c: Curso | c in u.enrroled => lone c.project in u.projects
inv7 S: all u:User, c: Curso | c in u.enrroled => lone c.project in u.projects
inv7 S: all u:Student, c: Curso | c in u.enrroled => lone c.project in u.projects
inv7 S: all u:Student, c: Course | c in u.enrroled => lone c.project in u.projects
inv7 S: all u:Student, c: Course | c in u.enrolled => lone c.project in u.projects
inv7 T: all u:Student, c: Course | c in u.enrolled => lone c.projects in u.projects
inv7 T: all u:Student, c: Course | c in u.enrolled => lone (c.projects in u.projects)

---
inv13 S: all c: Course | let m = max[g in c.grades | c.grades[g]] |	some s: Student | s in c.enrolled && c.grades[s] = m =>	some p: Project | p in c.projects && p in s.projects
inv13 S: all c: Course | let m = max[g in c.grades | c.grades[g]] |	    some s: Student | s in c.enrolled && c.grades[s] = m =>	    some p: Project | p in c.projects && p in s.projects
inv13 S: all c: Course | let m = max[g in c.grades | c.grades[g]] |	    some s: Student | s in c.enrolled && c.grades[s] = m =>	    some p: Project | p in c.projects && p in s.projects
inv13 S: all c: Course | let m = max[g in c.grades | c.grades[g]] |	    some s: Student | c in s.enrolled && c.grades[s] = m =>	    some p: Project | p in c.projects && p in s.projects
inv13 T: all c: Course | let m = max[g in c.grades] |	    some s: Student | c in s.enrolled && c.grades[s] = m =>	    some p: Project | p in c.projects && p in s.projects
inv13 S: all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(c.grades.g) => some p: Project | p in c.projects && p in s.projects
inv13 S: all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(c.grades.g) => some p: Project | p in c.projects && p in s.projects
inv13 S: all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(c.grades.g) => some p: Project | p in project.c && p in s.projects
inv13 S: all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(c.grades.g) => some p: Project | p in project.c && p in s.projects
inv13 S: all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(c.grades) => some p: Project | p in project.c && p in s.projects
inv13 S: all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(c.grades.g) => some p: Project | p in project.c && p in s.projects
inv13 S: all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(c.grades[g]) => some p: Project | p in c.projects && p in s.projects
inv13 S: all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(c.grades[g]) => some p: Project | p in c.projects && p in s.projects
inv13 S: all c: Course, s: Student, g: Grade | s->g in c.grades && g = lone Int { es - es.^prev } => some p: Project | p in c.projects && p in s.projects
inv13 S: all c: Course, s: Student, g: Grade | s->g in c.grades && g = lone Int { c.grades - c.grades.^prev } => some p: Project | p in c.projects && p in s.projects

---
inv13 T: all c: Course, s: Student, g: Grade| s->g in c.grades && s->g = c.grades.max => some (c.projects & s.projects)
inv13 S: all c: Course, s: Student, g: Grade | s->g in c.grades && (forall g2 : Grade | s->g2 in c.grades => g >= g2) => some p: Project | p in c.projects && p in s.projects
inv13 S: all c: Course, s: Student, g: Grade | s->g in c.grades && (not (exists g2 : Grade | s->g2 in c.grades && g2 > g)) => some p: Project | p in c.projects && p in s.projects
inv13 S: all c: Course, s: Student, g: Grade | s->g in c.grades && (not ( g2 : Grade | s->g2 in c.grades 	&& g2 > g)) => some p: Project | p in c.projects && p in s.projects
inv13 S: all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(c.grades) => some p: Project | p in c.projects && p in s.projects
inv13 S: all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(c.grades) => some p: Project | p in 	  c.projects && p in s.projects
inv13 T: all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(grades) => some p: Project | p in 	  c.projects && p in s.projects
inv13 S: all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(grades.c) => some p: Project | p in 	  c.projects && p in s.projects
inv13 T: all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(grades) => some p: Project | p in 	  c.projects && p in s.projects
inv13 T: all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(grades) => some p: Project | p in 	  c.projects && p in s.projects

---
inv15 S: all c: Course, p1: Project, p2: Project | p1 in c.projects && p2 in c.projects && p1 != p2 => all s1: Student, s2: Student | s1 in p1.projects && s2 in p2.projects => abs(c.grades[s1]-c.grades[s2]) <= 1
inv15 S: all c: Course, p1, p2: Project | p1 in c.projects && p2 in c.projects && p1 != p2 => all s1: Student, s2: Student | s1 in p1.projects && s2 in p2.projects => c.grades[s1] = c.grades[s2])
inv15 S: all c: Course, p: Project, s1: Student, s2: Student | p in s1.projects && p in s2.projects => s1 in  c.grades[s1] = c.grades[s2])
inv15 T: all c: Course, p: Project, s1: Student, s2: Student, g: Grade | p in s1.projects && p in s2.projects => s1 ->g in c.grades = s2-g in c.grades
inv15 T: all c: Course, p: Project, s1: Student, s2: Student, g: Grade | p in s1.projects && p in s2.projects => c.grades[s1] = s2 in c.grades[s2]
inv15 T: all c: Course, p: Project, s1: Student, s2: Student, g: Grade | p in s1.projects && p in s2.projects => c.grades.s1 = s2 in c.grades[s2]
inv15 T: all c: Course, p: Project, s1: Student, s2: Student, g: Grade | p in s1.projects && p in s2.projects => c.grades.s1 = s2 in c.grades.s2
inv15 T: all c: Course, p: Project, s1: Student, s2: Student, g: Grade | p in s1.projects && p in s2.projects => c.grades -> s1 = s2 in c.grades.s2
inv15 T: all c: Course, p: Project, s1: Student, s2: Student, g: Grade | p in s1.projects && p in s2.projects => s1 -> c.grades s1 = s2 in c.grades.s2
inv15 T: all c: Course, p: Project, s1: Student, s2: Student, g: Grade | p in s1.projects && p in s2.projects => s1 -> c.grades s1 = s2 -> c.grades

---
inv14 T: all s:Student, ss: Student-s,p:projects, pp:projects-p| (p in s.projects && p in pp.projects) => no (pp in s.projects & pp in pp.projects)
inv14 T: all s:Student, ss: Student-s ,p:projects, pp:projects-p| (p in s.projects && p in pp.projects) => no (pp in s.projects & pp in pp.projects)
inv14 T: all s:Student, ss: Student-s ,p:Project, pp:Project-p| (p in s.projects && p in pp.projects) => no (pp in s.projects & pp in pp.projects)
inv14 T: all s:Student, ss: Student-s ,p:Project, pp:Project-p| (p in s.projects && p in pp.projects) => (pp not in s.projects & pp not in pp.projects)
inv14 T: all s:Student, ss: Student-s ,p:Project, pp:Project-p| (p in s.projects && p in pp.projects) => no (pp in s.projects & pp in pp.projects)
inv14 T: all s:Student, ss: Student-s , p:Project, pp:Project-p | (p in s.projects && p in pp.projects) => no (pp in s.projects & pp in pp.projects)

---
inv7 T: all s : Student, c : s.enrolled | lone (c.projects and s.projects)
inv7 T: all s : Student, c : s.enrolled | lone (c.projects and s.projects)
inv1 T: all p : Person, s : Student | s.enrolled implies p in s
inv1 T: all p : Person, s : Student | s.enrolled
inv1 T: all p : Person, s : Student | p.enrolled
inv1 S: all p : Person, s : Student, c : Course | p.enrolled == c implies p in s
inv1 S: all c:Course, all p:Person | p.enrolled.course & Student
inv1 S: all c:Course, all p:Person | p.enrolled.course & Student
inv1 S: all c:Course, all p:Person | enrolled.c & Student
inv1 T: all c:Course, p:Person | enrolled.c & Student
inv1 T: all c:Course | enrolled.c & Student

---
inv5 S: all per:Person | all p:Project | p in per.projects implies per in Student	    all pro:project | some p:Person | pro in p.projects
inv3 S: some p : Professor | p in teaches.c
inv3 S: all c : Courses, some p : Professor | p in teaches.c
inv3 S: all c : Courses, some p : Professor | p->c in teaches
inv3 S: all c : Course, some p : Professor | p->c in teaches
inv3 S: all c : Course, some p : Professor
inv3 S: all c : Course, some p : Professor | c in Course

---
inv4 S: all p : Project | one proposes.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 S: all p : Project, c : Courses | one c in projects.p
inv4 T: all p : Project, c : Course | one c in projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one Course in projects.p
inv4 T: all p : Project, c : Course | one c in projects.p

---
inv5 T: all s : Person, p : Project | p in s.projects implies s in Student		all p : Project, s : Person | some s in projects.p
inv5 T: all s : Person, p : Project | p in s.projects implies s in Student		all p : Project, s : Person | some s in projects.p
inv5 T: all s : Person, p : Project | p in s.projects implies s in Student and some s in projects.p
inv5 T: all s : Person, p : Project | (p in s.projects implies s in Student) and (some s in projects.p)
inv5 T: all s : Person, p : Project | (p in s.projects implies s in Student) and (some s in projects.p)

---
inv5 T: all s,p : univ | s in Person and s->p in projects implies s in Student and some per : Person | per in projects.Project
inv5 T: all s,p : univ | s in Person and s->p in projects implies s in Student and some per : Person | all proj: Project | per in projects.proj
inv5 T: all s,p : univ | s in Person and s->p in projects implies s in Student and all proj: Project | some per : Person | per->proj in projects
inv5 T: all s,p : univ | s in Person and s->p in projects implies s in Student and all proj: Project | some per : Person | per->proj in projects
inv5 T: all s,p : univ | s in Person and s->p in projects implies s in Student and all proj: Project | some per : Person | per->proj in projects

---
inv9 S: all x,y : Professor | all z : Course | (x,y in teaches.z) implies ( 	  	none k : Course | (x in teaches.k and y in enrolled.k)	    	and 	    	 k : Course | (y in teaches.k and x in enrolled.k)	  		  )
inv9 S: all x,y : Professor | all z : Course | (x,y in teaches.z) implies ( 	  	none k : Course | 	    	(x in teaches.k and y in enrolled.k)	    		and 	    	(y in teaches.k and x in enrolled.k)	  		  )
inv9 S: all x,y : Professor | all z : Course | (x,y in teaches.z) implies 	  ( 	  	none k : Course | 	    	(x in teaches.k and y in enrolled.k) and (y in teaches.k and x in enrolled.k)	  )
inv9 S: all x,y : Professor | all z : Course | (x in teaches.z and y in teaches.z) implies 	  ( 	  	none k : Course | 	    	(x in teaches.k and y in enrolled.k) and (y in teaches.k and x in enrolled.k)	  )
inv9 S: all x,y : Professor | all z : Course | (x in teaches.z and y in teaches.z) implies 	  	  	none k : Course | 	    	(x in teaches.k and y in enrolled.k) and (y in teaches.k and x in enrolled.k)

---
inv5 T: all p: Person | some p.projects implies p in Student		all p: Project | p in Person <: projects
inv5 T: all p: Person | some p.projects implies p in Student		all p: Project | Person <: p in projects
inv5 T: all p: Person | some p.projects implies p in Student		all p: Project | p in (Person <: projects)
inv5 T: all p: Person | some p.projects implies p in Student		all p: Project | p in projects
inv5 T: all p: Person | some p.projects implies p in Student		all p: Project | p in projects
inv5 T: all p: Project | p in projects

---
inv12 T: all s: Student, c: Course | lone s & c.grades
inv12 T: all s: Student, c: Course | lone s & c.grades
inv12 T: all s: Student, c: Course | lone s & c.grades
inv12 T: all s: Student, c: Course | lone s & c.grades
inv12 T: all s: Student, c: Course | lone s & c.grades
inv12 T: all s: Student, c: Course | lone s & c.grades

---
inv13 T: grades.(max[Grade]) in projects
inv13 T: grades.(max[Grade]) in Person <: projects
inv13 T: grades.(max[Grade]) in (Person <: projects)
inv13 T: grades.(max[Grade]) in (Course <: projects)
inv13 T: grades.(max[Grade]) in projects
inv13 T: grades.(max[Grade]) in projects.projects

---
inv5 S: all p : Professor | no p.project 	  	all p : Project | some s in Student | p in s.project
inv5 S: all p : Professor | no p.project 	  	all p : Project | some s in Student | p in s.project
inv5 S: all p : Professor | no p.project
inv5 S: all p : Professor | no p.project 	  	all p : Project | some s in Student | p in s.project
inv5 S: all p : Person - Student | no p.project
inv5 S: all p : Professor | no p.projects	  	all p : Project | some s in Student | p in s.projects

---
inv5 S: all p: Project | some projects.p and projects.p in Student
inv5 S: all p: Project | some projects.p and projects.p in Student
inv5 S: all p: Project | some projects.p and projects.p in Student
inv5 T: all p: Project | some projects.p and projects.p in Student
inv5 T: all p: Project | some projects.p and projects.p in Student
inv5 T: all p: Project | some projects.p and projects.p in Student

---
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and enrolled.y and one project.z
inv7 S: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects  and one project.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects  and one projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and enrolled.y and one projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and one enrolled.y and one projects.z

---
inv7 S: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and all enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z

---
inv7 T: all s:Student | all pr:Project | lone (s.enrolled.projects in pr)
inv7 T: all s:Student | all pr:Project | lone (s.enrolled.projects in pr)
inv7 S: all s:Student | all pr:Project | lone (s.enrolled.projects
inv7 S: all s:Student | all pr:Project | lone (pr s.enrolled.projects)
inv7 T: all s:Student | all pr:Project | pr in s.projects implies lone( pr in s.enrolled.projects )
inv7 S: all s:Student | all pr:Project | pr in s.projects implies pr in lone(s.enrolled.projects )

---
inv5 S: all p : Person | (p in Student => (p.projects = p.projects) and (p in Professor => (p.projects = none))), all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects) and (p in Professor => (p.projects = none))), all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects)) and (p in Professor => (p.projects = none)),	    all p : Project | (some s : Student | p in s.projects)
inv5 S: all p : Person | (p in Student => (p.projects = p.projects)) & (p in Professor => (p.projects = none)),	    all p : Project | (some s : Student | p in s.projects)
inv5 T: all p : Project | (some s : Student | p in s.projects) 	    all p : Person | (p in Student => (p.projects = p.projects)) & (p in Professor => (p.projects = none))

---
inv13 S: all c : Course | (sone s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max (c.enrolled.grades.c)) => s.projects & c.projects != none)
inv13 S: all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)

---
inv3 S: all c : Course | implies (some p : Professor | c in p.teaches)
inv3 S: all c : Course implies (some p : Professor | c in p.teaches)
inv3 S: c : Course implies (some p : Professor | c in p.teaches)
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and enrolled.y and one project.z
inv7 S: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects  and one project.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects  and one projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and enrolled.y and one projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and one enrolled.y and one projects.z

---
inv7 S: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and all enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z

---
inv8 S: all c: Course, p: Professor | c in p.teaches => p not in c.teachers
inv8 T: all c: Course, p: Professor | c in p.teaches => p not in c.grades
inv8 T: all c: Course, p: Professor | c in p.teaches => p not in c.grades
inv8 S: all c: Course, p: Professor | c in p.teaches => p != c.grades.getKey(p.grades)
inv8 S: all c: Course, p: Professor | c in p.teaches => p != c.grades.getKey(p.grades)

---
inv8 T: all c: Course, p: Professor | c in p.teaches => no p.grades[p] in c.grades
inv8 T: all c: Course, p: Professor | c in p.teaches => no p in c.grades
inv8 T: all c: Course, p: Professor | c in p.teaches => no c.grades[p] in c.grades
inv8 T: all c: Course, p: Professor | c in p.teaches => not (p.grades[p] in c.grades)
inv8 S: all c: Course, p: Professor | c in p.teaches => p.grades[p] not in c.grades.ran	}
inv8 S: all c: Course, p: Professor | c in p.teaches => p.grades[p] not in c.grades.ran
inv8 T: all c: Course, p: Professor | c in p.teaches => p.grades[p] not in c.grades
inv8 T: all c: Course, p: Professor | c in p.teaches => p not in c.grades

---
inv9 T: all p : Professor | all c : Course | c in p.teaches => no (p.teaches & p.enrolled) in c
inv9 T: all p : Professor | all c : Course | c in p.teaches => no (p.teaches & p.enrolled) in c
inv9 T: all p : Professor | all c : Course | c in p.teaches => no (p.teaches & p.enrolled) in c
inv9 T: all p : Professor | all c : Course | (c in p.teaches => no (p.teaches & p.enrolled) in c)
inv9 S: all p : Professor |	all c1, c2 : Course |	c1 in p.teaches and c2 in p.enrolled and c1 = c2 => false

---
inv9 T: all c: Course, p: Professor | c in p.teaches => no p.grades[p] in ~c.grades
inv9 T: all c: Course, p: Professor | c in p.teaches => p not in ~c.grades
inv9 T: all c: Course, p: Professor | c in p.teaches => p not in c.~grades
inv9 S: all c: Course, p: Professor |p not in c~.grades
inv9 S: all c: Course, p: Professor |p not in c.grades~
inv9 T: all c: Course, p: Professor |p not in ~c.grades
inv9 T: all c: Course, p: Professor |p not in c.~grades
inv9 T: all c: Course, p: Professor | c in p.teaches => no q: Professor | q in c.grades && q in p.teaches && q != p
inv9 S: all c: Course, p,q: Professor | c in p.teaches => no q | q in c.grades && q in p.teaches && q != p
inv9 T: all c: Course, p,q: Professor | c in p.teaches => no q: Professor | q in c.grades && q in p.teaches && q != p
inv9 T: all c: Course, p,q: Professor | c in p.teaches => no q: Professor | q in c.grades && q in p.teaches && q != p
inv3 S: some p : Professor | p in teaches.c
inv3 S: all c : Courses, some p : Professor | p in teaches.c
inv3 S: all c : Courses, some p : Professor | p->c in teaches
inv3 S: all c : Course, some p : Professor | p->c in teaches
inv3 S: all c : Course, some p : Professor
inv3 S: all c : Course, some p : Professor | c in Course

---
inv4 S: all p : Project | one proposes.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 S: all p : Project, c : Courses | one c in projects.p
inv4 T: all p : Project, c : Course | one c in projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one Course in projects.p
inv4 T: all p : Project, c : Course | one c in projects.p

---
inv5 T: all s : Person, p : Project | p in s.projects implies s in Student		all p : Project, s : Person | some s in projects.p
inv5 T: all s : Person, p : Project | p in s.projects implies s in Student		all p : Project, s : Person | some s in projects.p
inv5 T: all s : Person, p : Project | p in s.projects implies s in Student and some s in projects.p
inv5 T: all s : Person, p : Project | (p in s.projects implies s in Student) and (some s in projects.p)
inv5 T: all s : Person, p : Project | (p in s.projects implies s in Student) and (some s in projects.p)

---
inv5 S: all p:Person-Professor | (some c:Project | lone p in projects.p
inv5 T: all p:Person-Professor | (some c:Project | lone p in projects.p)
inv5 T: all x:Person-Student | no x.projects	  		all x:Project |all u:Person |some x in u.projects
inv5 T: all x:Person-Student | no x.projects	  		all x:Project |all u:Person |some x in u.projects
inv5 T: all x:Person-Student | no x.projects	  		all x:Project |all u:Person |some x in u.projects
inv5 T: all x:Person-Student | no x.projects	  		all x:Project |all u:Person |some x in u.projects
inv5 T: all x:Person-Student | no x.projects	  		all x:Project |some u:Student |some x in u.projects

---
inv9 S: all p : Professor | some c : Professor - c | p.teaches = c.teaches implies no (p.teaches and c.enrolled)
inv9 T: all p : Professor | some c : Professor - p | p.teaches = c.teaches implies no (p.teaches and c.enrolled)
inv9 T: all p : Professor | some c : Professor - p | (p.teaches = c.teaches) implies no (p.teaches and c.enrolled)
inv9 T: all p : Professor | some c : Professor - p | (p.teaches and c.teaches) implies no (p.teaches and c.enrolled)
inv9 T: all p : Professor | some c : Professor - p | some (p.teaches and c.teaches) implies no (p.teaches and c.enrolled)

---
inv5 T: all s,p : univ | s in Person and s->p in projects implies s in Student and some per : Person | per in projects.Project
inv5 T: all s,p : univ | s in Person and s->p in projects implies s in Student and some per : Person | all proj: Project | per in projects.proj
inv5 T: all s,p : univ | s in Person and s->p in projects implies s in Student and all proj: Project | some per : Person | per->proj in projects
inv5 T: all s,p : univ | s in Person and s->p in projects implies s in Student and all proj: Project | some per : Person | per->proj in projects
inv5 T: all s,p : univ | s in Person and s->p in projects implies s in Student and all proj: Project | some per : Person | per->proj in projects

---
inv6 S: all s: Student | all p : Courses | s in erolled.p.projects
inv6 S: all s: Student | all p : Course | s in erolled.p.projects
inv6 T: all s: Student | all p : Course | s in enrolled.p.projects
inv6 T: all s: Student | all p : Course | s in enrolled.p.projects
inv6 T: all s: Student | all p : Course | all proj: Project | s in enrolled.p.projects.proj
inv6 T: all s: Person | all p : Course | all proj: Project | s in Student and s in enrolled.p.projects.proj

---
inv3 S: all c : Course, t : Teacher
inv3 S: all c : Course, t : Teacher |
inv3 S: all c : Course, some t : Teacher | t.teaches = c.course
inv3 S: all c : Course, some t : Teacher | t.teaches = c.course
inv3 S: all c : Course, some t : Teacher | t.teaches = c

---
inv1 S: all c:Course, all p:Person | p.enrolled.course & Student
inv1 S: all c:Course, all p:Person | p.enrolled.course & Student
inv1 S: all c:Course, all p:Person | enrolled.c & Student
inv1 T: all c:Course, p:Person | enrolled.c & Student
inv1 T: all c:Course | enrolled.c & Student

---
inv3 S: some p : Professor | p in teaches.c
inv3 S: all c : Courses, some p : Professor | p in teaches.c
inv3 S: all c : Courses, some p : Professor | p->c in teaches
inv3 S: all c : Course, some p : Professor | p->c in teaches
inv3 S: all c : Course, some p : Professor
inv3 S: all c : Course, some p : Professor | c in Course

---
inv4 S: all p : Project | one proposes.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 S: all p : Project, c : Courses | one c in projects.p
inv4 T: all p : Project, c : Course | one c in projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one Course in projects.p
inv4 T: all p : Project, c : Course | one c in projects.p

---
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and enrolled.y and one project.z
inv7 S: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects  and one project.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects  and one projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and enrolled.y and one projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and one enrolled.y and one projects.z

---
inv7 S: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and all enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z

---
inv7 T: all s:Student | all pr:Project | lone (s.enrolled.projects in pr)
inv7 T: all s:Student | all pr:Project | lone (s.enrolled.projects in pr)
inv7 S: all s:Student | all pr:Project | lone (s.enrolled.projects
inv7 S: all s:Student | all pr:Project | lone (pr s.enrolled.projects)
inv7 T: all s:Student | all pr:Project | pr in s.projects implies lone( pr in s.enrolled.projects )
inv7 S: all s:Student | all pr:Project | pr in s.projects implies pr in lone(s.enrolled.projects )

---
inv9 S: all p1:Professor | all col:Professor-p | some (col.teaches & p.teaches) implies no (col.enrolled & p.teaches)
inv9 S: all p1:Professor | all col:Professor-p | (some (col.teaches & p.teaches) implies no (col.enrolled & p.teaches))
inv9 S: all p1:Professor | (all col:Professor-p | some (col.teaches & p.teaches) implies no (col.enrolled & p.teaches))
inv9 S: all p:Professor | all col:Professor-p | some (col.teaches & p.teaches) implies no (col.enrolled & p.teaches)
inv9 S: all p : Professor | (all col : Professor - p | some (col.teaches & p.teaches) implies no (col.enrolled & p.teaches))
inv9 S: all p : Professor | (all col : Professor - p | some (col.teaches & p.teaches) implies no (col.enrolled & p.teaches))

---
inv10 S: all x: Person | all c: Course | some g: grade | g in grades(x) => x in Student
inv10 T: all x: Person | all c: Course | some g: Grade | g in grades(x) => x in Student
inv10 T: all x: Person | all c: Course | some g: Grade | g in grades.x => x in Student
inv10 T: all x: Person | all c: Course | some g: Grade | grades(x) => x in Student
inv10 T: all x: Person | all c: Course | grades(x) => x in Student
inv10 T: all x: Person | all c: Course | grades(x) => cin x.enrolled && x in Student
inv10 T: all x: Person | all c: Course | grades(x) => c in x.enrolled && x in Student
inv10 T: all x: Person | all c: Course | grades(x) => c in x.enrolled
inv10 T: all x: Person | all c: Course | x in Student && grades(x) => c in x.enrolled
inv10 T: all x: Person | all c: Course | x in Student && c.grades(x) => c in x.enrolled

---
inv1 T: all p:Person.enrolled in Course|	  		p->Student
inv1 S: no e:enrolled | p:Professor in Course
inv1 S: no e:enrolled | p:Professor in e.Course
inv1 T: not one Professor.enrolled in Course
inv1 T: all c:Course |		  		not one Professor.enrolled.c
inv1 T: all c:Course |		  		not one c.Professor.enrolled
inv1 T: all c:Course |		  		not one Professor.enrolled in c

---
inv6 T: all s : Student, p : Project, c : Course | s in projects.p and p in projects.c implies p in enrolled.c
inv6 T: all s : Student, p : Project | some c : Course | s in projects.p and p in projects.c implies p in enrolled.c
inv6 S: all s : Student, p : Project | s in projects.p implies (some c : Course p in projects.c implies p in enrolled.c)
inv6 S: all s : Student, p : Project | s in projects.p implies (some c : Course p in projects.c implies p in enrolled.c)
inv6 T: all s : Student, p : Project | s in projects.p implies (some c : Course | p in projects.c implies p in enrolled.c)
inv6 T: all s : Student, p : Project | p in s.projects implies (some c : Course | p in projects.c implies p in enrolled.c)
inv6 S: all s : Student, p : s.projets | (some c : Course | p in projects.c implies p in enrolled.c)
inv6 T: all s : Student, p : s.projects | (some c : Course | p in projects.c implies p in enrolled.c)
inv6 T: all s : Student | all p : s.projects | (some c : Course | p in projects.c implies p in enrolled.c)
inv6 T: all s : Student | ( all p : s.projects | (some c : Course | p in projects.c implies p in enrolled.c) )

---
inv13 S: all s : Student, c: Course, g: Grade | s->g == max(c.grades) implies (some p: Project | p in s.projects && p in c.projects)
inv13 T: all s : Student, c: Course, g: Grade | s->g = max(c.grades) implies (some p: Project | p in s.projects && p in c.projects)
inv13 T: all c: Course | some s1: Student | all s2: Student - s1, g: Grade | some p: Project| s1->g > s2->g implies some(s.projects & c.projects)
inv13 T: all c: Course | some s1: Student | all s2: Student, g: Grade | some p: Project| s1->g > s2->g implies some(s.projects & c.projects)
inv13 T: all c: Course | some p1: Person - Professor | all p2: Person - Professor - p1, g: Grade | some p: Project| p1->g > p2->g implies some(s.projects & c.projects)

---
inv3 S: all c : Course, t : Teacher | some t in teaches.c
inv3 S: all c : Course, t : Teacher | some t in teaches.c
inv3 T: all c : Course, t : Professor | some t in teaches.c
inv3 T: all c : Course, p : Professor | some p in teaches.c
inv3 S: all c : Course  p : Professor | some p in teaches.c

---
inv9 S: all p1:Professor | all p2:Professor - p | some (p1.teaches and p2.teaches) implies no (p1.enrolled and no p2.enrolled)
inv9 T: all p1:Professor | all p2:Professor - p1 | some (p1.teaches and p2.teaches) implies no (p1.enrolled and no p2.enrolled)
inv9 T: all p1:Professor | all p2:Professor - p1 | some (p1.teaches and p2.teaches) implies no (p1.teaches and no p2.enrolled)
inv9 T: all p1:Professor | all p2:Professor - p1 | some (p1.teaches & p2.teaches) implies no (p1.teaches and no p2.enrolled)
inv9 T: all p1:Professor | all p2:Professor - p1 | some (p1.teaches and p2.teaches) implies no (p1.teaches and p2.enrolled)
inv9 T: all p1:Professor | all p2:Professor - p1 | some (p1.teaches and p2.teaches) implies no (p1.teaches & p2.enrolled)

---
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( (Course:>projects.p).grades.s1 - (Course:>projects.p).grades.s1 <= 1    )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( (Course:>projects.p).grades.s1 - (Course:>projects.p).grades.s1 <= 1    )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades.s1) - ((Course:>projects.p).grades.s1) <= 1    )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades.s1)  <= 1    )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades.last)  <= 1    )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades.first)  <= 1    )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades.last)  <= 1    )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades.last.first)  <= 1    )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades.last.last)  <= 1    )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades)  <= 1    )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades.s1)  <= 1    )
inv15 S: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades&s1->Grades)  <= 1    )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades&s1->Grade)  <= 1    )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades&s1->Grade).last  <= 1    )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades&s1->Grade).first  <= 1    )

---
inv15 S: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) all g: (Course:>projects.p).grades | ((s1 in g ) implies ( s2 in g.prev or s2 in g.next)) and ((s2 in g ) implies ( s1 in g.prev or s1 in g.next) )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies all g: (Course:>projects.p).grades | ((s1 in g ) implies ( s2 in g.prev or s2 in g.next)) and ((s2 in g ) implies ( s1 in g.prev or s1 in g.next) )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies all g: (Course:>projects.p).grades | ((s1 in g ) implies ( s2 in g.prev or s2 in g.next)) and ((s2 in g ) implies ( s1 in g.prev or s1 in g.next) )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies all g: (Course:>projects.p).grades   | ((s1 in g ) implies ( s2 in g.prev or s2 in g.next)) and ((s2 in g ) implies ( s1 in g.prev or s1 in g.next) )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies all g: (Course:>projects.p).grades | ((s1 in g ) implies ( s2 in g.prev or s2 in g.next))   and ((s2 in g ) implies ( s1 in g.prev or s1 in g.next) )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies all g: (Course:>projects.p).grades | ((s1 in g ) implies ( s2 in   g.prev or s2 in g.next)) and ((s2 in g ) implies ( s1 in g.prev or s1 in g.next) )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies all g: (Course:>projects.p).grades | ((  s1 in g ) implies ( s2 in g.prev or s2 in g.next)) and ((s2 in g ) implies ( s1 in g.prev or s1 in g.next) )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies all g: (Course:>projects.p).grades | ((s1 in   g ) implies ( s2 in g.prev or s2 in g.next)) and ((s2 in g ) implies ( s1 in g.prev or s1 in g.next) )
inv15 T: all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies all g: (Course:>projects.p).grades | ((#s1->Grade&g>0 ) implies ( #s2->Grade&g.prev>0 or #s2->Grade&g.next>0)) and ((#s2->Grade&g>0 ) implies ( #s1->Grade&g.prev>0 or #s1->Grade&g.next>0))

---
inv15 S: all disj s1,s2:Student ,p:Project, c: Course:>projects.p| ( p in s1.projects and p in s2.projects) implies ( (s2 in c.grades.prevs[s1->Grade&c.grades].first ) or  ( s1 in c.grades.prevs[s2->Grade&c.grades].first )   )
inv15 S: all disj s1,s2:Student ,p:Project, c: Course:>projects.p| ( p in s1.projects and p in s2.projects) implies ( (s2 in c.grades.prevs[s1->Grade&c.grades].first ) or  ( s1 in c.grades.prevs[s2->Grade&c.grades].first )   )
inv15 S: all disj s1,s2:Student ,p:Project, c: Course:>projects.p| ( p in s1.projects and p in s2.projects) implies ( (s2 in c.grades.prevs[s1->Grade&c.grades].first ) or   ( s1 in c.grades.prevs[s2->Grade&c.grades].first )   )
inv15 S: all disj s1,s2:Student ,p:Project, c: Course:>projects.p| ( p in s1.projects and p in s2.projects) implies ( (s2 in c.grades.prevs [s1->Grade&c.grades].first ) or ( s1 in c.grades.prevs[s2->Grade&c.grades].first )   )
inv15 S: all disj s1,s2:Student ,p:Project, c: Course:>projects.p| ( p in s1.projects and p in s2.projects) implies ( (s2 in   c.grades.prevs[s1->Grade&c.grades].first ) or ( s1 in c.grades.prevs[s2->Grade&c.grades].first )   )
inv15 S: all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in  c.grades.prevs[e1].first ) or ( s1 in c.grades.prevs[e2].first )   )
inv15 S: all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in  c.grades.prev[e1].first ) or ( s1 in c.grades.prevs[e2].first )   )
inv15 T: all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in  c.grades.prev[e1].first ) or ( s1 in c.grades.prev[e2].first )   )
inv15 T: all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in  c.grades.prev[e1] ) or ( s1 in c.grades.prev[e2] )   )
inv15 S: all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in  e1.prev ) or ( s1 e2.prev )   )
inv15 S: all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in  e1.prev ) or ( s1 e2.prev ))
inv15 S: all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in e1.prev ) or ( s1 e2.prev ))
inv15 S: all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in c.grades[e1].prev ) or ( s1 e2.prev ))
inv15 S: all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in c.grades[e1].prev ) or ( s1 c.grades[e2].prev ))
inv15 S: all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in c.grades.prevs[e1].first ) or ( s1 c.grades[e2].prev ))
inv15 T: all disj s1,s2:Student ,p:Project, c: Course:>projects.p, g : c.grades, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in g ) or ( s1 in g ))
inv15 T: all disj s1,s2:Student ,p:Project, c: Course:>projects.p, g : c.grades, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in g ) or ( s1 in g ))

---
inv4 S: all p: Project| one projects.c
inv4 T: all p: Project| one projects.p
inv4 T: all p: Project| some c: Course| p in projects.c
inv4 T: all p: Project| all c: Course| p in projects.c
inv4 T: all p: Project| all c: Course| one p in projects.c
inv4 T: all p: Project| one c: Course| p in projects.c

---
inv15 S: all x:Student, y:Student-x, p:Project| x->p in projects and y->p in projects c->x->g in grades implies #y->x->g in grades <= 1
inv15 S: all x:Student, y:Student-x, p:Project, c:Course, g:Grade| x->p in projects and y->p in projects c->x->g in grades implies #y->x->g in grades <= 1
inv15 T: all x:Student, y:Student-x, p:Project, c:Course, g:Grade| x->p in projects and y->p in projects and c->x->g in grades implies #y->x->g in grades <= 1
inv15 T: all x:Student, y:Student-x, p:Project, c:Course, g:Grade| x->p in projects and y->p in projects and c->x->g in grades implies #y->x->g <= 1 in grades
inv15 T: all x:Student, y:Student-x, p:Project, c:Course, g:Grade| x->p in projects and y->p in projects and c->x->g in grades implies #y->x->g in grades <= 1
inv15 T: all x:Student, y:Student-x, p:Project, c:Course, g:Grade| x->p in projects and y->p in projects and c->x->g in grades implies #c->y->g in grades <= 1

---
inv3 S: some p : Professor | p in teaches.c
inv3 S: all c : Courses, some p : Professor | p in teaches.c
inv3 S: all c : Courses, some p : Professor | p->c in teaches
inv3 S: all c : Course, some p : Professor | p->c in teaches
inv3 S: all c : Course, some p : Professor
inv3 S: all c : Course, some p : Professor | c in Course

---
inv4 S: all p : Project | one proposes.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 S: all p : Project, c : Courses | one c in projects.p
inv4 T: all p : Project, c : Course | one c in projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one Course in projects.p
inv4 T: all p : Project, c : Course | one c in projects.p

---
inv5 T: all s : Person, p : Project | p in s.projects implies s in Student		all p : Project, s : Person | some s in projects.p
inv5 T: all s : Person, p : Project | p in s.projects implies s in Student		all p : Project, s : Person | some s in projects.p
inv5 T: all s : Person, p : Project | p in s.projects implies s in Student and some s in projects.p
inv5 T: all s : Person, p : Project | (p in s.projects implies s in Student) and (some s in projects.p)
inv5 T: all s : Person, p : Project | (p in s.projects implies s in Student) and (some s in projects.p)

---
inv1 S: all c:Course, all p:Person | p.enrolled.course & Student
inv1 S: all c:Course, all p:Person | p.enrolled.course & Student
inv1 S: all c:Course, all p:Person | enrolled.c & Student
inv1 T: all c:Course, p:Person | enrolled.c & Student
inv1 T: all c:Course | enrolled.c & Student

---
inv7 T: all s:Student | all pr:Project | lone (s.enrolled.projects in pr)
inv7 T: all s:Student | all pr:Project | lone (s.enrolled.projects in pr)
inv7 S: all s:Student | all pr:Project | lone (s.enrolled.projects
inv7 S: all s:Student | all pr:Project | lone (pr s.enrolled.projects)
inv7 T: all s:Student | all pr:Project | pr in s.projects implies lone( pr in s.enrolled.projects )
inv7 S: all s:Student | all pr:Project | pr in s.projects implies pr in lone(s.enrolled.projects )

---
inv5 S: all p : Project | some p : Person <: projects.p and Person <: projects.p in Student
inv5 S: all p : Project | some p : Person <: projects.p and Person <: projects.p in Student
inv5 S: all p : Project | some p : Person <: projects.p and Person <: projects.p in Student
inv5 S: all p : Project | some p : Person <: projects.p and Person <: projects.p in Student
inv5 S: all p : Project | p : Person <: projects.p and Person <: projects.p in Student

---
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and enrolled.y and one project.z
inv7 S: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects  and one project.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects  and one projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and enrolled.y and one projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and one enrolled.y and one projects.z

---
inv7 S: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and all enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
inv7 T: all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z

---
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | projects.p
inv4 T: all p : Project | some projects.p
inv4 T: all p : Project | no projects.p
inv4 T: all p : Project | one projects.p

---
inv11 S: all x: Persona, y : Course | x in y.grades implies x in enrolled.y
inv11 T: all x: Person, y : Course | x in y.grades implies x in enrolled.y
inv11 T: all x: Person, y : Course | x in grades.y implies x in enrolled.y
inv11 T: all x: Person, y : Course | x in enrolled.grades.y
inv11 T: all x: Person, y : Course | x in grades.y
inv11 T: all x: Person, y : Course | x in grades

---
inv7 T: all s:Student | # (s.projects in s.enrolled.projects) < 2
inv7 T: all s:Student | lone s.projects in s.enrolled.projects
inv7 T: all s:Student | lone (s.projects in s.enrolled.projects)
inv7 T: all s:Student | lone (s.projects in s.enrolled.projects)
inv7 T: all s:Student | lone (s.projects in s.enrolled.projects)

---
inv9 S: all p1 : Professor | all p2 : Professor - p1 | all c : Course | c in p2.enrolled and c in not p1.teaches
inv9 S: all p1 : Professor | all p2 : Professor - p1 | all c : Course | c in p2.enrolled & c in not p1.teaches
inv9 S: all p1 : Professor | all p2 : Professor - p1 | all c : Course | c in p2.enrolled | c in not p1.teaches
inv9 S: all p1 : Professor | all p2 : Professor - p1 | all c : Course | (c in p2.enrolled and c in not p1.teaches)
inv9 S: all p1 : Professor | all p2 : Professor - p1 | all c : p2.enrolled | c in not p1.teaches

---
inv11 S: all c: Course | (all s : Student, g : Grade | p -> g in c.grades implies c in s.enrolled)
inv11 S: all c: Course | (all p : Student, g : Grade | p -> g in c.grades implies c in p.enrolled)
inv11 S: all c: Course | (all p : Person, g : Grade | p -> g in c.grades implies c in p.enrolled)
inv11 S: all c: Course | (all p: Person, g: Grade | p->g in c.grades implies c in p.enrolled)
inv11 S: all c: Course | (all p: Person, g: Grade | p->g in c.grades implies c in p.enrolled)
inv11 S: all c: Course | (all p: Person, g: Grade | p->g in c.grades implies c in p.enrolled)
inv11 S: all c: Course | (all p: Person, g: Grade | p->g in c.grades implies c in p.enrolled)
inv11 S: all c: Course | (all p: Person, g: Grade | p->g in c.grades implies c in p.enrolled)

---
inv13 S: all c : Course | some p : Person | (p in c.grades(max[Grade]) implies (p.projects & c.projects != none)
inv13 S: all c : Course | some p : Person | (p in c.grades(max[Grade])) implies (p.projects & c.projects != none)
inv13 S: all c : Course | some p : Person | (p in c.grades(max[Grade])) implies (p.projects & c.projects != none)
inv13 S: all c : Course | all p : Person | (p in c.grades(max[Grade])) implies (p.projects & c.projects != none)
inv13 S: all c : Course | some p : Person | (p in c.grades(max[Grade]) implies (p.projects & c.projects != none)
inv13 S: all c : Course | some p : Person | (p in c.grades(max[Grade])) implies (p.projects & c.projects != none)
inv13 S: all c : Course | some p : Person | (p in c.grades(max[Grade]))) implies (p.projects & c.projects != none)

---
inv2 S: all p : Professor | p in p.courses
inv2 T: all p : Professor | p in p.Course
inv2 S: all p : Professor | p in p.course
inv2 S: all p : Professor |t:teaches p in p.teaches
inv2 T: all p : Professor, t:teaches | p -> p in teaches
inv2 S: all p : Professor, t : Teaches | p -> p in teaches

---
inv3 S: all c : Courses | all p : Professor | c in p.teaches
inv3 S: all c : Courses | all p : Professor | c in p.teaches
inv3 T: all p : Professor | p.teaches
inv3 T: all p : Professor | p => p.teaches
inv3 S: all c : Courses | c in Professor.teaches

---
inv13 T: all c : Course | some n : c.grades | (all nota : Person.(c.grades) | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)
inv13 S: all c : Course, nota : Person.(c.grades) | some n : c.grades | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)
inv13 S: all c : Course, nota : Person.(c.grades) | (some n : c.grades | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)
inv13 S: all c : Course, nota : Person.(c.grades) | (some grade : c.grades | gte[Person.grade,nota] ) implies (some proj : grade.Grade.projects | proj in c.projects)
inv13 T: all c : Course, nota : Person.(c.grades) | some grade : c.grades | gte[Person.grade,nota]  implies (some proj : grade.Grade.projects | proj in c.projects)
inv13 T: all c : Course | some n : c.grades | (all nota : Person.(c.grades) | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one Course.projects.p
inv4 T: projects in Course one -> Project
inv4 T: Course.projects in Course one -> Project
inv4 T: Course[projects] in Course one -> Project
inv4 T: projects in Course one -> Project
inv4 S: Course/projects in Course one -> Project
inv4 S: this/Course/projects in Course one -> Project
inv4 T: projects in Course one -> Project

---
inv12 T: all c : Course | all s : Student | c in s.enrolled implies lone(s in c.grades.Grade)
inv12 T: all s : Student | all g1,g2 : Grade | all c : s.enrolled | c.g1 and c.g2 implies g1=g2
inv12 T: all s1,s2 : Student | all c : Course | c.grades.s1 and c.grades.s2 implies s1 != s2
inv12 T: all s1,s2 : Student | all c : Course | c.grades.s1 and c.grades.s2 implies s1 != s2
inv12 T: all s1,s2 : Person | all c : Course | c.grades.s1 and c.grades.s2 implies s1 != s2
inv12 T: all g1,g2 : Grade | all c : Course | c.grades.g1 and c.grades.g2 implies g1 != g2

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv4 T: projects.~(projects) in iden
inv4 T: Course.projects.~(Course.projects) = iden
inv4 T: Course.projects*Course.~(Course.projects)*Course = iden
inv4 T: Course.projects->Course.~(Course.projects)->Course = iden
inv4 T: ((Course.projects)->Course).~(Course.projects)->Course = iden

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv4 T: projects.~projects in iden
inv4 T: projects.~projects & iden
inv4 T: projects.~projects in iden
inv4 T: all p : Project | lone projects.p
inv4 T: projects.~projects in iden
inv4 T: projects.~projects in iden	  	Person <: projects
inv4 T: projects.~projects in iden	  	this/Person <: projects
inv4 T: projects.~projects in iden	  	Person <: projects
inv4 T: projects.~projects in iden

---
inv5 T: all p : Project | some (projects.p in Student)
inv5 T: all p : Project | some projects.p in Student
inv5 T: all p : Project | projects.p in Student and some projects.p
inv5 T: all p : Project | projects.p in Student and some (Course <: projects).p
inv5 T: all p : Project | projects.p in Student and some (Person <: projects).p

---
inv9 T: all disj p1, p2 : Professor | p1.teaches != p2.teaches or (grades.Grade).teaches.p2
inv9 T: all disj p1, p2 : Professor | p1.teaches != p2.teaches or (grades.Grade).teaches.p2
inv9 T: all disj p1, p2 : Professor | p1.teaches != p2.teaches or (p1.teaches & enrolled.p2)
inv9 T: all disj p1, p2 : Professor | p1.teaches != p2.teaches or (p1.teaches & enrolled.p2)
inv9 T: all p : Professor | p.teaches.~enrolled & p.teaches.~teaches

---
inv4 T: all p:Project | one (projects.p.Course)
inv4 T: all p:Project | one (projects.Course.p)
inv4 T: all p:Project | one (projects.p)
inv4 T: all p:Project | one (Course.projects.p)
inv4 S: all p:Project | one (projects:Course.p)
inv4 S: all p:Project | one projects:Course.p

---
inv10 T: all c : Course | Student in c.grades.~Person
inv10 T: all c : Course | Student in c.grades.~Grade
inv10 T: all c : Course | Student in c.^grades
inv10 T: all c : Course | Student in c.^grades.Person
inv10 T: all c : Course | all p : Person | p in c.grades implies p in Student

---
inv13 T: all s : Student | all c : Course | s in first.c.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.(c.grades.Grade) implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.c.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.c.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.(c.grades) implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects

---
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.c implies s in c.projects
inv13 T: all s : Student | all c : Course | all g : c.grades | c in s.enrolled and s in first.g implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in last.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s = last.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and last.grades.Grade = s implies s in c.projects

---
inv13 S: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #[c.projects&s1.projects]=1
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #(c.projects&s1.projects)=1
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #c.projects&s1.projects=1
inv13 T: all s : Student | all c : Course | all g : Grade | all p: c.projects&s.projects | (s->g) in max.c.grades implies #p=1
inv13 T: all s : Student | all c : Course | all g : Grade | all p: c.projects&s.projects | (s->g) in max.c.grades implies #p=1

---
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all c : Course | all g : Grade | s in max.c.grades.Grade implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | all g : Grade | g = max.c.grades and s->g in c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | all g : Grade | s->g in c.grades and g = max.c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | s->g in c.grades and g = max.c.grades implies c.projects&s.projects != none

---
inv5 T: all s : Student | Student in Person.projects and some Student in Person.projects
inv5 T: all s : Student | Student in Person.projects and some Student & Person.projects
inv5 T: all s : Student | Student in Person.projects and some Student & Person<:Person.projects
inv5 S: all s : Student | Student in Person.projects and some Student & Person.project<:Person
inv5 T: all s : Student | Student in Person.projects and some Student & Person.projects<:Person
inv5 T: all s : Student | Student in Person.projects and some Student & Person.projects:>Person

---
inv4 S: all p:Project, lone c : Course | p in c.projects
inv4 S: lone p:Project, all c : Course | p in c.projects
inv4 S: lone p:Project, all c : Course | p in c.projects
inv4 S: all p:Project, lone c : Course | p in c.projects
inv4 S: all p:Projects| one c : Course | p in c.projects

---
inv4 S: for all p : Project | one p.projects
inv4 S: for all p : Project | one projects.p
inv4 S: for all p : Project | one (Course.projects).p
inv4 T: all p : Project | one (Course.projects).p
inv4 T: all p : Project | one Course.(projects.p)
inv4 T: all p : Project | one Course.(projects.p)

---
inv4 T: all p:Project | one (projects.p.Course)
inv4 T: all p:Project | one (projects.Course.p)
inv4 T: all p:Project | one (projects.p)
inv4 T: all p:Project | one (Course.projects.p)
inv4 S: all p:Project | one (projects:Course.p)
inv4 S: all p:Project | one projects:Course.p

---
inv14 T: all s : Student , p,p1:Project | (p1!=p and (p+p1) in s.projects) implies (not p.~projects & p1.~projects)
inv14 T: all s : Student , p,p1:Project | (not p.~projects & p1.~projects)
inv14 T: all s : Student , p,p1:Project | (not projects.p & projects.p1)
inv14 T: all s : Student , p,p1:Project | (no projects.p & projects.p1)
inv14 T: all s : Student , p,p1:Project | (p1!=p and (p+p1) in s.projects) implies (no p.~projects & p1.~projects)

---
inv4 S: all p:Project | p in one Course
inv4 S: all p:Project | p in one Course.projects
inv4 T: all p:Project | one Course implies p
inv4 T: all p:Project | one Course implies p.projects
inv4 T: all p:Project | one Course.projects implies p
inv4 T: all p:Project | p.projects in Course.projects
inv4 T: all p:Project | one projects.p
inv4 S: all p:Project | one (Course c: projects).p
inv4 S: all p:Project | one (Course.c: projects).p
inv4 S: all p:Project | one (Course.c:projects).p
inv4 S: all p:Project | one (Course.c.projects).p
inv4 S: all p:Project | one (Course < c:projects).p
inv4 T: all p:Project | one (Course < c.projects).p

---
inv5 T: all p:Person, pj:Project | pj in Student implies p in p.projects
inv5 T: all p:Project | p in Student.projects and p implies Person.projects
inv5 T: all p:Project | p in Student.enrolled and p implies Person.projects
inv5 T: all p:Project | p in Student.p and p implies Person.projects
inv5 T: all p:Project | p in Student.enrolled and p implies Person.projects
inv5 T: all p:Project | p in Student.projects and p implies Person.projects
inv5 T: all p:Project | p implies Student.projects and p in Person.projects
inv5 T: all p:Project | p implies Student.projects
inv5 S: all p:Project | p implies all Student.projects
inv5 T: all p:Project | p implies p.Person in Student.projects
inv5 T: all p:Project | Person.p implies Person.Student
inv5 T: all p:Project | Person.p implies Person in Student

---
inv6 S: all p:Person, c:Course| p in projects.c implies p in pStudent
inv6 T: all p:Person, c:Course| p in projects.c implies p in p.Student
inv6 T: all p:Person, c:Course | p in projects.c implies p in Student
inv6 T: all p:Person, c:Course | p in projects.c implies p in (Person <: projects).p
inv6 T: all p:Person, c:Course | p in projects.c implies p in (Student <: projects).p
inv6 S: all p:Person, c:Course | p.enrolled in (P.enrolled).teaches
inv6 T: all s:Student, p:Project, c:Course | s in projects.p and c in projects.p implies s in enrolled
inv6 T: all s:Student, p:Project, c:Course | s in projects.p and c in c.projects.p implies s in enrolled
inv6 T: all s:Student, p:Project, c:Course | s in projects.p and c in c.projects.p implies s in enrolled.c

---
inv7 T: all s:Student | lone projects.s
inv7 T: all s:Student | lone projects.s in Course
inv7 T: all s:Student | lone s.projects in Course
inv7 T: all s:Student | lone projects.s implies Course
inv7 S: all s:Student | lone projects.s implies Course.person
inv7 S: all s:Student | lone projects.s implies person.Course
inv7 T: all s:Student | lone projects.s in s.Course
inv7 T: all s:Student | lone projects.s in Course.s
inv7 T: all s:Student | lone projects.s

---
inv4 S: all p : Project |
inv4 S: all p : Project |
inv4 S: all p : Project |
inv4 S: all p : Project |
inv4 S: all p : Project |

---
inv13 T: all c : Course | some n : c.grades | (all nota : Person.(c.grades) | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)
inv13 S: all c : Course, nota : Person.(c.grades) | some n : c.grades | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)
inv13 S: all c : Course, nota : Person.(c.grades) | (some n : c.grades | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)
inv13 S: all c : Course, nota : Person.(c.grades) | (some grade : c.grades | gte[Person.grade,nota] ) implies (some proj : grade.Grade.projects | proj in c.projects)
inv13 T: all c : Course, nota : Person.(c.grades) | some grade : c.grades | gte[Person.grade,nota]  implies (some proj : grade.Grade.projects | proj in c.projects)
inv13 T: all c : Course | some n : c.grades | (all nota : Person.(c.grades) | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)

---
inv13 T: all c : Course ,n : c.grades | (all nota : Person.(c.grades) | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)
inv13 T: all c : Course | some n : c.grades | (all nota : Person.(c.grades) | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)
inv13 T: all c : Course ,n : c.grades | (all nota : Person.(c.grades) | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)
inv13 T: all c : Course | larger[Person.c.grades].c.grades in Student
inv13 T: all c : Course | c.grades.larger[Person.c.grades] in Student
inv13 T: all c : Course | larger[Person.c.grades].c.grades in Student
inv13 T: all c : Course | larger[Person.c.grades] in Grade
inv13 S: all c : Course | larger[Person.(c.grades)] in Grade
inv13 S: all c : Course | larger[Person.(c.grades)] in Grade

---
inv4 S: proposes in Project set -> lone Course
inv4 S: propose in Project set -> lone Course
inv4 T: projects in Project set -> lone Course
inv4 T: projects in Course one -> set Project
inv4 T: projects in Course one -> set Project

---
inv4 S: all c:Course | c.projects in lone (c)
inv4 T: all c:Course | lone (c) in c.projects
inv4 T: one c:Course | c in c.projects
inv4 T: one c:Course | c.projects
inv4 S: one c:Course | all p:Person | p.projects in lone(c)

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv1 T: no enrolled & Professor
inv1 T: no enrolled & Professor.enrolled
inv1 T: no enrolled & Professor.teaches
inv1 T: not enrolled & Professor.teaches
inv1 T: no enrolled-Professor.teaches
inv1 T: all p: Professor | enrolled-p.teaches = enrolled
inv1 T: all p: Professor | Person.enrolled-p.teaches = enrolled
inv1 T: all p: Professor | p not in Person.Course

---
inv5 T: all s: Student, c: Course | s->c
inv5 T: all s: Student, c: Course | s->c
inv5 T: all s: Student, c: Course | s->c
inv5 T: all s: Student, c: Course | s->c
inv5 T: all s: Student, c: Course | s->c
inv5 T: all s: Student, c: Course | s->c
inv5 T: all s: Student, c: Course | s->c
inv5 T: all s: Student, c: Course | s->c
inv5 T: all s: Student, c: Course | s->c
inv5 T: all s: Student, c: Course | s->c

---
inv4 S: all p: Projects | one projects.p
inv4 T: all p: Project | one projects.p
inv4 T: all p: Project | one projects.p
inv4 T: all p: Project | one projects.p
inv4 T: all p: Project | one projects.p
inv4 T: all p: Project | one projects.Project
inv4 T: projects.Project in Course

---
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies ((all proj:Project | not stud->c in projects) or (one proj:Project | stud->c in projects))

---
inv7 T: all c : Course | Student.(projects.c <: Course)
inv7 T: all c : Course | lone Student.(projects.c <: Course) <: Person
inv7 T: all c : Course | lone Student.(projects.c <: Course)
inv7 T: all c : Course, s : Student | lone s.(projects.c <: Course)
inv7 T: all c : Course, s : Student | lone (s.(projects.c <: Course)) <: Person
inv7 T: all c : Course, s : Student | lone (s.(c.projects <: Course)) <: Person
inv7 T: all c : Course, s : Student | lone c.(s.projects) <: Person
inv7 T: all c : Course, s : Student | lone c.(s.projects <: Person)
inv7 T: all c : Course, s : Student | lone c.(s.projects <: Person) <: Course
inv7 T: all s : Student | lone projects.(s.projects <: Person) <: Course
inv7 S: all s : Student, all c : Course | lone projects.(c.projects <: Course)
inv7 S: all s : Student, all c : Course | lone projects.(c.projects <: Course) <: Person
inv7 T: all c : Course| lone projects.(c.projects <: Course) <: Person
inv7 T: all c : Course| lone projects.(c.projects <: Course) <: Person
inv7 T: all c : Course| lone (projects.(c.projects <: Course) <: Person)
inv7 T: all c : Course| lone (projects.(c.projects <: Course) <: Person)
inv7 T: all c : Course | one (projects.(c.projects <: Course) <: Person)

---
inv7 S: all s : Student, all c : Course | lone s.projects & c.projects
inv7 S: all s : Student, all c : Course | lone s.projects && c.projects
inv7 T: all s : Student, c : Course | lone s.projects && c.projects
inv7 T: all s : Student, c : Course | lone s.projects and c.projects
inv7 T: all s : Student, c : Course | lone (s.projects and c.projects)

---
inv13 T: all c : Course | last[c.grades].Person in projects.c
inv13 T: all c : Course | last[c.grades].Person in projects.c <: Person
inv13 T: all c : Course | Person.(last[c.grades]) in enrolled.c
inv13 T: all c : Course | (last[c.grades]).Person in enrolled.c
inv13 T: all c : Course | last[c.grades].Person in enrolled.c
inv13 T: all c : Course | Grade.last[c.grades] in enrolled.c
inv13 T: all c : Course | Grade.(last[c.grades]) in enrolled.c
inv13 T: all c : Course | (last[c.grades]).Grade in enrolled.c

---
inv11 T: all s:Student | s.grades in s.enrolled
inv11 T: all s:Student | s.grades in s.enrolled
inv11 S: all s:Student | (s->Grades).grades in s.enrolled
inv11 T: all s:Student | (s->Grade).grades in s.enrolled
inv11 T: all s:Student | grades in s.enrolled
inv11 T: all s:Student | grades.s in s.enrolled
inv11 S: all s:Student | Grades.grade in s.enrolled
inv11 S: all s:Student | Grade.grade in s.enrolled
inv11 T: all s:Student | Grade.grades in s.enrolled
inv11 T: all s:Student | grades in s.enrolled
inv11 T: all s:Student | s.grades in s.enrolled
inv11 T: all s:Student | Course.grades in s.enrolled
inv11 T: all s:Student | grades.(s->Grade) in s.enrolled
inv11 T: all s:Student | grades.s in s.enrolled

---
inv11 T: all s:Student | s.Grade in s.enrolled
inv11 S: all s:Student | (s -> Grades) in s.enrolled
inv11 T: all s:Student | (s -> Grade) in s.enrolled
inv11 T: all s:Student | grades.(s -> Grade) in s.enrolled
inv11 T: all s:Student | s.Grade in s.enrolled
inv11 T: all s:Student | s. Grade in s.enrolled
inv11 T: all s:Student | grades.(Person -> Grade)

---
inv11 T: all c : Course , s : c.grades.Grade | s.enrolled.c
inv11 S: all c : Course | some s : c.grades.Grade implies s.enrolled.c
inv11 S: all c : Course | some c.grades.Grade implies s.enrolled.c
inv11 T: all c : Course | some c.grades.Grade implies enrolled.c
inv11 T: all c : Course , p : Person | p in c.grades.Grade implies p.enrolled.c
inv11 T: all c : Course , p : Student | p in c.grades.Grade implies p.enrolled.c
inv11 T: all c : Course , p : Student | p in c.grades.Grade implies p.enrolled.c
inv11 T: all c : Course , p : Person | p in c.grades.Grade implies p.enrolled.c

---
inv12 S: all s : Student , c : s.enrolled| lone c.grades.grade.s
inv12 T: all s : Student , c : s.enrolled| lone c.grades.Grade.s
inv12 T: all s : Student , c : s.enrolled | lone c.grades.Grade.s
inv12 T: all s : Student , c : Grade | lone c.grades.Grade.s
inv12 T: all s : Student , c : Course | lone c.grades.Grade.s
inv12 T: all s : Student , c : Course | lone c.grades.Person.s

---
inv12 T: all s : Student , c : Course | c.enrolled.Grade.s
inv12 T: all s : Student , c : Course | c.enrolled.Grade
inv12 T: all s : Student , c : Course | c.grades.Grade
inv12 T: all s : Student , c : Course | c.grades.Grade.s
inv12 T: all s : Student , c : Course | lone c.grades.Grade.s
inv12 T: all s : Student , c : Course | lone c.grades.Grade.s
inv12 T: all s : Student , c : Course | lone c.grades.Grade.s

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv15 T: all disj s, s1 : Student, p : s.projects & s1.projects | s.((Course <: projects).p).grades = next[s.((Course <: projects).p).grades]
inv15 T: all disj s, s1 : Student, p : s.projects & s1.projects | one s.((Course <: projects).p).grades
inv15 T: all s, s1 : Student, p : s.projects & s1.projects | one s.((Course <: projects).p).grades
inv15 T: all disj s, s1 : Student, p : s.projects & s1.projects | one s.((Course <: projects).p).grades
inv15 S: all disj s, s1 : Student | p : s.projects & s1.projects | one s.((Course <: projects).p).grades
inv15 T: all disj s, s1 : Student | all p : s.projects & s1.projects | one s.((Course <: projects).p).grades
inv15 T: all disj s, s1 : Student, p : s.projects & s1.projects | one (s.((Course <: projects).p)).grades
inv15 T: all disj s, s1 : Student, p : s.projects & s1.projects | one s.((Course <: projects).p).grades
inv15 T: all disj s, s1 : Person, p : s.projects & s1.projects | one s.((Course <: projects).p).grades
inv15 T: all disj s, s1 : Student, p : s.projects & s1.projects | one s.((Course <: projects).p).grades
inv15 T: all disj s, s1 : Student, p : s.projects & s1.projects | one s.(projects.p <: Course).grades

---
inv4 T: Project.projects
inv4 T: Course.projects
inv4 T: projects.Project
inv4 T: all p:Project | one Course.p
inv4 T: all p:Project | one projects.p

---
inv4 S: proposes in Project set -> lone Course
inv4 S: propose in Project set -> lone Course
inv4 T: projects in Project set -> lone Course
inv4 T: projects in Course one -> set Project
inv4 T: projects in Course one -> set Project

---
inv13 S: grades.max[Grade] in c.projects.~projects :> student
inv13 T: grades.max[Grade] in Course <: projects.~projects :> Student
inv13 T: grades.max[Grade] in Course <: projects.~projects :> Student
inv13 T: grades.max[Grade] in (Course <: (projects.~projects) :> Student)
inv13 T: grades.max[Grade] in (Course <: projects).(~projects :> Student)
inv13 T: (grades.max[Grade]) in (Course <: projects).(~projects :> Student)
inv13 T: (grades.max[Grade]) in (Course <: projects).(~projects :> Student)

---
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one (projects<:Course).p
inv4 T: all p : Project | one (projects:>Course).p
inv4 T: all p : Project | one (Course:>projects).p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 S: all p : Project | one (projects.p

---
inv6 S: all s: Student, p: Project | one c: projects.p | s in projects.p implies s in enrolled.c
inv6 S: all s: Student, p: Project | one c: Course | s in projects.p implies s in enrolled.c
inv6 S: all s: Student, p: Project | one c: Course | s in projects.p
inv6 S: all s: Student, p: Project | all c: Course | s in projects.p
inv6 S: all s: Student, p: Project | some c: Course | s in projects.p

---
inv12 S: all s.Student | s.enrolled.grades
inv12 T: all s:Student | s.enrolled.grades
inv12 T: all s:Student | s.enrolled.grades.~s
inv12 T: all s:Student | s.enrolled.grades.s
inv12 T: all s:Student | s.(s.enrolled.grades)
inv12 T: all s:Student, c:Course | c.grades
inv12 T: all s:Student, c:Course | s.(c.grades)

---
inv10 T: all g:Grade | enrolled.grades.g&Student
inv10 T: all g:Grade | enrolled.grades.g&Student
inv10 T: all g:Grade | enrolled.grades.Person.g&Student
inv10 T: all c:Course | c.grades
inv10 T: all c:Course | c.grades.Person
inv10 S: all c:Course | c.grades.person
inv10 T: all c:Course, p:Person | c.grades.p
inv10 T: all p1 : Person | all c1 : Course | all g1 : Grade|	  	(c1->p1->g1 in grades) implies (p1 in Student)	  	all c:Course, p:Person | c.grades.p

---
inv10 T: all c:Course | grades.Grade.c&Student
inv10 T: all c:Course | grades.Grade.c&Student
inv10 T: all c:Course | grades.Person&Student
inv10 T: all c:Course | grades.Person.c&Student
inv10 T: all c:Course | c.grades.Grade&Student
inv10 T: all c:Course | c.grades.Grade&Student

---
inv11 T: all c:Course, s:Person, g:Grade | c.~grades in s.enrolled
inv11 T: all c:Course, s:Person, g:Grade | g.~grades in s.enrolled
inv11 T: all c:Course, s:Person, g:Grade | (s.g).~grades in s.enrolled
inv11 T: all c:Course, s:Person, g:Grade | (s.c).~grades in s.enrolled
inv11 T: all c:Course, s:Person, g:Grade | (c.g).~grades in s.enrolled
inv11 T: all c:Course, s:Person, g:Grade | (s->g).~grades in s.enrolled
inv11 T: all c:Course, s:Person, g:Grade | (s->g).~grades in s.enrolled

---
inv7 T: all s:Student, c:Course | lone p:Project | c in s.enrolled and p in c.projects implies p in s.enrolled.c.projects
inv7 S: all s:Student, c:Course | lone p:Project | c in s.enrolled and p in c.projects implies p in s.enrolled
inv7 S: all s:Student, c:Course | lone p:Project | c in s.enrolled and p in c.projects implies p in c.projects
inv7 S: all s:Student, c:Course | lone p:Project | p in c.projects and p in s.projects implies c in s.enrolled
inv7 S: all s:Student, c:Course | lone p:Project | p in c.projects and p in s.projects implies c in s.enrolled

---
inv9 S: disj t1, t2 : Professor | t1->t2 not in teaches.~teaches
inv9 S: disj t1, t2 : Professor | t1->t2 not in teaches.~teaches
inv9 S: disj t1, t2 : Person | t1->t2 not in teaches.~teaches
inv9 S: disj t1, t2 : Professor | t1->t2 not in teaches.~teaches
inv9 S: disj t1, t2 : Professor | t1->t2 not in teaches.~teaches
inv9 S: disj a, b : Professor | t1->t2 not in teaches.~teaches
inv9 S: all t2 : Professor | t1->t2 not in teaches.~teaches
inv9 S: disj t1, t2 : Professor | t1->t2 not in teaches.~teaches

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv4 S: all p : Projects | one proposes.p
inv4 S: all p : Project | one proposes.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | some projects.p

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv4 S: all p: Project | one Courses.p
inv4 T: all p: Project | one Course.p
inv4 S: all p: Project | one Course.project.p
inv4 T: all p: Project | one Course.projects.p
inv4 T: all p: Project | one projects.p
inv4 T: all p: Project | one projects.p
inv4 S: all p: Project | one Courses: projects.p
inv4 S: all p: Project | one (Courses:projects).p
inv4 S: all p: Project | one (Courses : projects).p
inv4 S: all p: Project | one (Courses<: projects).p

---
inv7 S: all c: Component | some d : Dangerous | c->d in parts implies c in Dangerous
inv7 S: all c: Component | some d : Dangerous | c->d in parts implies c in Dangerous
inv5 S: (no ((Person - Student) <: projects) Person.projects = Projects
inv5 S: no ((Person - Student) <: projects) Person.projects = Projects
inv5 S: no ((Person - Student) <: projects) Person.projects = Projects
inv5 T: no ((Person - Student) <: projects) Person.projects = projects
inv5 T: Person.projects - (Person.Student).projects = Project

---
inv9 S: all p : Professor | p->x in teaches implies x is not Professor
inv9 T: all p : Professor, x : Person | p->x in teaches implies x is not Professor
inv9 T: all p : Professor, x : Person | p->x in teaches implies x is not Professor
inv9 T: all p : Professor, x : Person | p->x in teaches implies x is not Professor
inv9 T: all p : Professor, x : Person, c : Course | p->c in teaches and x->c in enrolled implies x is not Professor
inv9 T: all p : Professor, x : Person, c : Course | p->c in teaches and x->c in enrolled implies x is not Professor
inv9 T: all p : Professor, x : Person, c : Course | p->c in teaches and x->c in enrolled implies x is not Professor
inv9 T: all p : Professor, x : Person, c : Course | p->c in teaches implies x is not Professor

---
inv5 T: all x : Person | x in Person <: projects.Course => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x in (Person <: projects.Course) => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x in (Person :> projects.Course) => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x in projects.Course => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x in Person <: projects.Course => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x->Course in Person <: projects => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x->Course in projects => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x->Course in projects => x in Student	  	all p : Project | some Person <: projects.p

---
inv4 T: all p : Project | lone Course.p
inv4 T: all p : Project, c : Course | lone c.p
inv4 T: all p : Project, c : Course | lone c.projects.p
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone Course.projects.p
inv4 S: all p : Project | one c : Courde | lone c.projects.p
inv4 T: all p : Project | one c : Course | lone c.projects.p

---
inv5 T: all s : Person, p : Project | some s.projects.p and no ( s & Student ) implies p not in s.projects
inv5 T: all s : Person, p : Project | some s.projects.p
inv5 T: all s : Person, p : Project | some projects.p
inv5 T: all s : Person, p : Project | some p in s.projects
inv5 T: all s : Person, p : Project | some (p in s.projects)

---
inv5 T: all s : Person, p : Project | ( no ( s & Student ) implies p not in s.projects ) and some s.projects.p
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects | some s.projects.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and some s.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p some s.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects

---
inv6 S: all s : Student, p : Projects, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.projects
inv6 S: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) implies no (s.projects & p)

---
inv7 S: all s : Student, p : Project, c : Course | no no (p & c.projects) implies p in s.projects
inv7 T: all s : Student, p : Project, c : Course | lone (s.projects & c.projects) iff (s.enrolled & c)
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.^p
inv7 T: all s : Student, p : Project, c : Course | lone s.^projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Student.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Person.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone c.projects.p

---
inv9 S: all p1,p2 : Professor, c : Course | c & p1.teaches and c & p2.teaches implies
inv9 T: all p1,p2 : Person, c : Course | ( c & p1.teaches & p2.teaches ) implies no (p2.enrolled & c) or no (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | no ( c & p1.teaches & p2.teaches ) implies (p2.enrolled & c) or  (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c and p2.teaches.c

---
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies ((all proj:Project | not stud->c in projects) or (one proj:Project | stud->c in projects))

---
inv10 T: all c : Course | Student in c.grades.~Person
inv10 T: all c : Course | Student in c.grades.~Grade
inv10 T: all c : Course | Student in c.^grades
inv10 T: all c : Course | Student in c.^grades.Person
inv10 T: all c : Course | all p : Person | p in c.grades implies p in Student

---
inv13 T: all s : Student | all c : Course | s in first.c.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.(c.grades.Grade) implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.c.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.c.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.(c.grades) implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects

---
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.c implies s in c.projects
inv13 T: all s : Student | all c : Course | all g : c.grades | c in s.enrolled and s in first.g implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in last.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s = last.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and last.grades.Grade = s implies s in c.projects

---
inv13 S: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #[c.projects&s1.projects]=1
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #(c.projects&s1.projects)=1
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #c.projects&s1.projects=1
inv13 T: all s : Student | all c : Course | all g : Grade | all p: c.projects&s.projects | (s->g) in max.c.grades implies #p=1
inv13 T: all s : Student | all c : Course | all g : Grade | all p: c.projects&s.projects | (s->g) in max.c.grades implies #p=1

---
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all c : Course | all g : Grade | s in max.c.grades.Grade implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | all g : Grade | g = max.c.grades and s->g in c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | all g : Grade | s->g in c.grades and g = max.c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | s->g in c.grades and g = max.c.grades implies c.projects&s.projects != none

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv3 S: all x: Course, some y: Teacher | x in y.teaches
inv3 S: all x: Course, some y: Teacher | x in y.teaches
inv3 S: all x: Course some y: Teacher | x in y.teaches
inv3 S: all x: Course some y: Person | x in y.teaches
inv3 S: all x: Course some y: Person | y in Teacher and x in y.teaches
inv3 S: all x: Course some y: Person | y in Professor and x in y.teaches
inv3 S: all x: Course, some y: Person | y in Professor and x in y.teaches

---
inv4 T: all p: Project | one projects.p
inv4 S: all p: Project | one (Course).project.p
inv4 T: all p: Project | one (Course).projects.p
inv4 T: all p: Project | one c: Course | p->c in projects
inv4 S: all p: Project | one c: Course | p->c in course

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv4 T: all p : projects | one p & Courses.p
inv4 T: all p : projects | one p & Courses.p
inv4 S: all p : Courses.projects | one p & Courses.p
inv4 S: all p : Course.projects | one p & Courses.p
inv4 T: all p : Course.projects | one p & Course.p
inv4 T: all p : Project | one p & Course.p

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies ((all proj:Project | not stud->c in projects) or (one proj:Project | stud->c in projects))

---
inv14 S: Person<:Projects
inv14 T: Person<:projects
inv14 S: s1.(Person<:projects)
inv14 S: all s1:User | s1.(Person<:projects)
inv14 T: all s1:Student | s1.(Person<:projects)

---
inv10 T: all c : Course | Student in c.grades.~Person
inv10 T: all c : Course | Student in c.grades.~Grade
inv10 T: all c : Course | Student in c.^grades
inv10 T: all c : Course | Student in c.^grades.Person
inv10 T: all c : Course | all p : Person | p in c.grades implies p in Student

---
inv13 T: all s : Student | all c : Course | s in first.c.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.(c.grades.Grade) implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.c.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.c.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.(c.grades) implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects

---
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.c implies s in c.projects
inv13 T: all s : Student | all c : Course | all g : c.grades | c in s.enrolled and s in first.g implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in last.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s = last.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and last.grades.Grade = s implies s in c.projects

---
inv13 S: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #[c.projects&s1.projects]=1
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #(c.projects&s1.projects)=1
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #c.projects&s1.projects=1
inv13 T: all s : Student | all c : Course | all g : Grade | all p: c.projects&s.projects | (s->g) in max.c.grades implies #p=1
inv13 T: all s : Student | all c : Course | all g : Grade | all p: c.projects&s.projects | (s->g) in max.c.grades implies #p=1

---
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all c : Course | all g : Grade | s in max.c.grades.Grade implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | all g : Grade | g = max.c.grades and s->g in c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | all g : Grade | s->g in c.grades and g = max.c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | s->g in c.grades and g = max.c.grades implies c.projects&s.projects != none

---
inv4 T: all p : Project | lone Course.p
inv4 T: all p : Project, c : Course | lone c.p
inv4 T: all p : Project, c : Course | lone c.projects.p
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone Course.projects.p
inv4 S: all p : Project | one c : Courde | lone c.projects.p
inv4 T: all p : Project | one c : Course | lone c.projects.p

---
inv5 T: all s : Person, p : Project | some s.projects.p and no ( s & Student ) implies p not in s.projects
inv5 T: all s : Person, p : Project | some s.projects.p
inv5 T: all s : Person, p : Project | some projects.p
inv5 T: all s : Person, p : Project | some p in s.projects
inv5 T: all s : Person, p : Project | some (p in s.projects)

---
inv5 T: all s : Person, p : Project | ( no ( s & Student ) implies p not in s.projects ) and some s.projects.p
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects | some s.projects.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and some s.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p some s.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects

---
inv6 S: all s : Student, p : Projects, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.projects
inv6 S: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) implies no (s.projects & p)

---
inv7 S: all s : Student, p : Project, c : Course | no no (p & c.projects) implies p in s.projects
inv7 T: all s : Student, p : Project, c : Course | lone (s.projects & c.projects) iff (s.enrolled & c)
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.^p
inv7 T: all s : Student, p : Project, c : Course | lone s.^projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Student.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Person.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone c.projects.p

---
inv7 T: all s : Student, c : Course | lone p : Project | p in s.projects iff some (c in s.enrolled) and  some (p & c.projects)
inv7 T: all s : Student, c : Course | lone p : Project | lone p in s.projects
inv7 S: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some (c & s.enrolled) and (p & c.course) implies p_act in s.projects
inv7 T: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some (c & s.enrolled) and (p & c.projects) implies p_act in s.projects
inv7 T: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some ((c & s.enrolled) and (p & c.projects)) implies p_act in s.projects

---
inv9 S: all p1,p2 : Professor, c : Course | c & p1.teaches and c & p2.teaches implies
inv9 T: all p1,p2 : Person, c : Course | ( c & p1.teaches & p2.teaches ) implies no (p2.enrolled & c) or no (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | no ( c & p1.teaches & p2.teaches ) implies (p2.enrolled & c) or  (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c and p2.teaches.c

---
inv10 S: all p : Person, c : Course | no ( p & Student ) implies p not in c.grade
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies no c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies not c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not c.p
inv10 T: all p : Person, c : Course | no ( p & Student ) implies no c.p
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.grades
inv10 T: all p : Person - Student, c : Course | no c.p

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one Course.projects.p
inv4 T: projects in Course one -> Project
inv4 T: Course.projects in Course one -> Project
inv4 T: Course[projects] in Course one -> Project
inv4 T: projects in Course one -> Project
inv4 S: Course/projects in Course one -> Project
inv4 S: this/Course/projects in Course one -> Project
inv4 T: projects in Course one -> Project

---
inv13 T: all c : Course, s : c.grades.Grade | not (some e : c.grades.Grade | c.grades.e > s.grades.s) implies c in (Course <: projects).(s.projects)
inv13 T: all c : Course, s : c.grades.Grade | not (some e : c.grades.Grade | c.grades.e > s.grades.s) implies c in (Course <: projects).(s.projects)
inv13 T: all c : Course, s : enrolled.c | not (some e : enrolled.c | c.grades.e > s.grades.s) implies c in (Course <: projects).(s.projects)
inv13 S: all c : Course, s : enrolled.c | (s in c.grades.Grade) and not (some e : enrolled.c | e in c.grades.Grade and c.grades.e > s.grades.s)) implies c in (Course <: projects).(s.projects)
inv13 S: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and c.grades.e > c.grades.s)) implies c in (Course <: projects).(s.projects)
inv13 S: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : univ | e in c.grades.Grade and c.grades.e > c.grades.s)) implies c in (Course <: projects).(s.projects)
inv13 T: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and c.grades.e > c.grades.s) implies c in (Course <: projects).(s.projects)
inv13 T: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and c.grades.e >= c.grades.s) implies c in (Course <: projects).(s.projects)
inv13 S: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and gt[c.grades.e,c.grades.s] implies c in (Course <: projects).(s.projects)
inv13 T: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and gt[c.grades.e,c.grades.s]) implies c in (Course <: projects).(s.projects)

---
inv11 T: all c : Course , s : c.grades.Grade | s.enrolled.c
inv11 S: all c : Course | some s : c.grades.Grade implies s.enrolled.c
inv11 S: all c : Course | some c.grades.Grade implies s.enrolled.c
inv11 T: all c : Course | some c.grades.Grade implies enrolled.c
inv11 T: all c : Course , p : Person | p in c.grades.Grade implies p.enrolled.c
inv11 T: all c : Course , p : Student | p in c.grades.Grade implies p.enrolled.c
inv11 T: all c : Course , p : Student | p in c.grades.Grade implies p.enrolled.c
inv11 T: all c : Course , p : Person | p in c.grades.Grade implies p.enrolled.c

---
inv12 S: all s : Student , c : s.enrolled| lone c.grades.grade.s
inv12 T: all s : Student , c : s.enrolled| lone c.grades.Grade.s
inv12 T: all s : Student , c : s.enrolled | lone c.grades.Grade.s
inv12 T: all s : Student , c : Grade | lone c.grades.Grade.s
inv12 T: all s : Student , c : Course | lone c.grades.Grade.s
inv12 T: all s : Student , c : Course | lone c.grades.Person.s

---
inv3 T: all c : Course | some Professor.teaches.c
inv3 T: all c : Course | some (Professor.teaches).c
inv3 T: all c : Course | some Professor.(teaches.c)
inv3 T: all c : Course | some Professor.teaches.c
inv3 S: all c : Course, some p : Professor | p.teaches.c
inv3 T: all c : Course | teaches.c

---
inv4 S: all p : Projects | one projects.p
inv4 S: all p : Projects | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one c : Course | c.projects.p
inv4 S: all p : Project | (Course c : projects).p
inv4 T: all p : Project | (Course <: projects).p
inv4 T: all p : Project | (Course<:projects).p

---
inv10 T: all c : Course | Student in c.grades.~Person
inv10 T: all c : Course | Student in c.grades.~Grade
inv10 T: all c : Course | Student in c.^grades
inv10 T: all c : Course | Student in c.^grades.Person
inv10 T: all c : Course | all p : Person | p in c.grades implies p in Student

---
inv13 T: all s : Student | all c : Course | s in first.c.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.(c.grades.Grade) implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.c.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.c.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.(c.grades) implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects

---
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.c implies s in c.projects
inv13 T: all s : Student | all c : Course | all g : c.grades | c in s.enrolled and s in first.g implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in last.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s = last.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and last.grades.Grade = s implies s in c.projects

---
inv13 S: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #[c.projects&s1.projects]=1
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #(c.projects&s1.projects)=1
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #c.projects&s1.projects=1
inv13 T: all s : Student | all c : Course | all g : Grade | all p: c.projects&s.projects | (s->g) in max.c.grades implies #p=1
inv13 T: all s : Student | all c : Course | all g : Grade | all p: c.projects&s.projects | (s->g) in max.c.grades implies #p=1

---
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all c : Course | all g : Grade | s in max.c.grades.Grade implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | all g : Grade | g = max.c.grades and s->g in c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | all g : Grade | s->g in c.grades and g = max.c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | s->g in c.grades and g = max.c.grades implies c.projects&s.projects != none

---
inv5 T: all s : Student | Student in Person.projects and some Student in Person.projects
inv5 T: all s : Student | Student in Person.projects and some Student & Person.projects
inv5 T: all s : Student | Student in Person.projects and some Student & Person<:Person.projects
inv5 S: all s : Student | Student in Person.projects and some Student & Person.project<:Person
inv5 T: all s : Student | Student in Person.projects and some Student & Person.projects<:Person
inv5 T: all s : Student | Student in Person.projects and some Student & Person.projects:>Person

---
inv9 S: all p1, p2 : Professor, c1, c2 : Course | (c1 in p1.teaches and c1 in p2.teaches) implies (c2 in p1teaches implies c2 not in p2.enrolled)
inv9 S: all p1, p2 : Professor, c1, c2 : Course | (c1 in p1.teaches and c1 in p2.teaches) implies (c2 in p1.teaches implies c2 not in p2.enrolled)
inv9 S: all p1, p2 : Professor, c1, c2 : Course | p1 != p2 and c1 in p1.teaches and c1 in p2.teaches implies c2 in p1.teaches implies c2 not in p2.enrolled
inv9 S: all p1, p2 : Professor, c1, c2 : Course | p1 != p2 and c1 in p1.teaches and c1 in p2.teaches and c2 in p1.teaches implies c2 not in p2.enrolled
inv9 S: all p1, p2 : Professor, c1, c2 : Course | c1 in p1.teaches and c1 in p2.teaches and p1 != p2 and c2 in p1.teaches implies c2 not in p2.enrolled

---
inv5 T: all p : Project | some (p.~(Person <: projects) in Student)
inv5 T: all p : Project | some p.~(Person <: projects) in Student
inv5 T: all p : Project | p.~(some Person <: projects) in Student
inv5 T: all p : Project | (some p.~(Person <: projects)) in Student
inv5 T: all p : Project | p.~(Person <: projects) in Student	    some projects.Project
inv5 T: all p : Project | p.~(Person <: projects) in Student	    some projects.Project

---
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone Course.projects.p
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone projects.p

---
inv7 T: all s : Student, c : Course | lone c.projects.s
inv7 T: all s : Student, c : Course | lone s.enrolled.projects.s
inv7 T: all s : Student, c : Course | lone c.projects.s
inv7 T: all s : Student, c : Course | lone c.projects.~(Person<:projects).s
inv7 T: all s : Student, c : Course | lone c.projects.~(Person<:projects).s
inv7 T: all s : Student, c : Course | lone c.(Course<:projects).~(Person<:projects).s

---
inv5 T: all c: Course | all s: Person | some g: Grade | c->s->g in grades => s in Student	  	Course<:projects in Course
inv5 S: all c: Course | all s: Person | all g: Grade | c->s->g in grades => s in Student	  		all c: Course | all s: Person | some g: Grade | c->project => some(c->s->g in grades)
inv5 S: all c: Course | all s: Person | all g: Grade | c->s->g in grades => s in Student	  		all c: Course | all s: Person | some g: Grade | all p:Project | c->p in project => some(c->s->g in grades)
inv5 T: all c: Course | all s: Person | all g: Grade | c->s->g in grades => s in Student	  		all c: Course | all s: Person | some g: Grade | all p:Project | c->p in Course<:projects => some(c->s->g in grades)
inv5 T: all c: Course | all s: Person | all g: Grade | c->s->g in grades => s in Student	  		all c: Course | all s: Person | some g: Grade | all p:Project | c->p in Course<:projects => some(c->s->g in grades)
inv5 T: projects.Project in Student

---
inv3 T: all c : Course | some Professor.teaches.c
inv3 T: all c : Course | some (Professor.teaches).c
inv3 T: all c : Course | some Professor.(teaches.c)
inv3 T: all c : Course | some Professor.teaches.c
inv3 S: all c : Course, some p : Professor | p.teaches.c
inv3 T: all c : Course | teaches.c

---
inv4 S: all p : Projects | one projects.p
inv4 S: all p : Projects | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one c : Course | c.projects.p
inv4 S: all p : Project | (Course c : projects).p
inv4 T: all p : Project | (Course <: projects).p
inv4 T: all p : Project | (Course<:projects).p

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv5 T: all x : Person | x in Person <: projects.Course => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x in (Person <: projects.Course) => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x in (Person :> projects.Course) => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x in projects.Course => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x in Person <: projects.Course => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x->Course in Person <: projects => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x->Course in projects => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x->Course in projects => x in Student	  	all p : Project | some Person <: projects.p

---
inv13 S: all s : Student, c : Course, g : Grade | g = max[s.(c.grades)] => one (s.projects & c.projects) s.projects)
inv13 S: all s : Student, c : Course, g : Grade | max[s.(c.grades)] => one (s.projects & c.projects) s.projects)
inv13 S: all s : Student, c : Course, g : Grade | max[s.(c.grades)] => one (s.projects & c.projects) s.projects)
inv13 S: all s : Student, c : Course, g : Grade | s = c.grades.max[Student.(c.grades)] => one (s.projects & c.projects) s.projects)
inv13 T: all s : Student, c : Course, g : Grade | s = c.grades.max[Student.(c.grades)] => one (s.projects & c.projects)
inv13 T: all s : Student, c : Course | s = c.grades.max[Student.(c.grades)] => one (s.projects & c.projects)

---
inv3 T: all c : Course, p : Professor | some p -> c in teaches
inv3 T: all c : Course, p : Professor | some p.teaches.c
inv3 T: all c : Course, p : Professor | some c.~(Professor<:Course)
inv3 T: all p : Professor | some p.~(Professor<:Course)
inv3 T: all p : Person | p in Professor implies some p.~(Professor<:Course)
inv3 T: all p : Person | p in Professor implies some p.~(Person<:Course)
inv3 T: all p : Professor | some p.~(Professor<:Course)
inv3 T: all p : Professor | some p in p.~(Professor<:Course)
inv3 T: all c : Course, p : Person | (p -> c in teaches) implies some p in Professor
inv3 T: all p : Professor | some p in p.~(Professor<:Course)
inv3 T: all p : Professor | some p in p.~(Professor<:Course)
inv3 T: all p : Professor | some p in p.~(Person<:Course)
inv3 T: all p : Professor | some p in p.~(Person<:Course) implies p in Professor
inv3 S: p.~(Person<:Course) implies some p in Professor
inv3 T: all p : Person | p.~(Person<:Course) implies some p in Professor

---
inv10 S: all p : Person, c : Course | c->o in grades implies p in Student
inv10 T: all p : Person, c : Course | c->p in grades implies p in Student
inv10 S: all p : Person, c : Course | c->p.Grades in grades implies p in Student
inv10 T: all p : Person, c : Course | c->p.Grade in grades implies p in Student
inv10 T: all p : Person, c : Course | c->Grade.p in grades implies p in Student

---
inv4 T: all p : Project | one (projects.p & Course.projects)
inv4 T: all p : Project | one (Course <: projects.p & Course.projects)
inv4 T: all p : Project | one ((Course <: projects.p) & Course.projects)
inv4 T: all p : Project | one ( (Course <: projects).p & Course.projects )
inv4 T: all p : Project | one ( (Course<:projects).p & Course.projects )
inv4 T: all p : Project | one ( (Course <: projects).p & Course.projects )
inv4 T: all p : Project | one ( (Course <: projects).p & Course.projects)

---
inv4 T: all x:Project | (one Course)->x in projects
inv4 T: all x:Project | one Course->x in projects
inv4 T: all x:Project | one Course in projects.x
inv4 T: all x:Project | one projects.x
inv4 T: all x:Project | one projects.x
inv4 S: one projects.x

---
inv4 T: all p:Project | one projects.p
inv4 T: all p:Project|one c:Course | one projects.p
inv4 T: all p:Project|one c:Course | one c.projects.p
inv4 T: all p:Project|one c:Course | one projects.p
inv4 T: all p:Project, c:Course | one projects.p
inv4 T: all p:Project, c:Course | one projects.p.c
inv4 T: all p:Project, c:Course | one projects.c
inv4 T: all c:Course | one projects.c
inv4 T: all c:Course, p:Project | one (c.projects & projects.p)
inv4 T: all p:Project | one (Course.projects & projects.p)
inv4 T: all p:Project | one (Course.projects & Course.projects.p)
inv4 S: all p:Project | one Course| p in c.projects
inv4 T: all p:Project | one (Course.projects & Course.projects.p)

---
inv6 S: all s: Students| some p: Project | s->p in projects implies (some c: Course| p->c in projects and s->c in enrolled)
inv6 T: all s: Student| some p: Project | s->p in projects implies (some c: Course| p->c in projects and s->c in enrolled)
inv6 T: all s: Student| some p: Project | s->p in projects implies (some c: Course| p->c in Course <:projects and s->c in enrolled)
inv6 T: all s: Student| some p: Project | s->p in projects implies (some c: Course| p->c in (Course <:projects) and s->c in enrolled)
inv6 T: all s: Student| some p: Project | s->p in projects implies (some c: Course| p->c in (Course <: projects) and s->c in enrolled)
inv6 T: all s: Student| some p: Project | s->p in (Person <: projects) implies (some c: Course| p->c in (Course <: projects) and s->c in enrolled)

---
inv6 T: all s: Student| some p: Project | s->p in (Person <: projects) implies (some c: Course| p->c in (Course <: projects) and s->c in enrolled)
inv6 T: all s: Student| some p: Project | s->p in (Person <: projects) implies (some c: Course| p->c in Course <: projects and s->c in enrolled)
inv6 T: all s: Student| some p: Project | s->p in Person <: projects implies (some c: Course| p->c in Course <: projects and s->c in enrolled)
inv6 T: all s: Student| some p: Project | s->p in Course <: projects implies (some c: Course| p->c in Course <: projects and s->c in enrolled)
inv6 T: all s: Student| some p: Project | s->p in Person <: projects implies (some c: Course| Course <: p->c in  projects and s->c in enrolled)

---
inv7 S: all s:Students | some pr1, pr2: Project| one c: Course | s->pr1 in Person <: projects and s->pr2 in Person <: projects and pr1->c in projects and pr2->c in projects implies pr1 = pr2
inv7 T: all s:Student | some pr1, pr2: Project| one c: Course | s->pr1 in Person <: projects and s->pr2 in Person <: projects and pr1->c in projects and pr2->c in projects implies pr1 = pr2
inv7 T: all s:Student | some pr1, pr2: Project| one c: Course | s->pr1 in Person <: projects and s->pr2 in Person <: projects and pr1->c in this/Course <: projects  and pr2->c in projects implies pr1 = pr2
inv7 T: all s:Student | some pr1, pr2: Project| one c: Course | s->pr1 in Person <: projects and s->pr2 in Person <: projects and pr1->c in this/Course <: projects  and pr2->c in this/Course <: projects  implies pr1 = pr2
inv7 T: all s:Student | some pr1, pr2: Project| one c: Course | s->pr1 in Person <: projects and s->pr2 in Person <: projects and pr1->c in Course <: projects  and pr2->c in Course <: projects  implies pr1 = pr2
inv7 T: all s:Student | some pr1, pr2: Project| one c: Course | s->pr1 in Person <: projects and s->pr2 in Person <: projects and pr1->c in (Course <: projects)  and pr2->c in Course <: projects  implies pr1 = pr2

---
inv1 T: all p : Person | p.enrolled implies p is Student
inv1 T: all p : Person | p.enrolled implies p in Student
inv1 T: all p : Person | p.enrolled not none implies p in Student
inv1 T: all p : Person |p.enrolled iff p in Student
inv1 T: all p : Person | p.enrolled iff p in Student
inv1 T: all p : Person | p.enrolled iff p in Student
inv1 T: all p : Person | p.enrolled iff p in Student

---
inv4 S: all c1, c2 : Course | no (c1.projects & c2.projects)
inv4 S: all c1, c2 : Course | no (c1.projects & c2.projects)
inv4 S: all c1, c2 : Course | no c1.projects & c2.projects
inv4 S: all disj c1, c2 : Course | no c1.projects & c2.projects
inv4 S: all disj c1, c2 : Course | lone c1.projects & c2.projects
inv4 S: all disj c1, c2 : Course | no c1.projects & c2.projects

---
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone Course.projects.p
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone projects.p

---
inv6 T: projects
inv6 T: projects
inv6 T: projects
inv6 T: projects
inv6 T: projects

---
inv10 T: all c : Course | Grade.(Course.(c.grades)) in Student
inv10 T: all c : Course | Student.(Course.(c.grades)) in Student
inv10 T: all c : Course | Grade.Course.c.grades in Student
inv10 T: all c : Course | Course.c.grades in Student
inv10 T: all c : Course | c.grades in Student
inv10 T: all c : Course | Grade.c.grades in Student

---
inv13 T: all c : Course | all s : Student |  first[c.grades.s] implies s.projects in c.projects
inv13 T: all c : Course | all s : Student |  first[c.grades.Grade] implies s.projects in c.projects
inv13 T: all c : Course | all s : Student |  first[c.grades.Student] implies s.projects in c.projects
inv13 T: all c : Course | all s : Student |  first[c.grades.Person] implies s.projects in c.projects
inv13 T: all c : Course | all s : Person |  first[s.c.grades] implies s.projects in c.projects
inv13 T: all c : Course | all s : Person |  first[s.(c.grades)] implies s.projects in c.projects
inv13 T: all c : Course | all s : Person |  first[c.grades] implies s.projects in c.projects
inv13 T: all c : Course | all s : Person |  first[c.grades.s] implies s.projects in c.projects
inv13 T: all c : Course | all s : Person |  first[c.grades.Grade] implies s.projects in c.projects
inv13 T: all c : Course | all s : Person |  first[grades.c.s] implies s.projects in c.projects
inv13 T: all c : Course | all s : Person |  first[c.grades] implies s.projects in c.projects
inv13 T: all c : Course | all s : Person |  first[s.c.grades] implies s.projects in c.projects
inv13 T: all c : Course | all s : Person |  first[s.(c.grades)] implies s.projects in c.projects
inv13 T: all c : Course | all s : Person |  s.(c.grades) implies s.projects in c.projects

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv15 T: all s1, s2: Student, p: Project, c: Course | s1 != s2 and p in s1.projects and p in s2 projects and p in c.projects => s1.c.grades = prev[s2.c.grades] or s1.c.grades = prev[s2.c.grades] or s1.c.grades = s2.c.grades
inv15 T: all s1, s2: Student, p: Project, c: Course, g1, g2: Grade | s1 != s2 and p in s1.projects and p in s2 projects and p in c.projects and g1 in s1.c.grades and g2 in s2.c.grades => g1 = prev[g2] or g1 = prev[g2] or g1 = g2
inv15 T: all s1, s2: Student, p: Project, c: Course, g1, g2: Grade | s1 != s2 and p in s1.projects and p in s2.projects and p in c.projects and g1 in s1.c.grades and g2 in s2.c.grades => g1 = prev[g2] or g1 = prev[g2] or g1 = g2
inv15 T: all s1, s2: Student, p: Project, c: Course, g1, g2: Grade | s1 != s2 and p in s1.projects and p in s2.projects and p in c.projects and g1 in s1.c.grades and g2 in s2.c.grades => g1 = prev[g2] or g1 = prev[g2] or g1 = g2
inv15 T: all s1, s2: Student, p: Project, c: Course, g1, g2: Grade | s1 != s2 and p in s1.projects and p in s2.projects and p in c.projects and g1 in s1.c.grades and g2 in s2.c.grades => g1 = prev[g2] or g1 = prev[g2] or g1 = g2
inv15 T: all s1, s2: Student, p: Project, c: Course, g1, g2: Grade | s1 != s2 and p in s1.projects and p in s2.projects and p in c.projects and g1 in s1.enrolled.c.grades and g2 in s2.enrolled.c.grades => g1 = prev[g2] or g1 = prev[g2] or g1 = g2

---
inv5 T: projects.Course in Student
inv5 T: Person <: projects.Course in Student
inv5 T: (Person <: projects.Course) in Student
inv5 T: (Person <: projects.Course)
inv5 T: (Person <: projects.Course) in Student
inv5 T: (Person <: projects.Course) in Student	  	all p : Project | some projects.p
inv5 T: (Person <: projects.Course) in Student	  	all p : Project | some projects.p :> Person

---
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies ((all proj:Project | not stud->c in projects) or (one proj:Project | stud->c in projects))

---
inv1 T: no (Person.Student) & enrolled.Course
inv1 T: no (Person.Student) & enrolled.Course
inv1 T: all p:Person | p.enrolled implies p=Student
inv1 T: no (Person.Student) & enrolled.Course
inv1 T: all p:Person | p is enrolled implies p=Student
inv1 T: all p:Person | p in enrolled implies p=Student

---
inv3 T: all p : Person, c : Course| some c in p.teaches
inv3 T: all p : Person, c : Course| p.teaches.~c
inv3 T: all p : Person, c : Course| c in p.teaches.~c
inv3 T: all p : Person, c : Course| c not in p.teaches.~c
inv3 T: all p : Person, c : Course| c not in p.(teaches.~c)

---
inv5 T: projects.Course in Student
inv5 T: all p : Person | p.projects.Course in Student
inv5 T: Person <: projects.Course in Student
inv5 T: (Person & projects.Course) in Student
inv5 T: some p : Person | p.projects.Course in Student
inv5 T: projects.Course in Student

---
inv15 T: all c:Course,p:Project,disj s1,s2:Person | c->p in projects and s1->c in projects and s2->c in projects and some s2.(c.grades) implies s1.(c.grades) in s2.(c.grades).(iden+next+prev)
inv15 T: all c:Course,p:Project,disj s1,s2:Person | c->p in projects and s1->c in Person<:projects and s2->c in Person<:projects and some s2.(c.grades) implies s1.(c.grades) in s2.(c.grades).(iden+next+prev)
inv15 T: all c:Course,p:Project,disj s1,s2:Person | c->p in Course<:projects and s1->c in Person<:projects and s2->c in Person<:projects and some s2.(c.grades) implies s1.(c.grades) in s2.(c.grades).(iden+next+prev)
inv15 T: all c:Course,p:Project,disj s1,s2:Person | c->p in Course<:projects and s1->c in Person<:projects and s2->c in Person<:projects and some s2.(c.grades) implies s1.(c.grades) in s2.(c.grades).(iden+next+prev)
inv15 T: all c:Course,p:Project,disj s1,s2:Person | c->p in Course<:projects and s1->c in (Person<:projects) and s2->c in Person<:projects and some s2.(c.grades) implies s1.(c.grades) in s2.(c.grades).(iden+next+prev)
inv15 T: all c:Course,p:Project,disj s1,s2:Person | c->p in (Course<:projects) and s1->c in (Person<:projects) and s2->c in (Person<:projects) and some s2.(c.grades) implies s1.(c.grades) in s2.(c.grades).(iden+next+prev)
inv15 T: all c:Course,p:Project,disj s1,s2:Person | c->p in (Course<:projects) and s1->c in (Person<:projects) and s2->c in (Person<:projects) and some s2.(c.grades) implies s1.(c.grades) in s2.(c.grades).(iden+next+prev)
inv15 T: all c:Course,p:Project,disj s1,s2:Person |  s2->c in (Person<:projects) and some s2.(c.grades) implies s1.(c.grades) in s2.(c.grades).(iden+next+prev)
inv15 T: all c:Course,p:Project,disj s1,s2:Person | c->p in (Course<:projects) and s1->p in (projects) and s2->c in (Person<:projects) and some s2.(c.grades) implies s1.(c.grades) in s2.(c.grades).(iden+next+prev)

---
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies ((all proj:Project | not stud->c in projects) or (one proj:Project | stud->c in projects))

---
inv4 T: all p : Project | lone Course.p
inv4 T: all p : Project, c : Course | lone c.p
inv4 T: all p : Project, c : Course | lone c.projects.p
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone Course.projects.p
inv4 S: all p : Project | one c : Courde | lone c.projects.p
inv4 T: all p : Project | one c : Course | lone c.projects.p

---
inv5 T: all s : Person, p : Project | some s.projects.p and no ( s & Student ) implies p not in s.projects
inv5 T: all s : Person, p : Project | some s.projects.p
inv5 T: all s : Person, p : Project | some projects.p
inv5 T: all s : Person, p : Project | some p in s.projects
inv5 T: all s : Person, p : Project | some (p in s.projects)

---
inv5 T: all s : Person, p : Project | ( no ( s & Student ) implies p not in s.projects ) and some s.projects.p
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects | some s.projects.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and some s.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p some s.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects

---
inv6 S: all s : Student, p : Projects, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.projects
inv6 S: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) implies no (s.projects & p)

---
inv7 S: all s : Student, p : Project, c : Course | no no (p & c.projects) implies p in s.projects
inv7 T: all s : Student, p : Project, c : Course | lone (s.projects & c.projects) iff (s.enrolled & c)
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.^p
inv7 T: all s : Student, p : Project, c : Course | lone s.^projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Student.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Person.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone c.projects.p

---
inv7 T: all s : Student, c : Course | lone p : Project | p in s.projects iff some (c in s.enrolled) and  some (p & c.projects)
inv7 T: all s : Student, c : Course | lone p : Project | lone p in s.projects
inv7 S: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some (c & s.enrolled) and (p & c.course) implies p_act in s.projects
inv7 T: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some (c & s.enrolled) and (p & c.projects) implies p_act in s.projects
inv7 T: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some ((c & s.enrolled) and (p & c.projects)) implies p_act in s.projects

---
inv9 S: all p1,p2 : Professor, c : Course | c & p1.teaches and c & p2.teaches implies
inv9 T: all p1,p2 : Person, c : Course | ( c & p1.teaches & p2.teaches ) implies no (p2.enrolled & c) or no (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | no ( c & p1.teaches & p2.teaches ) implies (p2.enrolled & c) or  (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c and p2.teaches.c

---
inv10 S: all p : Person, c : Course | no ( p & Student ) implies p not in c.grade
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies no c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies not c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not c.p
inv10 T: all p : Person, c : Course | no ( p & Student ) implies no c.p
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.grades
inv10 T: all p : Person - Student, c : Course | no c.p

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies ((all proj:Project | not stud->c in projects) or (one proj:Project | stud->c in projects))

---
inv4 T: all p : Project | lone Course.p
inv4 T: all p : Project, c : Course | lone c.p
inv4 T: all p : Project, c : Course | lone c.projects.p
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone Course.projects.p
inv4 S: all p : Project | one c : Courde | lone c.projects.p
inv4 T: all p : Project | one c : Course | lone c.projects.p

---
inv5 T: all s : Person, p : Project | some s.projects.p and no ( s & Student ) implies p not in s.projects
inv5 T: all s : Person, p : Project | some s.projects.p
inv5 T: all s : Person, p : Project | some projects.p
inv5 T: all s : Person, p : Project | some p in s.projects
inv5 T: all s : Person, p : Project | some (p in s.projects)

---
inv5 T: all s : Person, p : Project | ( no ( s & Student ) implies p not in s.projects ) and some s.projects.p
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects | some s.projects.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and some s.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p some s.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects

---
inv5 T: some p : Person, c : Course | all pr : projects | no ( p & Student ) implies c not in p.enrolled and pr in s.projects
inv5 T: some p : Person, c : Course | all pr : projects | no ( p & Student ) implies c not in p.enrolled and pr in p.projects
inv5 T: some p : Person, c : Course | all pr : projects | no ( p & Student ) implies c not in p.enrolled and pr in p.projects
inv5 T: some p : Person, c : Course | all pr : projects | no ( p & Student ) implies c not in p.enrolled and pr in p.projects
inv5 S: some p : Person, c : Course | all pr : Projects | no ( p & Student ) implies c not in p.enrolled and pr in p.projects

---
inv6 S: all s : Student, p : Projects, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.projects
inv6 S: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) implies no (s.projects & p)

---
inv7 S: all s : Student, p : Project, c : Course | no no (p & c.projects) implies p in s.projects
inv7 T: all s : Student, p : Project, c : Course | lone (s.projects & c.projects) iff (s.enrolled & c)
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.^p
inv7 T: all s : Student, p : Project, c : Course | lone s.^projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Student.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Person.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone c.projects.p

---
inv9 S: all p1,p2 : Professor, c : Course | c & p1.teaches and c & p2.teaches implies
inv9 T: all p1,p2 : Person, c : Course | ( c & p1.teaches & p2.teaches ) implies no (p2.enrolled & c) or no (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | no ( c & p1.teaches & p2.teaches ) implies (p2.enrolled & c) or  (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c and p2.teaches.c

---
inv4 T: all p:Project | one projects.p
inv4 T: all p:Project|one c:Course | one projects.p
inv4 T: all p:Project|one c:Course | one c.projects.p
inv4 T: all p:Project|one c:Course | one projects.p
inv4 T: all p:Project, c:Course | one projects.p
inv4 T: all p:Project, c:Course | one projects.p.c
inv4 T: all p:Project, c:Course | one projects.c
inv4 T: all c:Course | one projects.c
inv4 T: all c:Course, p:Project | one (c.projects & projects.p)
inv4 T: all p:Project | one (Course.projects & projects.p)
inv4 T: all p:Project | one (Course.projects & Course.projects.p)
inv4 S: all p:Project | one Course| p in c.projects
inv4 T: all p:Project | one (Course.projects & Course.projects.p)

---
inv3 S: teaches in Course -> some Teacher
inv3 S: teaches in Teacher some -> some Course
inv3 S: teaches in Teacher some -> Course
inv3 S: teaches in Professor some -> Course
inv3 S: teaches in Professor some -> set Course
inv3 S: teaches in Professor some -> set Course

---
inv13 S: some Grande/last
inv13 S: some Grande.last
inv13 T: some Grade.last
inv13 S: some Grade/last
inv13 S: all s:Student, c:Course, g:Grade | c->p->g in grades and g in last => some p:c.projects | p in s.projects
inv13 S: all s:Student, c:Course, g:Grade | c->p->g in grades and g in last

---
inv15 S: all c:Course , p:c.projects, s1, s2: (Person<:projects).Project, g1,g2:Grade | 	  		s1 != s2 and c->s1->g1 and c->s2->g2 => ((prev.g1 = g2) or (g1=g2))
inv15 S: all c:Course, p:c.projects, s1, s2: (Person<:projects).Project, g1,g2:Grade | 	  		s1 != s2 and c->s1->g1 and c->s2->g2
inv15 S: all c:Course, p:c.projects, s1, s2: Person, g1,g2:Grade | 	  		s1 != s2 and c->s1->g1 and c->s2->g2
inv15 S: all c:Course, p:c.projects, s1, s2: (Person<:projects).Project, g1,g2:Grade | 	  		s1 != s2 and c->s1->g1 in grades and c->s2->g2 in grades => ((prev.g1 = g2) or (g1=g2))
inv15 S: all c:Course, p:c.projects, s1, s2: (Person<:projects).Project, g1,g2:Grade | 	  		s1 != s2 and c->s1->g1 in grades and c->s2->g2 in grades
inv15 S: all c:Course, p:c.projects, s1, s2: Person, g1,g2:Grade | 	  		s1 != s2 and c->s1->g1 in grades and c->s2->g2 in grades
inv15 S: all c:Course, p:c.projects, s1, s2: Person, g1,g2:Grade | 	  		s1 != s2 and c->s1->g1 in grades and c->s2->g2 in grades

---
inv4 T: all p : Project | lone Course.p
inv4 T: all p : Project, c : Course | lone c.p
inv4 T: all p : Project, c : Course | lone c.projects.p
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone Course.projects.p
inv4 S: all p : Project | one c : Courde | lone c.projects.p
inv4 T: all p : Project | one c : Course | lone c.projects.p

---
inv5 T: all s : Person, p : Project | some s.projects.p and no ( s & Student ) implies p not in s.projects
inv5 T: all s : Person, p : Project | some s.projects.p
inv5 T: all s : Person, p : Project | some projects.p
inv5 T: all s : Person, p : Project | some p in s.projects
inv5 T: all s : Person, p : Project | some (p in s.projects)

---
inv5 T: all s : Person, p : Project | ( no ( s & Student ) implies p not in s.projects ) and some s.projects.p
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects | some s.projects.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and some s.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p some s.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects

---
inv6 S: all s : Student, p : Projects, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.projects
inv6 S: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) implies no (s.projects & p)

---
inv7 S: all s : Student, p : Project, c : Course | no no (p & c.projects) implies p in s.projects
inv7 T: all s : Student, p : Project, c : Course | lone (s.projects & c.projects) iff (s.enrolled & c)
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.^p
inv7 T: all s : Student, p : Project, c : Course | lone s.^projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Student.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Person.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone c.projects.p

---
inv7 T: all s : Student, c : Course | lone p : Project | p in s.projects iff some (c in s.enrolled) and  some (p & c.projects)
inv7 T: all s : Student, c : Course | lone p : Project | lone p in s.projects
inv7 S: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some (c & s.enrolled) and (p & c.course) implies p_act in s.projects
inv7 T: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some (c & s.enrolled) and (p & c.projects) implies p_act in s.projects
inv7 T: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some ((c & s.enrolled) and (p & c.projects)) implies p_act in s.projects

---
inv9 S: all p1,p2 : Professor, c : Course | c & p1.teaches and c & p2.teaches implies
inv9 T: all p1,p2 : Person, c : Course | ( c & p1.teaches & p2.teaches ) implies no (p2.enrolled & c) or no (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | no ( c & p1.teaches & p2.teaches ) implies (p2.enrolled & c) or  (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c and p2.teaches.c

---
inv4 T: all p: Project | one projects.p
inv4 T: all p: Project | one projects.Course
inv4 S: all p: Project | one (Course c.projects).p
inv4 S: all p: Project | one (Course c: projects).p
inv4 S: all p: Project | one (Course c<:projects).p

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv1 T: no Person.Student and enrolled.Course
inv1 T: no Person.Student and enrolled.Course
inv1 T: no (Person.Student) and enrolled.Course
inv1 T: (Person.Student) and enrolled.Course
inv1 T: no Person.Student and enrolled.Course
inv1 T: no Person.Student & enrolled.Course
inv1 T: no (Person.Student) & enrolled.Course
inv1 T: no ((Person.Student) & enrolled.Course)
inv1 T: no ((Person.Student) & enrolled.Course)
inv1 T: no ((Person.Student) & enrolled.Course)

---
inv7 T: all s1 : Student, c : Course | lone s1.projects.~(c.projects)
inv7 T: all s1 : Student, c : Course | lone s1.projects.(c.projects)
inv7 T: all s1 : Student, c : Course | lone s1.projects.(c.projects)
inv7 T: all s1 : Student, c : Course | lone s1.projects.(c.projects)
inv7 T: all s1 : Student, c : Course | lone (s1.projects).(c.projects)

---
inv7 S: all s1 : Student, c : Course | lone s1.projects.(c.<:projects)
inv7 T: all s1 : Student, c : Course | lone s1.projects.(c.Course<:projects)
inv7 T: all s1 : Student, c : Course | lone s1.projects.(c.(Course<:projects))
inv7 T: all s1 : Student, c : Course | lone s1.projects.(c.projects)
inv7 T: all s1 : Student, c : Course | lone (s1.projects.(c.projects))

---
inv7 S: all s1 : Student, c : Course | lone s1.projets.~(Course<:projects).c
inv7 T: all s1 : Student, c : Course | lone s1.projects.~(Course<:projects).c
inv7 T: all s1 : Student, c : Course | lone s1.projects.(c.projects)
inv7 T: all s1 : Student, c : Course | (lone s1.projects ) in c.projects
inv7 T: all s1 : Student, c : Course | (lone s1.projects ) in c.projects

---
inv7 T: all s: Student, c: Course | lone s.projects.c
inv7 T: all s: Student, c: Course | lone s.projects.~projects.c
inv7 T: all s: Student, c: Course | lone s.projects.~projects.c
inv7 T: all s: Student, c: Course | lone s.projects.~(projects.c)
inv7 T: all s: Student, c: Course | lone s.projects.~projects.c

---
inv4 T: all p:Project | one (projects.p.Course)
inv4 T: all p:Project | one (projects.Course.p)
inv4 T: all p:Project | one (projects.p)
inv4 T: all p:Project | one (Course.projects.p)
inv4 S: all p:Project | one (projects:Course.p)
inv4 S: all p:Project | one projects:Course.p

---
inv9 S: all p1,p2 : Professor | all c : Course | p1 != p2 and c in p1.teaches and c in p2.teaches implies (all c2 : Course | c2 in p1.teaches implies c2 not in p2.enrolled)
inv9 S: all p1,p2 : Professor | all c : Course | p1 != p2 and c in p1.teaches and c in p2.teaches implies (all c2 : Course | c2 in p1.teaches implies c2 not in p2.enrolled)
inv9 S: all p1,p2 : Professor | all c : Course | p1 != p2 and c in p1.teaches and c in p2.teaches implies (all c2 : Course | c2 in p1.teaches implies c2 not in p2.enrolled)
inv9 S: all p1,p2 : Professor | all c : Course | p1 != p2 and c in p1.teaches and c in p2.teaches implies (all c2 : Course | c2 in p1.teaches implies c2 not in p2.enrolled)
inv9 S: all p1,p2 : Professor | all c : Course | p1 != p2 and c in p1.teaches and c in p2.teaches implies (all c2 : Course | c2 in p1.teaches implies c2 not in p2.enrolled)

---
inv1 T: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p = s & p != s
inv1 S: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p = s | p != s
inv1 S: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p = s | p != pr
inv1 T: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p = s & p != pr
inv1 T: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p in s & p not in pr
inv1 S: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p in s | p not in pr

---
inv1 S: all p:Person.enrolled | all s:Student.enrolled all pr:Professor.enrolled | p in s & s!= pr
inv1 S: all p:Person.enrolled | all s:Student.enrolled all pr:Professor.enrolled | (p in s) & (s!= pr)
inv1 S: all p:Person.enrolled | all s:Student.enrolled all pr:Professor.enrolled | (p in s) and (s != pr)
inv1 S: all p:Person.enrolled | all s:Student.enrolled all pr:Professor.enrolled | s != implies (p in s)
inv1 S: all p:Person.enrolled | all s:Student.enrolled all pr:Professor.enrolled | s != pr implies (p in s)
inv1 S: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | s != pr implies (p in s)
inv1 T: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | (p in s) and not (s & pr)
inv1 T: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | (p in s) and (s & pr)
inv1 T: all p:Person, c: Course | no (p & Student) implies c not in p enrolled

---
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies ((all proj:Project | not stud->c in projects) or (one proj:Project | stud->c in projects))

---
inv4 T: all p: Project | one projects.p
inv4 T: all p: Project | lone projects.p
inv4 T: all p: Project | one projects.p
inv4 T: all p: Project | one projects.p
inv4 T: all p: Project | one projects.p

---
inv1 T: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p = s & p != s
inv1 S: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p = s | p != s
inv1 S: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p = s | p != pr
inv1 T: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p = s & p != pr
inv1 T: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p in s & p not in pr
inv1 S: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | p in s | p not in pr

---
inv1 S: all p:Person.enrolled | all s:Student.enrolled all pr:Professor.enrolled | p in s & s!= pr
inv1 S: all p:Person.enrolled | all s:Student.enrolled all pr:Professor.enrolled | (p in s) & (s!= pr)
inv1 S: all p:Person.enrolled | all s:Student.enrolled all pr:Professor.enrolled | (p in s) and (s != pr)
inv1 S: all p:Person.enrolled | all s:Student.enrolled all pr:Professor.enrolled | s != implies (p in s)
inv1 S: all p:Person.enrolled | all s:Student.enrolled all pr:Professor.enrolled | s != pr implies (p in s)
inv1 S: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | s != pr implies (p in s)
inv1 T: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | (p in s) and not (s & pr)
inv1 T: all p:Person.enrolled | all s:Student.enrolled | all pr:Professor.enrolled | (p in s) and (s & pr)
inv1 T: all p:Person, c: Course | no (p & Student) implies c not in p enrolled

---
inv4 T: all p:Project | one (projects.p.Course)
inv4 T: all p:Project | one (projects.Course.p)
inv4 T: all p:Project | one (projects.p)
inv4 T: all p:Project | one (Course.projects.p)
inv4 S: all p:Project | one (projects:Course.p)
inv4 S: all p:Project | one projects:Course.p

---
inv1 T: one p1 : Person | all c : Course | c in grades.p1
inv1 T: one p1 : Person | all c : Course | c in p1.grades
inv1 T: one p1 : Person | all c : Course | c in grades.p1
inv1 S: one p1 : Person | all c : Course | c in (p1.Grades).grades
inv1 T: one p1 : Person | all c : Course | c in (p1.Grade).grades
inv1 T: one p1 : Person | all c : Course | c in (p1.Person).grades
inv1 T: one p1 : Person | all c : Course | 	c in (p1.Person).grades
inv1 T: one p1 : Person | all c : Course | 	c in (p1.Person).grades
inv1 T: one p1 : Person | all c : Course | 	c in (p1.Grade).grades
inv1 T: one p1 : Person | all c : Course | 	c in (p1.Grade.grades)

---
inv6 T: all x:Student, y:Project | no ( not x.enrolled & projects.y)
inv6 T: all x:Student, y:Project | no ( (not x.enrolled) & projects.y)
inv6 T: all x:Student, y:Project | x->y in projects implies x.projects
inv6 T: all x:Student, y:Project | x->y in projects implies x.projects
inv6 T: no (projects and not enrolled)
inv6 T: no (projects and enrolled)
inv6 T: no (projects & enrolled)
inv6 T: all x:Student | no (x.projects & enrolled)
inv6 T: all x:Student | no (x.projects & x.enrolled)
inv6 T: all x:Student, y:Project, z:Course | x->z in projects implies x->z in enrolled

---
inv7 T: all s : Student, c : Course | c in s.Student implies lone s.projects.~(Course<:projects).c
inv7 T: all s : Student, c : Course | c in s.enrolled implies lone s.projects.~(Course<:projects).c
inv7 T: all s : Student | one c : Course | lone s.enrolled.c.projects
inv7 T: all s : Student | one c : Course | lone s.enrolled.c
inv7 T: all s : Student, c : s.enrolled | s

---
inv6 T: all x:Student, y:Project | no ( not x.enrolled & projects.y)
inv6 T: all x:Student, y:Project | no ( (not x.enrolled) & projects.y)
inv6 T: all x:Student, y:Project | x->y in projects implies x.projects
inv6 T: all x:Student, y:Project | x->y in projects implies x.projects
inv6 T: no (projects and not enrolled)
inv6 T: no (projects and enrolled)
inv6 T: no (projects & enrolled)
inv6 T: all x:Student | no (x.projects & enrolled)
inv6 T: all x:Student | no (x.projects & x.enrolled)
inv6 T: all x:Student, y:Project, z:Course | x->z in projects implies x->z in enrolled

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv3 T: all c : Course, p : Professor | some p -> c in teaches
inv3 T: all c : Course, p : Professor | some p.teaches.c
inv3 T: all c : Course, p : Professor | some c.~(Professor<:Course)
inv3 T: all p : Professor | some p.~(Professor<:Course)
inv3 T: all p : Person | p in Professor implies some p.~(Professor<:Course)
inv3 T: all p : Person | p in Professor implies some p.~(Person<:Course)
inv3 T: all p : Professor | some p.~(Professor<:Course)
inv3 T: all p : Professor | some p in p.~(Professor<:Course)
inv3 T: all c : Course, p : Person | (p -> c in teaches) implies some p in Professor
inv3 T: all p : Professor | some p in p.~(Professor<:Course)
inv3 T: all p : Professor | some p in p.~(Professor<:Course)
inv3 T: all p : Professor | some p in p.~(Person<:Course)
inv3 T: all p : Professor | some p in p.~(Person<:Course) implies p in Professor
inv3 S: p.~(Person<:Course) implies some p in Professor
inv3 T: all p : Person | p.~(Person<:Course) implies some p in Professor

---
inv10 S: all p : Person, c : Course | c->o in grades implies p in Student
inv10 T: all p : Person, c : Course | c->p in grades implies p in Student
inv10 S: all p : Person, c : Course | c->p.Grades in grades implies p in Student
inv10 T: all p : Person, c : Course | c->p.Grade in grades implies p in Student
inv10 T: all p : Person, c : Course | c->Grade.p in grades implies p in Student

---
inv4 S: all p : Project | propose.p in Course
inv4 S: all p : Project | proposes.p in Course
inv4 T: all p : Project | projects.p in Course
inv4 T: all p : Project | projects.p in Course
inv4 T: all p : Project | projects.p in Course
inv4 T: all p : Project | Course.projects.p in Course

---
inv4 T: all p : Project | Course.(projects.p)
inv4 T: all p : Project | one (Course.(projects.p))
inv4 T: all p : Project | one ((Course.projects).p)
inv4 S: all p : Project , c : Course | one (c.project.p)
inv4 T: all p : Project , c : Course | one (c.projects.p)
inv4 T: all p : Project , c : Course | one (c.(projects.p))

---
inv4 T: all p : Project | one Course.projects.p
inv4 T: all p : Project | one (Course.projects).p
inv4 T: all p : Project | one (Course.projects).p
inv4 T: all p : Project | one p.projects.Course
inv4 S: all p : Project | one Course.project.p
inv4 T: all p : Project | one Course.projects.p
inv4 S: all p : p.(Course <: projects)| one projects.p
inv4 S: all p : p.(Course <: projects)| one projects.p
inv4 T: all p : (Course <: projects)| one projects.p
inv4 S: all p : p.(Course <: projects)| one projects.p
inv4 T: all p : Project | all p : p.(Course <: projects)| one projects.p
inv4 T: all p : (Course <: projects)| one projects.p
inv4 T: all p : Person.(Course <: projects)| one projects.p
inv4 T: all p : (projects <: Course)| one projects.p
inv4 T: all p : (projects <: Course )| one projects.p
inv4 T: all p : (Course <: projects)| one projects.p
inv4 T: all p : (Course <: Course.projects)| one projects.p
inv4 T: all p : Project | one p.projects.(Course :> projects)

---
inv1 S: all p : Person | all c : Course | c in p.enrolled implies p in Student
inv1 S: all p : Person | Course in p.enrolled implies p in Student
inv1 S: all p : Person | all c : Course | c in p.enrolled implies p in Student
inv1 S: all p : Person | all c : Course | (c in p.enrolled) implies p in Student
inv1 S: all p : Person | all c : Course | (c in p.enrolled) implies (p in Student)

---
inv13 S: all c1 : Course | all s1 : Student |		(s1->c1 in enrolled and (max(g1:Grade|c1->s1->g1))) implies (some p1 : Project|c1->p1 in projects and s1->p1 in projects)
inv13 S: all c1 : Course | all s1 : Student |		(s1->c1 in enrolled and (max[g1:Grade|c1->s1->g1])) 	  	implies (some p1 : Project|c1->p1 in projects and s1->p1 in projects)
inv13 S: all c1 : Course |		max [all g1 : Grades | all s1 : Student | g1:Grade|c1->s1->g1]	  	implies (some p1 : Project|c1->p1 in projects and s1->p1 in projects)
inv13 S: all c1 : Course |		max [all g1 : Grades | all s1 : Student | c1->s1->g1]	  	implies (some p1 : Project|c1->p1 in projects and s1->p1 in projects)
inv13 T: all c1 : Course |		max [all g1 : Grade | all s1 : Student | c1->s1->g1]	  	implies (some p1 : Project|c1->p1 in projects and s1->p1 in projects)
inv13 T: all c1 : Course |		max [all g1 : Grade | all s1 : Student | c1->s1->g1 in grades]	  	implies (some p1 : Project|c1->p1 in projects and s1->p1 in projects)
inv13 T: all c1 : Course |		max [all g1 : Grade | all s1 : Student | c1->s1->g1 in grades]	  	implies (some p1 : Project|c1->p1 in projects and s1->p1 in projects)
inv13 T: all c1 : Course |		all g1 : Grade | all s1 : Student | max [ c1->s1->g1 in grades]	  	implies (some p1 : Project|c1->p1 in projects and s1->p1 in projects)

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv6 S: all s: Student, p: Project | one c: projects.p | s in projects.p implies s in enrolled.c
inv6 S: all s: Student, p: Project | one c: Course | s in projects.p implies s in enrolled.c
inv6 S: all s: Student, p: Project | one c: Course | s in projects.p
inv6 S: all s: Student, p: Project | all c: Course | s in projects.p
inv6 S: all s: Student, p: Project | some c: Course | s in projects.p

---
inv13 T: all s:Student,c:Course | first.s.c.grades implies s.projects & c.projects
inv13 T: all s:Student,c:Course | first.(s.c.grades) implies s.projects & c.projects
inv13 T: all s:Student,c:Course | first.(s.c.grades) implies s.projects.Person & c.projects.Person
inv13 T: all s:Student,c:Course | first.(s.c.grades) implies s.projects & c.projects
inv13 T: all s:Student,c:Course | first.(s.c.grades)

---
inv4 T: all p:Project | one projects.p
inv4 T: all p:Project | one Course.projects.p
inv4 T: all p:Project | one Course.projects.p
inv4 T: all p:Project | one Course.projects.p
inv4 T: all p:Project | some Course.projects.p

---
inv5 T: no (Person-Student) & projects
inv5 T: no (Person-Student) & Person.projects
inv5 T: no (Person-Student) & Person.projects
inv5 T: no (Person-Student) & Person.projects
inv5 S: no (Person-Student) & Person.projects.p
inv5 T: no (Person-Student) & Person.projects.Project

---
inv5 T: no (Person-Student) & projects.Project			  	all p:Project | some projects.p
inv5 T: no (Person-Student) & projects.Project			  	all p:Project | some Person.projects.p
inv5 T: no (Person-Student) & projects.Project			  	all p:Project | some Student.projects.p
inv5 T: all p:Project | some Person.projects.p
inv5 T: some Person.projects.Project
inv5 T: all p:Project | some projects.p
inv5 T: all p:Project | some Project.projects.p

---
inv12 T: all c:Course,g:Grade | lone c.(^grades.g)
inv12 T: all c:Course,g:Grade | lone c.~grades.g
inv12 T: all c:Course,g:Grade | lone c.~grades.g
inv12 T: all c:Course,g:Grade | lone c.(~grades).g
inv12 T: all c:Course,g:Grade | lone c.(~grades.g)
inv12 T: all c:Course,g:Grade | lone c.(~grades)

---
inv4 T: all p: Project | one projects.p
inv4 S: all p: Project | one (Course).project.p
inv4 T: all p: Project | one (Course).projects.p
inv4 T: all p: Project | one c: Course | p->c in projects
inv4 S: all p: Project | one c: Course | p->c in course

---
inv7 T: all s:Student, c:Course, p:Project | s->c in enrolled and c->p in projects implies one s->p in projects
inv7 T: all s:Student, c:Course, p:Project | s->c in enrolled and c->p in projects implies one s->p in projects
inv7 T: all s:Student, c:Course, p:Project | s->c in enrolled and c->p in projects implies (one s->p in projects)
inv7 T: all s:Student, c:Course, p:Project | (s->c in enrolled and c->p in projects) implies (one s->p in projects)
inv7 T: all s:Student, c:Course, p:Project | (s->c in enrolled and c->p in projects) implies  (one s->p in projects)

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv1 S: all p : Person | p.enrolled in Course iff p == Student
inv1 S: all person : Person | professor : Professor | person-professor in Course
inv1 S: all person : Person | professor : Professor | person - professor in Course
inv1 S: all person : Person | professor : Professor | person - professor in p.enrolled
inv1 S: all person : Person | professor : Professor | person - professor in person.enrolled
inv1 S: all person : Person | professor : Professor | (person - professor) in person.enrolled
inv1 S: all s,p : Person | pr : Professor | s != pr implies s in p.enrolled

---
inv7 S: all s: Student | ((all c : Course, p1 : Project, p2 : Project | s -> p1 in projects and c -> p1 in projects) => ())
inv7 S: all s: Student | ((all c : Course, p1 : Project, p2 : Project | s -> p1 in projects and c -> p1 in projects) => ())
inv7 S: all s: Student | ((all c : Course, p1 : Project, p2 : Project | s -> p1 in projects and c -> p1 in projects 	  		s -> p2 in projects and c -> p2 in projects	  	  ) => (p2 == p1))
inv7 S: all s: Student | ((all c : Course, p1 : Project, p2 : Project | s -> p1 in projects and c -> p1 in projects 	  		s -> p2 in projects and c -> p2 in projects) => (p2 == p1))
inv7 S: all s: Student | ((all c : Course, p1 : Project, p2 : Project | s -> p1 in projects and c -> p1 in projects 	  		and s -> p2 in projects and c -> p2 in projects) => (p2 == p1))
inv7 S: all s: Student | ((all c : Course, p1 : Project, p2 : Project | s -> p1 in projects and c -> p1 in projects 	  		and s -> p2 in projects and c -> p2 in projects) => (p2 = p1))
inv7 S: all s: Student | ((all c : Course, p1 : Project, p2 : Project | (s -> p1 in projects and c -> p1 in projects 	  		and s -> p2 in projects and c -> p2 in projects) => (p2 = p1))
inv7 S: all s: Student | ((all c : Course, p1 : Project, p2 : Project | (s -> p1 in projects and c -> p1 in projects 	  		and s -> p2 in projects and c -> p2 in projects)) => (p2 = p1))
inv7 S: all s: Student | all c : Course, p1 : Project, p2 : Project | (s -> p1 in projects and c -> p1 in projects 	  		and s -> p2 in projects and c -> p2 in projects => (p2 = p1)

---
inv4 T: all p : Project | lone Course.p
inv4 T: all p : Project, c : Course | lone c.p
inv4 T: all p : Project, c : Course | lone c.projects.p
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone Course.projects.p
inv4 S: all p : Project | one c : Courde | lone c.projects.p
inv4 T: all p : Project | one c : Course | lone c.projects.p

---
inv5 T: all s : Person, p : Project | some s.projects.p and no ( s & Student ) implies p not in s.projects
inv5 T: all s : Person, p : Project | some s.projects.p
inv5 T: all s : Person, p : Project | some projects.p
inv5 T: all s : Person, p : Project | some p in s.projects
inv5 T: all s : Person, p : Project | some (p in s.projects)

---
inv5 T: all s : Person, p : Project | ( no ( s & Student ) implies p not in s.projects ) and some s.projects.p
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects | some s.projects.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and some s.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p some s.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects

---
inv6 S: all s : Student, p : Projects, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.projects
inv6 S: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) implies no (s.projects & p)

---
inv7 S: all s : Student, p : Project, c : Course | no no (p & c.projects) implies p in s.projects
inv7 T: all s : Student, p : Project, c : Course | lone (s.projects & c.projects) iff (s.enrolled & c)
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.^p
inv7 T: all s : Student, p : Project, c : Course | lone s.^projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Student.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Person.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone c.projects.p

---
inv7 T: all s : Student, c : Course | lone p : Project | p in s.projects iff some (c in s.enrolled) and  some (p & c.projects)
inv7 T: all s : Student, c : Course | lone p : Project | lone p in s.projects
inv7 S: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some (c & s.enrolled) and (p & c.course) implies p_act in s.projects
inv7 T: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some (c & s.enrolled) and (p & c.projects) implies p_act in s.projects
inv7 T: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some ((c & s.enrolled) and (p & c.projects)) implies p_act in s.projects

---
inv9 S: all p1,p2 : Professor, c : Course | c & p1.teaches and c & p2.teaches implies
inv9 T: all p1,p2 : Person, c : Course | ( c & p1.teaches & p2.teaches ) implies no (p2.enrolled & c) or no (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | no ( c & p1.teaches & p2.teaches ) implies (p2.enrolled & c) or  (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c and p2.teaches.c

---
inv10 S: all p : Person, c : Course | no ( p & Student ) implies p not in c.grade
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies no c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies not c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not c.p
inv10 T: all p : Person, c : Course | no ( p & Student ) implies no c.p
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.grades
inv10 T: all p : Person - Student, c : Course | no c.p

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv4 S: proposes in Project set -> lone Course
inv4 S: propose in Project set -> lone Course
inv4 T: projects in Project set -> lone Course
inv4 T: projects in Course one -> set Project
inv4 T: projects in Course one -> set Project

---
inv13 S: grades.max[Grade] in c.projects.~projects :> student
inv13 T: grades.max[Grade] in Course <: projects.~projects :> Student
inv13 T: grades.max[Grade] in Course <: projects.~projects :> Student
inv13 T: grades.max[Grade] in (Course <: (projects.~projects) :> Student)
inv13 T: grades.max[Grade] in (Course <: projects).(~projects :> Student)
inv13 T: (grades.max[Grade]) in (Course <: projects).(~projects :> Student)
inv13 T: (grades.max[Grade]) in (Course <: projects).(~projects :> Student)

---
inv15 T: all p : Project, s : (Student <: projects.p) | let gs = (projects.p).grades.Student, g = C.grades[s] |	  		g = gs or g = prev[gs] or prev[g] = gs
inv15 T: all p : Project, s : (Student <: projects.p) | let gs = (projects.p).grades.Student| let g = C.grades[s] |	  		g = gs or g = prev[gs] or prev[g] = gs
inv15 T: all p : Project, s : (Student <: projects.p) | let gs = (projects.p).grades.Student| let g = C.grades[s] | g = gs or g = prev[gs] or prev[g] = gs
inv15 S: all p : Project, all g,h : (projects.p).grades[projects.p] | g = h or g = prev[h] or prev[g] = h
inv15 S: all p : Project, all g,h : (projects.p).grades[Student <: projects.p] | g = h or g = prev[h] or prev[g] = h
inv15 S: all p : Project, all g,h : (projects.p).(projects.p).grades | g = h or g = prev[h] or prev[g] = h
inv15 S: all p : Project, all g,h : (projects.p).(projects.p.grades) | g = h or g = prev[h] or prev[g] = h

---
inv13 T: all c : Course | some n : c.grades | (all nota : Person.(c.grades) | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)
inv13 S: all c : Course, nota : Person.(c.grades) | some n : c.grades | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)
inv13 S: all c : Course, nota : Person.(c.grades) | (some n : c.grades | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)
inv13 S: all c : Course, nota : Person.(c.grades) | (some grade : c.grades | gte[Person.grade,nota] ) implies (some proj : grade.Grade.projects | proj in c.projects)
inv13 T: all c : Course, nota : Person.(c.grades) | some grade : c.grades | gte[Person.grade,nota]  implies (some proj : grade.Grade.projects | proj in c.projects)
inv13 T: all c : Course | some n : c.grades | (all nota : Person.(c.grades) | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)

---
inv4 T: all p:Project | one (projects.p.Course)
inv4 T: all p:Project | one (projects.Course.p)
inv4 T: all p:Project | one (projects.p)
inv4 T: all p:Project | one (Course.projects.p)
inv4 S: all p:Project | one (projects:Course.p)
inv4 S: all p:Project | one projects:Course.p

---
inv4 S: all p : Project | lone projects.c
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone Course.projects.p
inv4 T: all p : Project | lone projects.p

---
inv6 T: all s : Student | (Person :> s.projects) in s.enrolled.projects
inv6 T: all s : Student | (Person :> s.projects) in s.enrolled.(Course :>projects)
inv6 T: all s : Student | (Person :> s.projects) in s.enrolled.(Course :> projects)
inv6 T: all s : Student | s.(Person :>projects) in s.enrolled.(Course :> projects)
inv6 T: all s : Student | s.(Person :>projects) in s.enrolled.(Course :> projects)
inv6 T: all s : Student | s.(Person :>projects) in s.enrolled.(Course :> projects)

---
inv4 S: all p : Project | lone p.courses
inv4 S: all p : Project | lone p.course
inv4 T: all p : Project | lone p.Course
inv4 S: all p : Project | one couse.p
inv4 S: all p : Project | one course.p
inv4 T: all p : Project | one Course.p
inv4 T: all p : Project ,c : Course | one p.Course.c
inv4 S: all p : Project ,c : Course | one project.p
inv4 S: all p : Project | one (Course c : projects).p
inv4 S: all p : Project , c: | one (Course <: projects).p

---
inv5 T: all p : Project , ps : Person | (ps <: projects).p implies ps in Student	  	all p : Project | some (Person <: prjects).p
inv5 T: all p : Project , ps : Person | (ps <: projects).p implies ps in Student	  	all p : Project | some (Person <: prjects).p
inv5 S: all p : Project | some (Person <: prjects).p
inv5 T: all p : Project , ps : Person | (ps <: projects).p implies ps in Student	  	all p : Project | some (Person <: projects).p
inv5 T: all p : Project , ps : Person | (ps <: projects).p implies ps in Student
inv5 T: all p : Project , ps : Person | (ps <: projects).p implies ps in Student

---
inv4 T: all p:Project | one projects.p
inv4 T: all p:Project | one Course.projects.p
inv4 T: all p:Project | one Course.projects.p
inv4 T: all p:Project | one Course.projects.p
inv4 T: all p:Project | some Course.projects.p

---
inv5 T: no (Person-Student) & projects
inv5 T: no (Person-Student) & Person.projects
inv5 T: no (Person-Student) & Person.projects
inv5 T: no (Person-Student) & Person.projects
inv5 S: no (Person-Student) & Person.projects.p
inv5 T: no (Person-Student) & Person.projects.Project

---
inv5 T: no (Person-Student) & projects.Project			  	all p:Project | some projects.p
inv5 T: no (Person-Student) & projects.Project			  	all p:Project | some Person.projects.p
inv5 T: no (Person-Student) & projects.Project			  	all p:Project | some Student.projects.p
inv5 T: all p:Project | some Person.projects.p
inv5 T: some Person.projects.Project
inv5 T: all p:Project | some projects.p
inv5 T: all p:Project | some Project.projects.p

---
inv12 T: all c:Course,g:Grade | lone c.(^grades.g)
inv12 T: all c:Course,g:Grade | lone c.~grades.g
inv12 T: all c:Course,g:Grade | lone c.~grades.g
inv12 T: all c:Course,g:Grade | lone c.(~grades).g
inv12 T: all c:Course,g:Grade | lone c.(~grades.g)
inv12 T: all c:Course,g:Grade | lone c.(~grades)

---
inv7 S: some p1, p2: Projects, 	         c1,c2: course| 	    all s: Student| (p1+p2) in s.projects and 	  					p1 in c1.projects and p2 in c2.projects	  					implies c1 != c2	  	  	  s.projects in s.enrolled.projects
inv7 S: some p1, p2: Project, 	         c1,c2: course| 	    all s: Student| (p1+p2) in s.projects and 	  					p1 in c1.projects and p2 in c2.projects	  					implies c1 != c2	  	  	  s.projects in s.enrolled.projects
inv7 S: some p1, p2: Project, 	         c1,c2: Course| 	    all s: Student| (p1+p2) in s.projects and 	  					p1 in c1.projects and p2 in c2.projects	  					implies c1 != c2	  	  	  s.projects in s.enrolled.projects
inv7 S: some p1, p2: Project, 	         c1,c2: Course| 	    all s: Student| (p1+p2) in s.projects and 	  					p1 in c1.projects and p2 in c2.projects	  					implies c1 != c2	  	  	  s.projects in s.enrolled.projects
inv7 S: some p1, p2: Project, c1,c2: Course| all s: Student| ((p1+p2) in s.projects and (p1 in c1.projects) and (p2 in c2.projects)) implies c1 != c2	  	  	  s.projects in s.enrolled.projects
inv7 S: some p1, p2: Project, c1,c2: Course| all stu: Student| ((p1+p2) in stu.projects and (p1 in c1.projects) and (p2 in c2.projects)) implies c1 != c2	  	  	  s.projects in s.enrolled.projects
inv7 S: s.projects in s.enrolled.projects

---
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one Course.projects.p
inv4 T: projects in Course one -> Project
inv4 T: Course.projects in Course one -> Project
inv4 T: Course[projects] in Course one -> Project
inv4 T: projects in Course one -> Project
inv4 S: Course/projects in Course one -> Project
inv4 S: this/Course/projects in Course one -> Project
inv4 T: projects in Course one -> Project

---
inv13 T: all c : Course, s : c.grades.Grade | not (some e : c.grades.Grade | c.grades.e > s.grades.s) implies c in (Course <: projects).(s.projects)
inv13 T: all c : Course, s : c.grades.Grade | not (some e : c.grades.Grade | c.grades.e > s.grades.s) implies c in (Course <: projects).(s.projects)
inv13 T: all c : Course, s : enrolled.c | not (some e : enrolled.c | c.grades.e > s.grades.s) implies c in (Course <: projects).(s.projects)
inv13 S: all c : Course, s : enrolled.c | (s in c.grades.Grade) and not (some e : enrolled.c | e in c.grades.Grade and c.grades.e > s.grades.s)) implies c in (Course <: projects).(s.projects)
inv13 S: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and c.grades.e > c.grades.s)) implies c in (Course <: projects).(s.projects)
inv13 S: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : univ | e in c.grades.Grade and c.grades.e > c.grades.s)) implies c in (Course <: projects).(s.projects)
inv13 T: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and c.grades.e > c.grades.s) implies c in (Course <: projects).(s.projects)
inv13 T: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and c.grades.e >= c.grades.s) implies c in (Course <: projects).(s.projects)
inv13 S: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and gt[c.grades.e,c.grades.s] implies c in (Course <: projects).(s.projects)
inv13 T: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and gt[c.grades.e,c.grades.s]) implies c in (Course <: projects).(s.projects)

---
inv4 S: all p : Projects | one Course.p
inv4 T: all p : Project | one Course.p
inv4 T: all p : Project | one Course.projects.p
inv4 T: all p : Project | one p.~projects.Course
inv4 T: all p : Project | one p.(Course<:~projects)

---
inv6 S: all s: Student, p: Project | one c: projects.p | s in projects.p implies s in enrolled.c
inv6 S: all s: Student, p: Project | one c: Course | s in projects.p implies s in enrolled.c
inv6 S: all s: Student, p: Project | one c: Course | s in projects.p
inv6 S: all s: Student, p: Project | all c: Course | s in projects.p
inv6 S: all s: Student, p: Project | some c: Course | s in projects.p

---
inv4 S: all p: Project | one c: Course | x->c in projects
inv4 T: all p: Project | one c: Course | p->c in projects
inv4 T: all x: Project | one c: Course | x->c in projects
inv4 T: all x: Project | one c: Course | x=>c in projects
inv4 T: all x: Project | one c: Course | x->c in projects

---
inv4 T: all p:Project | one (projects.p.Course)
inv4 T: all p:Project | one (projects.Course.p)
inv4 T: all p:Project | one (projects.p)
inv4 T: all p:Project | one (Course.projects.p)
inv4 S: all p:Project | one (projects:Course.p)
inv4 S: all p:Project | one projects:Course.p

---
inv5 T: all p:Project | (projects.p in Student) and (some pe:Person | pe->p in projects)
inv5 T: all p:Project | (projects.p in Student) and (some pe:Person | pe->p in projects)
inv5 T: all p:Project | (projects.p in Student) and (some pe:Person | pe->p in projects)
inv5 T: all p:Project | (projects.p in Student) and (some pe:Person | pe->p in (Person <: projects))
inv5 T: all p:Project | (projects.p in Student) and (some pe:Person | pe->p in (Person <: projects))

---
inv4 T: all p:Project | one projects.p
inv4 T: all p:Project | one projects.p
inv4 T: all p:Project | one Course.projects.p
inv4 T: all p:Project | one projects.p
inv4 T: all p:Project | one (projects <: Course).p

---
inv4 T: all p:Project | one projects.p
inv4 T: all p:Project|one c:Course | one projects.p
inv4 T: all p:Project|one c:Course | one c.projects.p
inv4 T: all p:Project|one c:Course | one projects.p
inv4 T: all p:Project, c:Course | one projects.p
inv4 T: all p:Project, c:Course | one projects.p.c
inv4 T: all p:Project, c:Course | one projects.c
inv4 T: all c:Course | one projects.c
inv4 T: all c:Course, p:Project | one (c.projects & projects.p)
inv4 T: all p:Project | one (Course.projects & projects.p)
inv4 T: all p:Project | one (Course.projects & Course.projects.p)
inv4 S: all p:Project | one Course| p in c.projects
inv4 T: all p:Project | one (Course.projects & Course.projects.p)

---
inv6 T: all s:Student, p:Project | s->p in projects implies s.enrolled
inv6 T: all s:Student, p:Project | s->p in projects implies enrolled.s
inv6 T: all s:Student, p:Project | s.projects implies enrolled.s
inv6 T: all s:Student, p:Project | s->p in projects implies enrolled.s
inv6 T: all s:Student, p:Project | s->p in projects implies s.enrolled
inv6 T: all s:Student, p:Project | s.projects implies s.enrolled
inv6 T: all s:Student, p:Project | projects.p implies s.enrolled
inv6 T: all s:Student, p:Project, c:Course | p in s.projects implies s.enrolled
inv6 T: all s:Student, p:Project, c:Course | p in s.projects and p in c.projects implies s.enrolled
inv6 T: all s:Student, p:Project, c:Course | p in s.projects and p in c.projects implies s.enrolled.c

---
inv3 T: all c : Course | c implies some Professor
inv3 T: all c : Course | c implies some Professor.teaches
inv3 T: all c : Course | c implies not lone Professor
inv3 T: all c : Course | c implies not lone Professor -> c
inv3 T: all c : Course | some p : Professor | p -> c
inv3 T: all c : Course | some p : Professor | c implies p
inv3 T: all c : Course | some p : Professor | c implies p
inv3 T: all c : Course | not lone p : Professor | c implies p in teaches
inv3 T: all c : Course | not lone p : Professor | c implies p & teaches
inv3 T: all c : Course | not lone p : Professor | c -> p & teaches

---
inv6 T: all x:Student, y:Project | no ( not x.enrolled & projects.y)
inv6 T: all x:Student, y:Project | no ( (not x.enrolled) & projects.y)
inv6 T: all x:Student, y:Project | x->y in projects implies x.projects
inv6 T: all x:Student, y:Project | x->y in projects implies x.projects
inv6 T: no (projects and not enrolled)
inv6 T: no (projects and enrolled)
inv6 T: no (projects & enrolled)
inv6 T: all x:Student | no (x.projects & enrolled)
inv6 T: all x:Student | no (x.projects & x.enrolled)
inv6 T: all x:Student, y:Project, z:Course | x->z in projects implies x->z in enrolled

---
inv9 T: all p : Professor, c : Course | no p.teaches.c & enrolled.c implies c in p.enrolled
inv9 T: all p : Professor, c : Course | no p.teaches.Course & enrolled.c implies c in p.enrolled
inv9 T: all p : Professor | no p.teaches.Course & p.enrolled.Course
inv9 T: all p : Professor | no p.teaches.Course in p.enrolled.Course
inv9 T: all p : Professor | p.teaches.Course  not in p.enrolled.Course

---
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one Course.projects.p
inv4 T: projects in Course one -> Project
inv4 T: Course.projects in Course one -> Project
inv4 T: Course[projects] in Course one -> Project
inv4 T: projects in Course one -> Project
inv4 S: Course/projects in Course one -> Project
inv4 S: this/Course/projects in Course one -> Project
inv4 T: projects in Course one -> Project

---
inv4 S: proposes in Project set -> lone Course
inv4 S: propose in Project set -> lone Course
inv4 T: projects in Project set -> lone Course
inv4 T: projects in Course one -> set Project
inv4 T: projects in Course one -> set Project

---
inv13 S: grades.max[Grade] in c.projects.~projects :> student
inv13 T: grades.max[Grade] in Course <: projects.~projects :> Student
inv13 T: grades.max[Grade] in Course <: projects.~projects :> Student
inv13 T: grades.max[Grade] in (Course <: (projects.~projects) :> Student)
inv13 T: grades.max[Grade] in (Course <: projects).(~projects :> Student)
inv13 T: (grades.max[Grade]) in (Course <: projects).(~projects :> Student)
inv13 T: (grades.max[Grade]) in (Course <: projects).(~projects :> Student)

---
inv15 T: all p : Project, s : (Student <: projects.p) | let gs = (projects.p).grades.Student, g = C.grades[s] |	  		g = gs or g = prev[gs] or prev[g] = gs
inv15 T: all p : Project, s : (Student <: projects.p) | let gs = (projects.p).grades.Student| let g = C.grades[s] |	  		g = gs or g = prev[gs] or prev[g] = gs
inv15 T: all p : Project, s : (Student <: projects.p) | let gs = (projects.p).grades.Student| let g = C.grades[s] | g = gs or g = prev[gs] or prev[g] = gs
inv15 S: all p : Project, all g,h : (projects.p).grades[projects.p] | g = h or g = prev[h] or prev[g] = h
inv15 S: all p : Project, all g,h : (projects.p).grades[Student <: projects.p] | g = h or g = prev[h] or prev[g] = h
inv15 S: all p : Project, all g,h : (projects.p).(projects.p).grades | g = h or g = prev[h] or prev[g] = h
inv15 S: all p : Project, all g,h : (projects.p).(projects.p.grades) | g = h or g = prev[h] or prev[g] = h

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv4 T: all p:Project | one (projects.p.Course)
inv4 T: all p:Project | one (projects.Course.p)
inv4 T: all p:Project | one (projects.p)
inv4 T: all p:Project | one (Course.projects.p)
inv4 S: all p:Project | one (projects:Course.p)
inv4 S: all p:Project | one projects:Course.p

---
inv4 T: all pro: Project | #Course.projects.pro = 1
inv4 S: all pro: Project | #Course.projects.ident.pro = 1
inv4 T: all pro: Project | #Course.projects.iden.pro = 1
inv4 T: all pro: Project | #Course.projects.{Project<:iden}.pro = 1
inv4 T: all pro: Project | #Course.projects.{Project:>iden}.pro = 1
inv4 T: all pro: Project | #Course.projects.{iden :> Project}.pro = 1
inv4 S: all pro: Project | #Course.projects.{Projects<:iden}.pro = 1
inv4 T: all pro: Project | #Course.projects.{Project<:iden}.pro = 1

---
inv4 T: all pro: Project | ~{Course.projects}
inv4 T: all pro: Project | ~{Course.projects}.pro
inv4 T: all pro: Project | ~{Course<:projects}.pro
inv4 T: all pro: Project | {Course<:projects}.pro
inv4 T: all pro: Project | {Course<:projects}
inv4 T: all pro: Project | ~{Course:>projects}.pro
inv4 T: all pro: Project | ~{Course<:projects}.pro
inv4 T: all pro: Project | ~{Course <: projects}.pro

---
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies ((all proj:Project | not stud->c in projects) or (one proj:Project | stud->c in projects))

---
inv15 S: all s1,s2 : Students | all p : Project| all c : Course | p in s1.projects&s2,projects and p in c.projects and s1!=s2 implies (all g1,g2:Grades | g1 in s1.c.grades and g2 in s2.c.grades implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
inv15 S: all s1,s2 : Students | all p : Project| all c : Course | p in s1.projects&s2,projects and p in c.projects and 	  s1!=s2 implies (all g1,g2:Grades | g1 in s1.c.grades and g2 in s2.c.grades implies (g1=prev[g2] or g2=prev[g1] or	   g1=g2))
inv15 S: all s1,s2 : Students | all p : Project| all c : Course | p in s1.projects&s2,projects and p in c.projects and 	  s1!=s2 implies (all g1,g2 : Grade | g1 in s1.c.grades and g2 in s2.c.grades implies (g1=prev[g2] or g2=prev[g1] or	   g1=g2))
inv15 S: all s1,s2 : Students | all p : Project| all c : Course | p in s1.projects&s2,projects and p in c.projects and 	  s1!=s2 implies (all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1]or	  g1=g2))
inv15 S: all s1,s2 : Students | all p : Project| all c : Course | p in s1.projects&s2,projects and p in c.projects and	  	  s1!=s2 implies (all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1]or	  g1=g2))
inv15 S: all s1,s2 : Students | all p : Project| all c : Course | p in s1.projects&s2.projects and p in c.projects and	  s1!=s2 implies (all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1]or	  g1=g2))

---
inv7 T: all c : Course | Student.(projects.c <: Course)
inv7 T: all c : Course | lone Student.(projects.c <: Course) <: Person
inv7 T: all c : Course | lone Student.(projects.c <: Course)
inv7 T: all c : Course, s : Student | lone s.(projects.c <: Course)
inv7 T: all c : Course, s : Student | lone (s.(projects.c <: Course)) <: Person
inv7 T: all c : Course, s : Student | lone (s.(c.projects <: Course)) <: Person
inv7 T: all c : Course, s : Student | lone c.(s.projects) <: Person
inv7 T: all c : Course, s : Student | lone c.(s.projects <: Person)
inv7 T: all c : Course, s : Student | lone c.(s.projects <: Person) <: Course
inv7 T: all s : Student | lone projects.(s.projects <: Person) <: Course
inv7 S: all s : Student, all c : Course | lone projects.(c.projects <: Course)
inv7 S: all s : Student, all c : Course | lone projects.(c.projects <: Course) <: Person
inv7 T: all c : Course| lone projects.(c.projects <: Course) <: Person
inv7 T: all c : Course| lone projects.(c.projects <: Course) <: Person
inv7 T: all c : Course| lone (projects.(c.projects <: Course) <: Person)
inv7 T: all c : Course| lone (projects.(c.projects <: Course) <: Person)
inv7 T: all c : Course | one (projects.(c.projects <: Course) <: Person)

---
inv7 S: all s : Student, all c : Course | lone s.projects & c.projects
inv7 S: all s : Student, all c : Course | lone s.projects && c.projects
inv7 T: all s : Student, c : Course | lone s.projects && c.projects
inv7 T: all s : Student, c : Course | lone s.projects and c.projects
inv7 T: all s : Student, c : Course | lone (s.projects and c.projects)

---
inv5 T: some projects.Project in Student
inv5 S: all p:porject | Person <:proejcts.pr in Student	  all p:project | some pe:Person <: projects.pr
inv5 S: all p:porject | Person <:proejcts.p in Student	  all p:project | some pe:Person <: projects.pr
inv5 S: all p:project | Person <:projects.p in Student	  all p:project | some pe:Person <: projects.pr
inv5 S: all p:Project | Person <:projects.p in Student	  all p:Project | some pe:Person <: projects.pr

---
inv5 T: all p:Project | projects.Project in Student
inv5 T: all p:Project | projects.Project <:Project in Student
inv5 T: all p:Project | projects.Project in Student
inv5 T: all p:Project | projects.Project in Student
inv5 T: all p:Project | projects.Project in Student <:Person
inv5 T: all p:Project | projects.Project in Student
inv5 T: all p:Project | projects.Project in Student

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv4 T: one Course :> projects
inv4 T: all p:Project | one c:Course | p->c in projects
inv4 T: all p:Project | one c:Course | p->c <: projects
inv4 T: all p:Project | one c:Course | c <: projects
inv4 S: c <: projects

---
inv5 S: Students <: projects & some p->c
inv5 S: Students <: projects & some p->c
inv5 S: Students <: projects
inv5 T: Student <: projects
inv5 T: Student <: projects
inv5 S: Students <: projects & some p->c
inv5 S: Student <: projects & some p->c
inv5 S: Student <: projects & p->c
inv5 T: Student <: projects

---
inv10 T: Course.grades
inv10 T: Course.grades
inv10 T: Course.grades
inv10 T: Course.grades
inv10 T: Course.grades

---
inv7 T: all s:Student, c:Course | lone p:Project | c in s.enrolled and p in c.projects implies p in s.enrolled.c.projects
inv7 S: all s:Student, c:Course | lone p:Project | c in s.enrolled and p in c.projects implies p in s.enrolled
inv7 S: all s:Student, c:Course | lone p:Project | c in s.enrolled and p in c.projects implies p in c.projects
inv7 S: all s:Student, c:Course | lone p:Project | p in c.projects and p in s.projects implies c in s.enrolled
inv7 S: all s:Student, c:Course | lone p:Project | p in c.projects and p in s.projects implies c in s.enrolled

---
inv15 S: all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies (s1 in c.grades.Grade and s2 in c.grades.Grade implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades=prev[s1.(c.grades])))
inv15 S: all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies (s1 in c.grades.Grade and s2 in c.grades.Grade implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades=prev[s1.(c.grades]))))
inv15 S: all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies (s1 in c.grades.Grade and s2 in c.grades.Grade implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades=prev[s1.(c.grades])))
inv15 S: all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies (s1 in c.grades.Grade and s2 in c.grades.Grade implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades=prev[s1.(c.grades]))
inv15 S: all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies (s1 in c.grades.Grade and s2 in c.grades.Grade implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades=prev[s1.(c.grades])
inv15 S: all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies (s1 in c.grades.Grade and s2 in c.grades.Grade implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades=prev[s1.(c.grades])))
inv15 S: all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies (s1 in c.grades.Grade and s2 in c.grades.Grade implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades=prev[s1.(c.grades])))
inv15 S: all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies (s1 in c.grades.Grade and s2 in c.grades.Grade implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades)=prev[s1.(c.grades])))
inv15 S: all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies (s1 in c.grades.Grade and s2 in c.grades.Grade implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades)=prev[s1.(c.grades]))))
inv15 S: all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies (s1 in c.grades.Grade and s2 in c.grades.Grade implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades)=prev[s1.(c.grades]))
inv15 S: all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies ((s1 in c.grades.Grade and s2 in c.grades.Grade) implies (s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades)=prev[s1.(c.grades)])))

---
inv5 T: some y : Project | Student & projects.y
inv5 T: some y : Project | Student & projects.y
inv5 T: some y : Project | Student & projects.y
inv5 T: some y : Project | Student & projects.y
inv5 T: some y : Project | Student & projects.y
inv5 T: no Professor & projects <: Person	  	some projects <: Person
inv5 T: no Professor & projects <: Person	  	all x : Project | some projects.x <: Person
inv5 T: no Professor & projects <: Person	  	all x : Project | some projects.x <: Person
inv5 T: no Professor & projects <: Person	  	all x : Project | some (projects <: Person).x
inv5 T: no Professor & (projects <: Person)	  	all x : Project | some (projects <: Person).x
inv5 T: all x : Project | no Professor & (projects <: Person).x	  	all x : Project | some (projects <: Person).x
inv5 T: all x : Project | (projects <: Person).x in Student	  	all x : Project | some (projects <: Person).x
inv5 T: all x : Project | (projects).x <: Person in Student	  	all x : Project | some (projects <: Person).x

---
inv10 T: no grades & (Professor->Grade)
inv10 T: all x : Professor | no grades & (x->Grade)
inv10 T: all x : Professor | x->Grade not in grades
inv10 T: Professor->Grade not in grades
inv10 T: Professor->Grade

---
inv5 T: all c : Course | c in projects
inv5 T: all c : Course | c in projects
inv5 T: all c : Course | c in projects
inv5 T: all c : Course | some Student.projects.c
inv5 T: all c : Course | some Student.projects.c
inv5 T: all c : Course | all p : Person | some p.projects.c implies p in Student
inv5 T: all c : Course | all p : Person | p.projects.c implies p in Student
inv5 T: all c : Course | all p : Person | some p.projects.c implies p in Student
inv5 T: all c : Course, p : Person | one p.projects.c implies p in Student
inv5 T: all c : Course, p : Person | c in p.projects implies p in Student
inv5 T: all c : Course| some p : Student | c in p.projects

---
inv7 T: all s:Student, c :Course| lone s.projects and s.enrolled.projects
inv7 T: all s:Student| lone s.projects and s.enrolled.projects
inv7 S: all s:Student| lone s.projects and c.projects
inv7 T: all s:Student, c : Course| lone s.projects and c.projects
inv7 T: all s:Student, c : Course| lone s.projects and c.projects

---
inv5 T: projects.Course in Student
inv5 T: all p : Person | p.projects.Course in Student
inv5 T: Person <: projects.Course in Student
inv5 T: (Person & projects.Course) in Student
inv5 T: some p : Person | p.projects.Course in Student
inv5 T: projects.Course in Student

---
inv6 S: all s : Students , c : Course | no (s.enrolled & c) implies c not in (s.projects & c.projects)
inv6 T: all s : Student , c : Course | no (s.enrolled & c) implies c not in (s.projects & c.projects)
inv6 T: all s : Student , c : Course | no (s.enrolled & c) implies c not in (s.projects & c.projects)
inv6 T: all s : Student , c : Course | no (s.enrolled & c) implies c not in (s.projects & c.projects)
inv6 T: all s : Student , c : Course | no (s.enrolled & c) implies c not in (s.projects & c.projects)
inv6 T: all s : Student , c : Course | no (s.enrolled & c) implies c not in (s.projects & c.projects)
inv6 T: all s : Student , c : Course | no (s.enrolled & c) implies c not in (s.projects & c.projects)

---
inv10 S: all p : Person, c : Courses | no (p & Students) implies p not in c.grades
inv10 S: all p : Person, c : Courses| no (p & Students) implies p not in c.grades
inv10 S: all p : Person, c : Course | no (p & Students) implies p not in c.grades
inv10 T: all p : Person, c : Course | no (p & Student) implies p not in c.grades
inv10 T: all p : Person - Student , c : Course | p not in c.grades

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv8 T: all p:Person | p.teaches implies (Person <: enrolled).p
inv8 T: all p:Person | p.teaches implies ~(Person <: enrolled).p
inv8 S: all p:Person | p.teaches implies ^Person <: enrolled).p
inv8 T: all p:Person | p.teaches implies ^(Person <: enrolled).p
inv8 T: all p:Person | p.teaches implies ~(Person <: enrolled).p
inv8 S: all p:Person | p.teaches in not p.enrolled
inv8 S: all p:Person | p.teaches in not enrolled.p
inv8 S: all p:Person | p in not enrolled.p
inv8 S: all p:Person | p in not teaches.p
inv8 S: all p:Person | p in not p.teaches

---
inv5 T: some Person.projects.Course-Student
inv5 T: some Person.projects-Student->Project
inv5 T: some (Person.projects)-(Student->Project)
inv5 T: some (Person->projects)-(Student->Project)
inv5 T: some (projects)-(Student->Project)

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv5 T: all x : Person | x in Person <: projects.Course => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x in (Person <: projects.Course) => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x in (Person :> projects.Course) => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x in projects.Course => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x in Person <: projects.Course => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x->Course in Person <: projects => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x->Course in projects => x in Student	  	all c : Course | some Person <: projects.c
inv5 T: all x : Person | x->Course in projects => x in Student	  	all p : Project | some Person <: projects.p

---
inv13 S: all s : Student, c : Course, g : Grade | g = max[s.(c.grades)] => one (s.projects & c.projects) s.projects)
inv13 S: all s : Student, c : Course, g : Grade | max[s.(c.grades)] => one (s.projects & c.projects) s.projects)
inv13 S: all s : Student, c : Course, g : Grade | max[s.(c.grades)] => one (s.projects & c.projects) s.projects)
inv13 S: all s : Student, c : Course, g : Grade | s = c.grades.max[Student.(c.grades)] => one (s.projects & c.projects) s.projects)
inv13 T: all s : Student, c : Course, g : Grade | s = c.grades.max[Student.(c.grades)] => one (s.projects & c.projects)
inv13 T: all s : Student, c : Course | s = c.grades.max[Student.(c.grades)] => one (s.projects & c.projects)

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv6 S: all x: Students, y: Course | x in y.projects implies x in y.enrolled
inv6 T: all x: Student , y: Course | x in y.projects implies x in y.enrolled
inv6 T: all x: Student , y: Course | x in y.projects implies y in x.enrolled
inv6 T: all x: Student , y: Course | x in y.projects implies x -> y in enrolled
inv6 T: all x: Student , y: Course | x in y.projects implies x -> y in enrolled
inv6 T: all x: Student , y: Project , z: Course | z in x.projects and y in projects.z implies y in x.enrolled

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv7 T: all s:Student, c:Course | lone p:Project | c in s.enrolled and p in c.projects implies p in s.enrolled.c.projects
inv7 S: all s:Student, c:Course | lone p:Project | c in s.enrolled and p in c.projects implies p in s.enrolled
inv7 S: all s:Student, c:Course | lone p:Project | c in s.enrolled and p in c.projects implies p in c.projects
inv7 S: all s:Student, c:Course | lone p:Project | p in c.projects and p in s.projects implies c in s.enrolled
inv7 S: all s:Student, c:Course | lone p:Project | p in c.projects and p in s.projects implies c in s.enrolled

---
inv13 S: all s : Student |
inv13 S: all s : Student |
inv13 S: all s : Student |
inv13 S: all s : Student |
inv13 S: all s : Student |
inv13 S: all s : Student |

---
inv1 T: all a : Course, b : Person | a in b.enrolled implies b in a.grades
inv1 T: all a : Course, b : Person | a in b.enrolled implies b in Course.grades
inv1 T: all a : Course, b : Person | a in b.enrolled implies (b & Student)
inv1 S: all a : Course, b : Person | a in b.enrolled implies b~.Student
inv1 T: all a : Professor, b : Course | a.Person not in b.grades
inv1 T: all a : Professor, b : Course | a not in b.grades
inv1 T: all a : Professor, b : Course | a not in b.grades
inv1 T: all a : Professor, b : Course | a not in b.~grades
inv1 S: all a : Professor, b : Course | a not in b~.grades
inv1 T: all a : Professor, b : Course | a not in b.~grades.Person

---
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies ((all proj:Project | not stud->c in projects) or (one proj:Project | stud->c in projects))

---
inv6 S: all s,p in univ | s in Student and p in Project and s->p in projects implies all c : Course | c->p in projects implies s->c in enrolled
inv6 T: all s,p : univ | s in Student and p in Project and s->p in projects implies all c : Course | c->p in projects implies s->c in enrolled
inv6 T: all s,p : univ | s in Student and p in Project and s->p in projects implies all c : Course | c->p in projects implies s->c in enrolled
inv6 T: all s,p : univ | s in Student and p in Project and s->p in projects implies all c : Course | c->p in projects implies s->c in enrolled
inv6 T: all s,p : univ | s in Student and p in Project and s->p in projects implies all c : Course | c->p in projects implies s->c in enrolled

---
inv7 T: all s,p,c : univ | s in Student and p In Project and c in Course and s->p in projects and c->p in projects implies all p1,p2 : Project | s->p1 in projects and s->p2 in projects implies p1 =p2
inv7 T: all s,p,c : univ | s in Student and p In Project and c in Course and s->p in projects and c->p in projects implies all p1,p2 : Project | s->p1 in projects and s->p2 in projects implies p1=p2
inv7 T: all s,p,c : univ | s in Student and p In Project and c in Course and s->p in projects and c->p in projects implies all p1,p2 : univ | p1 in Project and p2 in Project and s->p1 in projects and s->p2 in projects implies p1=p2
inv7 T: all s,p,c : univ | s in Student and p In Project and c in Course and s->p in projects and c->p in projects implies all p1,p2 : univ | p1 in Project and p2 in Project and s->p1 in projects and s->p2 in projects implies p1=p2
inv7 T: all s,p,c : univ | s in Student and p in Project and c in Course and s->p in projects and c->p in projects implies all p1,p2 : univ | p1 in Project and p2 in Project and s->p1 in projects and s->p2 in projects implies p1=p2

---
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one Course.projects.p
inv4 T: projects in Course one -> Project
inv4 T: Course.projects in Course one -> Project
inv4 T: Course[projects] in Course one -> Project
inv4 T: projects in Course one -> Project
inv4 S: Course/projects in Course one -> Project
inv4 S: this/Course/projects in Course one -> Project
inv4 T: projects in Course one -> Project

---
inv13 T: all c : Course, s : c.grades.Grade | not (some e : c.grades.Grade | c.grades.e > s.grades.s) implies c in (Course <: projects).(s.projects)
inv13 T: all c : Course, s : c.grades.Grade | not (some e : c.grades.Grade | c.grades.e > s.grades.s) implies c in (Course <: projects).(s.projects)
inv13 T: all c : Course, s : enrolled.c | not (some e : enrolled.c | c.grades.e > s.grades.s) implies c in (Course <: projects).(s.projects)
inv13 S: all c : Course, s : enrolled.c | (s in c.grades.Grade) and not (some e : enrolled.c | e in c.grades.Grade and c.grades.e > s.grades.s)) implies c in (Course <: projects).(s.projects)
inv13 S: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and c.grades.e > c.grades.s)) implies c in (Course <: projects).(s.projects)
inv13 S: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : univ | e in c.grades.Grade and c.grades.e > c.grades.s)) implies c in (Course <: projects).(s.projects)
inv13 T: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and c.grades.e > c.grades.s) implies c in (Course <: projects).(s.projects)
inv13 T: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and c.grades.e >= c.grades.s) implies c in (Course <: projects).(s.projects)
inv13 S: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and gt[c.grades.e,c.grades.s] implies c in (Course <: projects).(s.projects)
inv13 T: all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and gt[c.grades.e,c.grades.s]) implies c in (Course <: projects).(s.projects)

---
inv15 S: all disj s1, s2 : Student | some s1.projects & s2.projects implies all p in projects & s2.projects | projects.p.s1 in projects.p.s2 + next[projects.p.s2] + prev[projects.p.s2]
inv15 S: all disj s1, s2 : Student | some s1.projects & s2.projects implies all p in projects & s2.projects | projects.p.s1 in projects.p.s2 + next[projects.p.s2] + prev[projects.p.s2]
inv15 T: all disj s1, s2 : Student | some s1.projects & s2.projects implies all p : projects & s2.projects | projects.p.s1 in projects.p.s2 + next[projects.p.s2] + prev[projects.p.s2]
inv15 T: all disj s1, s2 : Student | some s1.projects & s2.projects implies all p : s1.projects & s2.projects | projects.p.s1 in projects.p.s2 + next[projects.p.s2] + prev[projects.p.s2]
inv15 T: all disj s1, s2 : Student | some s1.projects & s2.projects implies all p : s1.projects & s2.projects | (Course <: projects).p.s1 in (Course <: projects).p.s2 + next[(Course <: projects).p.s2] + prev[(Course <: projects).p.s2]
inv15 T: all disj s1, s2 : Student | some s1.projects & s2.projects implies all p : s1.projects & s2.projects | projects.p.s1 in projects.p.s2 + next[projects.p.s2] + prev[projects.p.s2]
inv15 T: all disj s1, s2 : Student | some s1.projects & s2.projects implies all p : s1.projects & s2.projects | projects.p.s1 in projects.p.s2 + next[projects.p.s2] + prev[projects.p.s2]

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv10 T: all c : Course | Student in c.grades.~Person
inv10 T: all c : Course | Student in c.grades.~Grade
inv10 T: all c : Course | Student in c.^grades
inv10 T: all c : Course | Student in c.^grades.Person
inv10 T: all c : Course | all p : Person | p in c.grades implies p in Student

---
inv13 T: all s : Student | all c : Course | s in first.c.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.(c.grades.Grade) implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.c.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.c.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.(c.grades) implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects

---
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.c implies s in c.projects
inv13 T: all s : Student | all c : Course | all g : c.grades | c in s.enrolled and s in first.g implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in last.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s = last.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and last.grades.Grade = s implies s in c.projects

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv4 T: all p : Project | lone Course.p
inv4 T: all p : Project, c : Course | lone c.p
inv4 T: all p : Project, c : Course | lone c.projects.p
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone Course.projects.p
inv4 S: all p : Project | one c : Courde | lone c.projects.p
inv4 T: all p : Project | one c : Course | lone c.projects.p

---
inv5 T: all s : Person, p : Project | some s.projects.p and no ( s & Student ) implies p not in s.projects
inv5 T: all s : Person, p : Project | some s.projects.p
inv5 T: all s : Person, p : Project | some projects.p
inv5 T: all s : Person, p : Project | some p in s.projects
inv5 T: all s : Person, p : Project | some (p in s.projects)

---
inv5 T: all s : Person, p : Project | ( no ( s & Student ) implies p not in s.projects ) and some s.projects.p
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects | some s.projects.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and some s.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p some s.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects

---
inv6 S: all s : Student, p : Projects, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.projects
inv6 S: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) implies no (s.projects & p)

---
inv7 S: all s : Student, p : Project, c : Course | no no (p & c.projects) implies p in s.projects
inv7 T: all s : Student, p : Project, c : Course | lone (s.projects & c.projects) iff (s.enrolled & c)
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.^p
inv7 T: all s : Student, p : Project, c : Course | lone s.^projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Student.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Person.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone c.projects.p

---
inv9 S: all p1,p2 : Professor, c : Course | c & p1.teaches and c & p2.teaches implies
inv9 T: all p1,p2 : Person, c : Course | ( c & p1.teaches & p2.teaches ) implies no (p2.enrolled & c) or no (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | no ( c & p1.teaches & p2.teaches ) implies (p2.enrolled & c) or  (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c and p2.teaches.c

---
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
inv7 T: all stud:Student, c:Course | stud->c in enrolled implies ((all proj:Project | not stud->c in projects) or (one proj:Project | stud->c in projects))

---
inv13 T: all c : Course, s : Student | last(Person.c.grades) = s.c.grades implies c in s.projects.~projects
inv13 T: all c : Course, s : Student | last(Person.(c.grades)) = s.c.grades implies c in s.projects.~projects
inv13 T: all c : Course | c.grades.last(Person.(c.grades)) in projects.(c.projects)
inv13 T: all c : Course | c.grades.last(Person.(c.grades)) in projects.(c.projects)
inv13 T: all c : Course | c.grades.last[Person.(c.grades)] in projects.(c.projects)
inv13 T: all c : Course | c.grades.(last[Person.(c.grades)]) in projects.(c.projects)
inv13 T: all c : Course | c.grades.last[Person.(c.grades)] in projects.(c.projects)
inv13 T: all c : Course | c.grades.last[Person.(c.grades)] in (Person <: projects).(c.projects)
inv13 T: all c : Course | c.grades.last[Person.(c.grades)] in (Person <: projects).(c.projects)
inv13 T: all c : Course | (c.grades).last[Person.(c.grades)] in (Person <: projects).(c.projects)
inv13 T: all c : Course | (c.grades).last[Person.(c.grades)] in projects.(c.projects)
inv13 T: all c : Course | (c.grades).last[Person.(c.grades)] in projects.(c.projects)

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv11 S: all s : Students, C : Course, g : Grade | s->g implies c in a.enrolled.grades
inv11 T: all s : Student, C : Course, g : Grade | s->g implies c in a.enrolled.grades
inv11 T: all s : Student, C : Course, g : Grade | s->g implies c in a.enrolled
inv11 T: all s : Student, C : Course, g : Grade | s->g implies c in s.enrolled
inv11 T: all s : Student, C : Course, g : Grade | s->g implies c in s.enrolled.grades
inv11 S: all s : Student, C : Course, g : Grade | s->g in c.grades implies c in s.enrolled

---
inv4 S: all c: Course | all c.projects
inv4 T: all c: Course | c.projects
inv4 S: all p: Project | c.projects.p
inv4 S: all p: Project, all c: Course | c.projects.p
inv4 T: all p: Project| all c: Course | c.projects.p

---
inv5 T: all p: Project | some (projects.p in Student)
inv5 T: all p: Project | (projects.p in Student)
inv5 T: all p: Project | some (projects.p in Student)
inv5 T: all p: Project | some projects.p in Student
inv5 T: all p: Project | projects.p in Student and some projects.p
inv5 T: all p: Project | projects.p in Student and some Student.projects
inv5 S: all p: Project, some s: Student | projects.p in Student and (some s.projects)
inv5 S: all p: Project, some s: Student | projects.p in Student and (s.projects)
inv5 S: all p: Project, some s: Student | projects.p in Student and s.projects
inv5 S: all p: Project some s: Student | projects.p in Student and s.projects
inv5 T: all p: Project | some s: Student | projects.p in Student and s.projects
inv5 S: all p: Project, some s: Student | projects.p in Student and s.projects
inv5 T: all p: Project | some s: Student | projects.p in Student and s.projects
inv5 T: all p: Project | one s: Student | projects.p in Student and s.projects
inv5 T: all p: Project | some s: Student | projects.p in Student and s.projects in Project
inv5 T: all p: Project | some s: Student | projects.p in Student and s.projects in Project
inv5 T: all p: Project | projects.p in Student and some projects.Project
inv5 T: all p: Project | projects.p in Student and some Student.projects.Project
inv5 T: all p: Project | projects.p in Student and some Student.projects

---
inv10 S: all g: Grades | grades.g in Student
inv10 T: all g: Grade | grades.g in Student
inv10 T: all p: Person, g: Grade | p->g implies p in Student
inv10 S: all p: Student, g: Grade | Course.grandes implies p->g
inv10 T: all p: Student, g: Grade | Course.grades implies p->g

---
inv4 T: all p : Project | lone Course.p
inv4 T: all p : Project, c : Course | lone c.p
inv4 T: all p : Project, c : Course | lone c.projects.p
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone Course.projects.p
inv4 S: all p : Project | one c : Courde | lone c.projects.p
inv4 T: all p : Project | one c : Course | lone c.projects.p

---
inv5 T: all s : Person, p : Project | some s.projects.p and no ( s & Student ) implies p not in s.projects
inv5 T: all s : Person, p : Project | some s.projects.p
inv5 T: all s : Person, p : Project | some projects.p
inv5 T: all s : Person, p : Project | some p in s.projects
inv5 T: all s : Person, p : Project | some (p in s.projects)

---
inv5 T: all s : Person, p : Project | ( no ( s & Student ) implies p not in s.projects ) and some s.projects.p
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects | some s.projects.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and some s.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p some s.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects

---
inv6 S: all s : Student, p : Projects, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.projects
inv6 S: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) implies no (s.projects & p)

---
inv7 S: all s : Student, p : Project, c : Course | no no (p & c.projects) implies p in s.projects
inv7 T: all s : Student, p : Project, c : Course | lone (s.projects & c.projects) iff (s.enrolled & c)
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.^p
inv7 T: all s : Student, p : Project, c : Course | lone s.^projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Student.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Person.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone c.projects.p

---
inv7 T: all s : Student, c : Course | lone p : Project | p in s.projects iff some (c in s.enrolled) and  some (p & c.projects)
inv7 T: all s : Student, c : Course | lone p : Project | lone p in s.projects
inv7 S: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some (c & s.enrolled) and (p & c.course) implies p_act in s.projects
inv7 T: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some (c & s.enrolled) and (p & c.projects) implies p_act in s.projects
inv7 T: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some ((c & s.enrolled) and (p & c.projects)) implies p_act in s.projects

---
inv9 S: all p1,p2 : Professor, c : Course | c & p1.teaches and c & p2.teaches implies
inv9 T: all p1,p2 : Person, c : Course | ( c & p1.teaches & p2.teaches ) implies no (p2.enrolled & c) or no (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | no ( c & p1.teaches & p2.teaches ) implies (p2.enrolled & c) or  (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c and p2.teaches.c

---
inv10 S: all p : Person, c : Course | no ( p & Student ) implies p not in c.grade
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies no c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies not c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not c.p
inv10 T: all p : Person, c : Course | no ( p & Student ) implies no c.p
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.grades
inv10 T: all p : Person - Student, c : Course | no c.p

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv5 T: all p : Project | some (p.~(Person <: projects) in Student)
inv5 T: all p : Project | some p.~(Person <: projects) in Student
inv5 T: all p : Project | p.~(some Person <: projects) in Student
inv5 T: all p : Project | (some p.~(Person <: projects)) in Student
inv5 T: all p : Project | p.~(Person <: projects) in Student	    some projects.Project
inv5 T: all p : Project | p.~(Person <: projects) in Student	    some projects.Project

---
inv4 S: Project = Courses one -> projects
inv4 S: Project in Courses one -> projects
inv4 T: Project in Course one -> projects
inv4 S: Project = Course one -> projects
inv4 T: Course one -> projects
inv4 S: all p:Project | one c1,c2:Course | c1->p in Projects and c2->p in Projects implies c1=c2

---
inv13 T: all s:Student,c:Course,g:Grade| one g1:Grade | c->s->g1 in grades and c->s->g in grades and g1>=g implies (one p:Project | c->p in projects and s->p in projects)
inv13 T: all s:Student,c:Course,g:Grade| one g1:Grade | c->s->g1 in grades and c->s->g in grades and g1 >= g implies (one p:Project | c->p in projects and s->p in projects)
inv13 T: all s:Student,c:Course,g:Grade| one g1:Grade | c->s->g1 in grades and c->s->g in grades and (g1 >= g) implies (one p:Project | c->p in projects and s->p in projects)
inv13 T: all s:Student,c:Course,g:Grade| one g1:Grade | c->s->g1 in grades and c->s->g in grades and (g>=g) implies (one p:Project | c->p in projects and s->p in projects)
inv13 T: all s:Student,c:Course,g:Grade| one g1:Grade | c->s->g1 in grades and c->s->g in grades and (g>=g) implies (one p:Project | c->p in projects and s->p in projects)

---
inv4 T: all p : Project | lone Course.p
inv4 T: all p : Project, c : Course | lone c.p
inv4 T: all p : Project, c : Course | lone c.projects.p
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone Course.projects.p
inv4 S: all p : Project | one c : Courde | lone c.projects.p
inv4 T: all p : Project | one c : Course | lone c.projects.p

---
inv5 T: all s : Person, p : Project | some s.projects.p and no ( s & Student ) implies p not in s.projects
inv5 T: all s : Person, p : Project | some s.projects.p
inv5 T: all s : Person, p : Project | some projects.p
inv5 T: all s : Person, p : Project | some p in s.projects
inv5 T: all s : Person, p : Project | some (p in s.projects)

---
inv5 T: all s : Person, p : Project | ( no ( s & Student ) implies p not in s.projects ) and some s.projects.p
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects | some s.projects.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and some s.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p some s.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects

---
inv6 S: all s : Student, p : Projects, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.projects
inv6 S: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) implies no (s.projects & p)

---
inv7 S: all s : Student, p : Project, c : Course | no no (p & c.projects) implies p in s.projects
inv7 T: all s : Student, p : Project, c : Course | lone (s.projects & c.projects) iff (s.enrolled & c)
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.^p
inv7 T: all s : Student, p : Project, c : Course | lone s.^projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Student.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Person.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone c.projects.p

---
inv7 T: all s : Student, c : Course | lone p : Project | p in s.projects iff some (c in s.enrolled) and  some (p & c.projects)
inv7 T: all s : Student, c : Course | lone p : Project | lone p in s.projects
inv7 S: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some (c & s.enrolled) and (p & c.course) implies p_act in s.projects
inv7 T: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some (c & s.enrolled) and (p & c.projects) implies p_act in s.projects
inv7 T: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some ((c & s.enrolled) and (p & c.projects)) implies p_act in s.projects

---
inv9 S: all p1,p2 : Professor, c : Course | c & p1.teaches and c & p2.teaches implies
inv9 T: all p1,p2 : Person, c : Course | ( c & p1.teaches & p2.teaches ) implies no (p2.enrolled & c) or no (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | no ( c & p1.teaches & p2.teaches ) implies (p2.enrolled & c) or  (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c and p2.teaches.c

---
inv10 S: all p : Person, c : Course | no ( p & Student ) implies p not in c.grade
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies no c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies not c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not c.p
inv10 T: all p : Person, c : Course | no ( p & Student ) implies no c.p
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.grades
inv10 T: all p : Person - Student, c : Course | no c.p

---
inv13 T: all s:Student, c: Course | c.grades.Person.first implies some (s.projects & c.projects)
inv13 T: all s:Student, c: Course | c.grades.s.first implies some (s.projects & c.projects)
inv13 T: all s:Student, c: Course | first[c.grades.s] implies some (s.projects & c.projects)
inv13 T: all s:Student, c: Course | first[c.grades.s] implies (s.projects & c.projects)
inv13 T: all s:Student, c: Course | c.grades.s implies (s.projects & c.projects)

---
inv13 T: all s:Student, c: Course | first.c.grades.s implies some (s.projects & c.projects)
inv13 T: all s:Student, c: Course | first.c.grades = s implies some (s.projects & c.projects)
inv13 T: all s:Student, c: Course | first.c.grades implies some (s.projects & c.projects)
inv13 T: all s:Student, c: Course | first.c.grades.s implies some (s.projects & c.projects)
inv13 T: all s:Student, c: Course | first.c.grades.Student implies some (s.projects & c.projects)
inv13 T: all s:Student, c: Course | first.c.grades.Grade implies some (s.projects & c.projects)
inv13 T: all s:Student, c: Course | c.grades implies (s.projects & c.projects)
inv13 T: all s:Student, c: Course | c.grades -> s implies (s.projects & c.projects)
inv13 T: all s:Student, c: Course | first.c.grades implies (s.projects & c.projects)
inv13 T: all s:Student, c: Course | first.c.grades.Grade implies (s.projects & c.projects)
inv13 T: all s:Student, c: Course | first.c.grades.Person implies (s.projects & c.projects)
inv13 T: all s:Student, c: Course | first.(s.c.grades) implies (s.projects & c.projects)
inv13 T: all s:Student, c: Course | first.(s.c.grades) = s implies (s.projects & c.projects)
inv13 T: all s:Student, c: Course | first.(s.c.grades) = s implies (s.projects & c.projects)
inv13 T: all s:Student, c: Course | (first.(s.c.grades) & s) implies (s.projects & c.projects)
inv13 T: all s:Student, c: Course | (s.c.grades) & s implies (s.projects & c.projects)
inv13 T: all s:Student, c: Course | (s.c.grades) implies (s.projects & c.projects)
inv13 T: all s:Person, c: Course | ((s.c.grades) & s)implies (s.projects & c.projects)
inv13 T: all s:Person, c: Course | some (s.projects & c.projects & s.c.grades)
inv13 T: all s:Person, c: Course | some (s.projects & c.projects && s.c.grades)
inv13 T: all s:Person, c: Course | s->Grade implies (s.projects & c.projects)
inv13 T: all s:Person, c: Course | first.(s->Grade) implies (s.projects & c.projects)

---
inv1 T: all e: Student | e in e.Course
inv1 T: all e: Student | e in e.Course.grades
inv1 T: all p: Person | p.Student & p.enrolled.Course
inv1 S: all p: Person | set p in p.Student & p.enrolled.Course
inv1 S: all p: Person | set p in p.Student & p.Course.enrolled
inv1 T: all p: Person | (p.enrolled).~Student
inv1 T: all p: Person | Student.(p.enrolled)
inv1 T: all p: Person | p.enrolled
inv1 T: all p: Person | p.enrolled.Course
inv1 T: all p: Person | set p in p.Student & p.enrolled
inv1 S: all p: Person | set (p in p.Student & p.enrolled)
inv1 S: all p: Person | set p in Student & p.enrolled
inv1 S: all p: Person | p not in Student implies no c.enrolled

---
inv1 T: all c: Course | c.enrolled in Student implies c.enrolled not in teaches
inv5 S: all disj s1,s2: student | s1!=s2 lone s1.projects & s2.projects
inv5 S: all disj s1,s2: Student | s1!=s2 lone s1.projects & s2.projects
inv5 S: all disj s1, s2: Student | s1 != s2 lone s1.projects & s2.projects
inv5 S: all disj s1, s2: Student | s1 != s2 lone s1.projects & s2.projects
inv5 T: all disj s1, s2: Student | s1 != s2 iden lone s1.projects & s2.projects
inv5 S: all disj (s1, s2): Student | s1 != s2 iden lone s1.projects & s2.projects
inv5 T: all disj s1,s2: Student | s1 != s2 iden lone s1.projects & s2.projects
inv5 T: all disj s1,s2: Student | s1 != s2 iden lone (s1.projects & s2.projects)
inv5 T: all  s1,s2: Student | s1 != s2 iden lone (s1.projects & s2.projects)

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv8 T: all p : Professor | all c: Course | c in p.teaches implies c not in p.enrolled	}		fun colleagues[p : Professor] : set Professor{		p implies (Professor-p).teaches = (p.teaches)
inv8 T: all p : Professor | all c: Course | c in p.teaches implies c not in p.enrolled	}		fun colleagues[p : Professor] : set Professor{		all p : Professor | p implies (Professor-p).teaches = (p.teaches)
inv8 T: all p : Professor | all c: Course | c in p.teaches implies c not in p.enrolled	}		fun colleagues[p : Professor] : set Professor{		all p1 : Professor | p1 implies (Professor-p).teaches = (p.teaches)
inv8 T: all p : Professor | all c: Course | c in p.teaches implies c not in p.enrolled	}		fun colleagues[p : Professor] : set Professor{		all p1 : Professor | p1 implies p1.teaches = (p.teaches)
inv8 T: all p : Professor | all c: Course | c in p.teaches implies c not in p.enrolled	}		fun colleagues[p : Professor] : set Professor{		Professor-p.teaches = (p.teaches)

---
inv10 T: all c : Course | Student in c.grades.~Person
inv10 T: all c : Course | Student in c.grades.~Grade
inv10 T: all c : Course | Student in c.^grades
inv10 T: all c : Course | Student in c.^grades.Person
inv10 T: all c : Course | all p : Person | p in c.grades implies p in Student

---
inv13 T: all s : Student | all c : Course | s in first.c.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.(c.grades.Grade) implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.c.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.c.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.(c.grades) implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects

---
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.c implies s in c.projects
inv13 T: all s : Student | all c : Course | all g : c.grades | c in s.enrolled and s in first.g implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in last.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s = last.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and last.grades.Grade = s implies s in c.projects

---
inv13 S: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #[c.projects&s1.projects]=1
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #(c.projects&s1.projects)=1
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #c.projects&s1.projects=1
inv13 T: all s : Student | all c : Course | all g : Grade | all p: c.projects&s.projects | (s->g) in max.c.grades implies #p=1
inv13 T: all s : Student | all c : Course | all g : Grade | all p: c.projects&s.projects | (s->g) in max.c.grades implies #p=1

---
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all c : Course | all g : Grade | s in max.c.grades.Grade implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | all g : Grade | g = max.c.grades and s->g in c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | all g : Grade | s->g in c.grades and g = max.c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | s->g in c.grades and g = max.c.grades implies c.projects&s.projects != none

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv14 T: all s : Student , p1,p2 : Project| p1!=p2 and (p1+p2) in s.projects implies not p1.~projects & p2.~projects
inv14 T: all s : Student , p1,p2 : Project| p1!=p2 and (p1+p2) in s.projects implies (not p1.~projects & p2.~projects)
inv14 T: all s : Student , p1,p2 : Project| (p1!=p2 and (p1+p2) in s.projects) implies (not p1.~projects & p2.~projects)
inv14 T: all s : Student , p1,p2 : Project| (p1!=p2 and ({p1}+{p2}) in s.projects) implies (not p1.~projects & p2.~projects)
inv14 T: all s : Student , p1,p2 : Project| (p1!=p2 ) implies (not p1.~projects & p2.~projects)
inv14 T: all s : Student , p1,p2 : Project| (p1!=p2 and (p1+p2) in s.projects) implies (not p1)
inv14 T: all s : Student | all p1,p2 : Project | (p1!=p2 and (p1+p2) in s.projects) implies (not p1.~projects & p2.~projects)
inv14 T: all s : Student , p1,p2 : Project | (p1!=p2 and ((p1+p2) in s.projects)) implies (not p1.~projects & p2.~projects)
inv14 T: all s : Student , p1,p2 : Project | (p1!=p2 and ((p1+p2) in s.projects)) implies (not p1.projects & p2.~projects)
inv14 T: all s : Student , p1,p2 : Project | (p1!=p2 and ((p1+p2) in s.projects)) implies (not p1.projects & p2.projects)

---
inv14 T: all s : Student , p1,p2 : Project | (p1!=p2 and p1 in s.projects and p2 in s.projects) implies (not p1.~projects & p2.~projects )
inv14 T: all s : Student , p1,p2 : Project | (p1!=p2 and p1 in s.projects and p2 in s.projects) implies (not (Person :> projects.p1) & (Person :> projects.p2) )
inv14 S: all s : Student ,p,p1: Project | (p+p1) in s.projects implies not p.projects
inv14 S: all s : Student , p,p1: Project | (p+p1) in s.projects implies not p.projects
inv14 S: all s : Student , p,p1: Project | (p+p1) in s.projects implies (not p.projects & p1.projects)
inv14 S: all s : Student, p,p1: Project | (p+p1) in s.projects
inv14 S: all s : Student, p,p1: Project | (p) in s.projects
inv14 S: all s : Student, p,p1: Project | (p+p1) in s.projects implies (p!=p1)
inv14 S: all s : Student, p,p1: Project | (p+p1) in s.projects
inv14 S: all s : Student, p,p1: Project | p in s.projects implies p1 in s.projects

---
inv4 T: all p : Project | lone Course.p
inv4 T: all p : Project, c : Course | lone c.p
inv4 T: all p : Project, c : Course | lone c.projects.p
inv4 T: all p : Project | lone projects.p
inv4 T: all p : Project | lone Course.projects.p
inv4 S: all p : Project | one c : Courde | lone c.projects.p
inv4 T: all p : Project | one c : Course | lone c.projects.p

---
inv5 T: all s : Person, p : Project | some s.projects.p and no ( s & Student ) implies p not in s.projects
inv5 T: all s : Person, p : Project | some s.projects.p
inv5 T: all s : Person, p : Project | some projects.p
inv5 T: all s : Person, p : Project | some p in s.projects
inv5 T: all s : Person, p : Project | some (p in s.projects)

---
inv5 T: all s : Person, p : Project | ( no ( s & Student ) implies p not in s.projects ) and some s.projects.p
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects | some s.projects.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and some s.p
inv5 T: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p some s.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p in s1.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
inv5 S: all s : Person, p : Project | no ( s & Student ) implies p not in s.projects

---
inv6 S: all s : Student, p : Projects, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.porjects
inv6 T: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.projects
inv6 S: all s : Student, p : Project, c : Course | ( no (s.enrolled & c) implies no (s.projects & p)

---
inv7 S: all s : Student, p : Project, c : Course | no no (p & c.projects) implies p in s.projects
inv7 T: all s : Student, p : Project, c : Course | lone (s.projects & c.projects) iff (s.enrolled & c)
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.^p
inv7 T: all s : Student, p : Project, c : Course | lone s.^projects.p
inv7 T: all s : Student, p : Project, c : Course | lone projects.p
inv7 T: all s : Student, p : Project, c : Course | lone s.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Student.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone Person.projects.p
inv7 T: all s : Student, p : Project, c : Course | lone c.projects.p

---
inv7 T: all s : Student, c : Course | lone p : Project | p in s.projects iff some (c in s.enrolled) and  some (p & c.projects)
inv7 T: all s : Student, c : Course | lone p : Project | lone p in s.projects
inv7 S: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some (c & s.enrolled) and (p & c.course) implies p_act in s.projects
inv7 T: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some (c & s.enrolled) and (p & c.projects) implies p_act in s.projects
inv7 T: all  s : Student, c : Course, p : Project | 	    lone p_act : Project | 	    some ((c & s.enrolled) and (p & c.projects)) implies p_act in s.projects

---
inv9 S: all p1,p2 : Professor, c : Course | c & p1.teaches and c & p2.teaches implies
inv9 T: all p1,p2 : Person, c : Course | ( c & p1.teaches & p2.teaches ) implies no (p2.enrolled & c) or no (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | no ( c & p1.teaches & p2.teaches ) implies (p2.enrolled & c) or  (p1.enrolled & c)
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c
inv9 T: all p1,p2 : Person, c : Course | p1.teaches.c and p2.teaches.c

---
inv10 S: all p : Person, c : Course | no ( p & Student ) implies p not in c.grade
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies no c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies not c.p->grades
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not c.p
inv10 T: all p : Person, c : Course | no ( p & Student ) implies no c.p
inv10 T: all p : Person, c : Course | no ( p & Student ) implies p not in c.grades
inv10 T: all p : Person - Student, c : Course | no c.p

---
inv4 S: all p : Projects | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one projects.p
inv4 T: all p : Project | one (Course :> projects).p
inv4 T: all p : Project | one (projects).p
inv4 T: all p : Project | one (projects <: Course).p
inv4 T: all p : Project | one (projects :> Course).p

---
inv13 T: all s : Student | all c : Course | 	  	s in c.grades.Grade.max implies (some p : Project | p in c.projects and p in s.projects)
inv13 S: all s : Student | all c : Course | 	  	s in c.grades.Grade.max() implies (some p : Project | p in c.projects and p in s.projects)
inv13 T: all s : Student | all c : Course | 	  	s in c.grades.Grade.max[] implies (some p : Project | p in c.projects and p in s.projects)
inv13 T: all s : Student | all c : Course | 	  	s in c.grades.Person.max implies (some p : Project | p in c.projects and p in s.projects)
inv13 T: all s : Student | all c : Course | 	  	s in c.grades.Person.max[] implies (some p : Project | p in c.projects and p in s.projects)
inv13 T: all s : Student | all c : Course | 	  	s in c.grades.max[c.grades.Person] implies (some p : Project | p in c.projects and p in s.projects)
inv13 S: all s : Student | all c : Course | 	  	s in c.grades.Grade.max[c.grades.Person] implies (some p : Project | p in c.projects and p in s.projects)
inv13 T: all s : Student | all c : Course | 	  	s in max[c.grades.Person] implies (some p : Project | p in c.projects and p in s.projects)

---
inv13 T: all s : Student | all c : Course | some g1 : Grade |   	  	g1 in c.grades.Person.last implies (some p : Project | p in c.projects and p in s.projects)
inv13 T: all s : Student | all c : Course | some g1 : Grade |   	  	g1 in Person.(c.grades).last implies (some p : Project | p in c.projects and p in s.projects)
inv13 T: all s : Student | all c : Course | some g1 : Grade |   	  	g1 in (Person.(c.grades)).last implies (some p : Project | p in c.projects and p in s.projects)
inv13 S: all s : Student | all c : Course | some g1 : Grade |   	  	g1 in (Person.(c.grades.last) implies (some p : Project | p in c.projects and p in s.projects)
inv13 T: all s : Student | all c : Course | some g1 : Grade |   	  	g1 in Person.(c.grades.last) implies (some p : Project | p in c.projects and p in s.projects)

---
inv13 T: all s : Student | all c : Course | some g1 : Grade |   	  	g1 in Person.(c.grades).last implies (some p : Project | p in c.projects and p in s.projects)
inv13 T: all s : Student | all c : Course | some g1 : Grade |   	  	g1 in (Person.(c.grades)).last implies (some p : Project | p in c.projects and p in s.projects)
inv13 T: all s : Student | all c : Course | some g1 : Grade |   	  	g1 in last.(Person.(c.grades)) implies (some p : Project | p in c.projects and p in s.projects)
inv13 S: all s : Student | all c : Course | some g1 : Grade |   	  	g1 in (Person.(c.grades)).last() implies (some p : Project | p in c.projects and p in s.projects)
inv13 T: all s : Student | all c : Course | some g1 : Grade |   	  	g1 in (Person.(c.grades)).last implies (some p : Project | p in c.projects and p in s.projects)
inv13 T: all s : Student | all c : Course | some g1 : Grade |   	  	g1 in (Person.(c.grades).last) implies (some p : Project | p in c.projects and p in s.projects)

---
inv10 S: all p : Professor | all g : grade | p->g not in grades
inv10 S: all p : Professor | all g : grade | p->g not in Course.grades
inv10 T: all p : Professor | all g : Grade | p->g not in grades
inv10 T: all p : Professor | all g : Grade | p.g not in grades
inv10 T: all p : Professor | all g : Grade | p*g not in grades

---
inv4 S: one c:Course | some p:Projects | c->p in projects
inv4 S: one c:Course | all p:Projects | c->p in projects
inv4 S: some c1,c2:Course | all p:Projects | c1->p in projects and c2->p in projects implies c1=c2
inv4 S: some c1,c2:Course | some p:Projects | c1->p in projects and c2->p in projects implies c1=c2
inv4 S: some c1,c2:Course | some p:Projects | c1->p in projects and c2->p in projects implies c1=c2

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv3 T: all c : Course | c.teaches
inv3 T: all c : Course | teaches.c
inv3 S: all c : Course | some t : Professor | p.teaches.c
inv3 T: all c : Course | some t : Professor | t.teaches.c
inv3 T: all c : Course | some p : Professor | p.teaches
inv3 T: all p : Professor | p.teaches
inv3 T: all p : Professor | p.teaches
inv3 T: all p : Professor | p.teaches

---
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
inv14 T: all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects

---
inv10 T: all c : Course | Student in c.grades.~Person
inv10 T: all c : Course | Student in c.grades.~Grade
inv10 T: all c : Course | Student in c.^grades
inv10 T: all c : Course | Student in c.^grades.Person
inv10 T: all c : Course | all p : Person | p in c.grades implies p in Student

---
inv13 T: all s : Student | all c : Course | s in first.c.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.(c.grades.Grade) implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.c.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.c.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | s in first.(c.grades) implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects

---
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in first.c implies s in c.projects
inv13 T: all s : Student | all c : Course | all g : c.grades | c in s.enrolled and s in first.g implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s in last.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and s = last.Grade implies s in c.projects
inv13 T: all s : Student | all c : Course | c in s.enrolled and last.grades.Grade = s implies s in c.projects

---
inv13 S: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #[c.projects&s1.projects]=1
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #(c.projects&s1.projects)=1
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #c.projects&s1.projects=1
inv13 T: all s : Student | all c : Course | all g : Grade | all p: c.projects&s.projects | (s->g) in max.c.grades implies #p=1
inv13 T: all s : Student | all c : Course | all g : Grade | all p: c.projects&s.projects | (s->g) in max.c.grades implies #p=1

---
inv13 T: all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all c : Course | all g : Grade | s in max.c.grades.Grade implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | all g : Grade | g = max.c.grades and s->g in c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | all g : Grade | s->g in c.grades and g = max.c.grades implies c.projects&s.projects != none
inv13 T: all s : Student | all g : Grade | all c : Course | s->g in c.grades and g = max.c.grades implies c.projects&s.projects != none

---
inv3 T: all u : User | ~allIds[u].allIds[u] in iden	}		fun allIds[u : User] : one User -> set Id {		u <: profile.Work.ids
inv3 T: all u : User | ~allIds[u].allIds[u] in iden	}		fun allIds[u : User] : one User -> set Id {		profile.Work.ids
inv3 S: all u : User | ~allIds[u].allIds[u] in iden	}		fun allIds[u : User] : set Id {		u.profile.Work.ids
inv3 S: all u : User | ~allIds[u].allIds[u] in iden	}		fun allIds[u : User] : set Id {		u.profile.Work.ids
inv3 S: all u : User | ~allIds[u].allIds[u] in iden	}		fun allIds(u : User) : set Id {		u.profile.Work.ids
inv3 S: all u : User, some id1, id2 : Id | some u.profile.Work.id1 and u.profile.Work.id2 implies id1 != id2
inv3 S: all u : User, some id1, id2 : Id | some u.profile.Work.id1 and u.profile.Work.id2 implies id1 != id2
inv3 T: all u : User | some id1, id2 : Id | some u.profile.Work.id1 and u.profile.Work.id2 implies id1 != id2
inv3 T: all u : User | some id1, id2 : Id | some u.profile.ids.id1 and u.profile.ids.id2 implies id1 != id2
inv3 T: all u : User | some id1, id2 : Id | some u.profile.ids.id1 and u.profile.ids.id2 implies id1 != id2

---
inv1 T: visible.Work implies User.profile
inv1 T: profile.source & visible.Work implies User.profile
inv1 T: profile.source and visible.Work implies User.profile
inv1 T: profile.source and source.visible implies User.profile
inv1 T: profile.source and source.visible implies User.profile
inv1 T: profile.source and source.visible
inv1 T: source.profile and source.visible
inv1 T: profile.source and source.visible
inv1 T: User.visible implies User.profile
inv1 T: User.visible implies profile.User

---
inv4 S: all u : User | all w1, w2: u.profile | (no (w1.ids <: w2.ids) && w1 in u.visible) implies not w2 u.visible
inv4 T: all u : User | all w1, w2: u.profile | (no (w1.ids <: w2.ids) && w1 in u.visible) implies not w2 u.visible
inv4 T: all u : User | all disj w1, w2: u.profile | (no (w1.ids <: w2.ids) && w1 in u.visible) implies not w2 u.visible
inv2 T: all u : User, w : Work | u.profile.w.source in (u + Insitution)
inv2 T: all u : User, w : Work | u.profile.w.source in (u + Insitution)
inv2 S: all u : User, w : Work | u->profile.w.source in (u + Insitution)
inv2 T: all u : User, w : Work | u->profile.w.source in (u + Institution)
inv2 T: all u : User, w : Work | (u->profile).w.source in (u + Institution)
inv2 T: all u : User | (u->profile)->source in (u + Institution)
inv2 T: all u : User | u->(profile->source) in (u + Institution)

---
inv2 S: all u:User, w:Work | w in u.profile implies (u in w.source or (some Intitution in w.source))
inv2 T: all u:User, w:Work | w in u.profile implies (u in w.source or (some Institution in w.source))
inv2 T: all u:User, w:Work | w in u.profile implies (u in w.source) or (some Institution in w.source)
inv2 T: all u:User, w:Work | w in u.profile implies (u in w.source) or (some Institution in w.source)
inv2 T: all u:User, w:Work | w in u.profile implies (u in w.source) or (some Institution in w.source)

---
inv3 S: all w: Work | all disj i1,i2: Id | all disj s1, s2: Source | profile.w and w.s1 and w.i1 implies
inv3 T: all w: Work | all disj i1,i2: Id | all disj s1, s2: Source | profile.w and w.s1 and w.i1 implies no w.s2 and no w.i2
inv3 T: all w: Work | all disj i1,i2: Id | all disj s1, s2: Source | profile.w and s1 in w.source and i1 in w.ids implies no w.s2 and no w.i2
inv3 T: all w: Work | all disj i1,i2: Id | all disj s1, s2: Source | profile.w and s1 in w.source and i1 in w.ids implies no s2 in w.source and no i2 in w.ids
inv3 T: all w: Work | some s: Source | profile.w in w.s
inv3 T: all w: Work | some s: Source | profile.w in w.s implies one w.ids
inv3 T: all w: Work | some s: Source | profile.w in w.Source implies one w.ids
inv3 T: all w: Work | some s: Source | User.profile in w.s implies one w.ids
inv3 T: all w: Work | some s: Source | profile.w in w.s implies one w.ids
inv3 T: all w: Work | some s: Source | profile.w and w.s implies one w.ids
inv3 T: all w: Work | some s: Source | profile.w and w.s implies one w.ids
inv3 T: all s1, s2: Source | Work.s1 != Work.s2
inv3 T: all s1, s2: Source | all w1, w2: Work| s1.profile.w1 and s2.profile.w2 and s1= s2 implies  w1.ids not in w2.ids
inv3 T: all s1, s2: Source | s1= s2 implies  s1.profile.Id != s2.profile.Id
inv3 T: all s1, s2: Source | s1= s2 implies  s1.profile.Id not in s2.profile.Id
inv3 S: all s1, s2: Source | s1 == s2 implies  s1.profile.Id not in s2.profile.Id
inv3 T: all s1, s2: Source | s1 = s2 implies  s1.profile.Id no s2.profile.Id
inv3 T: all s1, s2: Source | s1 = s2 implies  s1.profile.Id != s2.profile.Id

---
inv2 S: all u : User | u.profile + some Work implies source in u+Institution
inv2 S: all u : User | profile.u + some Work implies source in u+Institution
inv2 T: all u : User, w: Work | w.source -> u or w.source -> Institution
inv2 T: all u : User, w: Work | w.source -> u or w.source -> Institution
inv2 T: all u : User, w: Work | w.source -> u.profile or w.source -> Institution
inv2 T: all u : User, w: Work | u->w implies w->u or w-> Institution
inv2 S: work.source = u or work.source = Institution
inv2 S: Work.source = u or Work.source = Institution

---
inv2 T: all u:User| some i:Institution | no u.profile.source in u + i
inv2 T: all u:User| some i:Institution | no u.profile.source in u & i
inv2 T: all u:User| some i:Institution | no u.profile.source = u&i
inv2 T: all u:User| all i:Institution | no u.profile.source = u&i
inv2 T: all u:User| no u.profile.source = u&Institution
inv2 T: all u:User| no u.profile.source in u&Institution

---
inv4 S: always (all u : User | all  disj v1 v2 : u.visible | not v1.id = v2.id)
inv4 S: always all u : User, all  disj v1 v2 : u.visible | not v1.id = v2.id
inv4 S: always all u : User, disj v1 v2 : u.visible | not v1.id = v2.id
inv4 S: always all u : User, disj v1 v2 : u.visible | not v1.ids & v2.ids
inv4 S: always all u : User | all disj v1 v2 : u.visible | not v1.ids & v2.ids
inv4 S: always all u : User | all disj v1 v2 : u.visible | not (v1.ids & v2.ids)
inv4 S: always all u : User, disj v1 v2 : u.visible | not (v1.ids & v2.ids)
inv4 S: always (all u : User, disj v1 v2 : u.visible | not (v1.ids & v2.ids))
inv4 T: always (all u : User | all disj v1, v2 : u.visible | not (v1.ids & v2.ids))

---
inv2 S: all adj | adj != ~adj
inv2 T: all adj:Node | adj != ~adj
inv2 T: all adj:Node | not adj = ~adj
inv2 T: all n:adj, x:adj | n in x.adj => x not in n.adj
inv2 S: all n:adj x:adj | n in x.adj => x not in n.adj
inv2 T: all n:adj, x:adj | n in x.adj => x not in n.adj
inv2 S: all n:adj |all x in n.adj => n not in x.adj
inv2 S: all n:adj |all x:n.adj => n not in x.adj
inv2 T: all n:adj |all x:n.adj | n not in x.adj

---
inv3 S: a.^adj not in iden
inv3 S: a.^adj in iden
inv3 T: Node.^adj in iden
inv3 T: Node.adj in iden
inv3 T: Node.^adj not in iden

---
inv1 S: all n1->n2 : adj | n1 in Node
inv1 S: all n1->n2 : Node.adj | n1 in Node
inv1 T: all n : Node.adj | ~n in Node.adj
inv1 T: all n : adj | ~n in Node.adj
inv1 T: all n : adj | ~n in adj

---
inv6 T: all n : Node | n
inv6 T: all n : Node | n
inv6 T: all n : Node | n
inv6 T: all n : Node | n
inv6 T: all n : Node | n
inv6 T: all n : Node | n
inv6 T: all n : Node | n

---
inv6 T: all n1, n2, n3: Node | n1.adj.n2 and n3.adj.n2 implies n1->n3 in adj
inv6 T: all n1, n2, n3: Node | n1->n2 in adj and n3->n2 implies n1->n3 in adj
inv6 T: all n1, n2, n3: Node | n1->n2 in adj and n3->n2 implies n1->n3 in adj
inv6 T: all n1, n2, n3: Node | n1->n2 in adj and n3->n2 implies n1->n3 in adj
inv6 T: all n1, n2, n3: Node | n1->n2 in adj and n3->n2 implies n1->n3 in adj
inv6 T: all n: Node | n.adj or n.~adj
inv6 T: all n: Node | n.adj in adj or n.~adj in adj

---
inv7 S: all x : Node | Node in x.*adj	r
inv7 S: all x : Node | Node in x.*adj	r
inv7 S: all x : Node | Node in x.*adj	r
inv7 S: all x : Node | Node in x.*adj	r
inv7 S: all x : Node | Node in x.*adj	r
inv7 S: all x : Node | Node in x.*adj	r

---
inv6 T: adj in ^Node
inv6 T: adj in Node.^adj
inv6 T: adj in Node.(^adj)
inv6 T: all n : Node | adj in n.(^adj)
inv6 T: all n : Node | adj in (^adj.n)
inv6 S: adj in (^adj.n)
inv6 T: adj in (^adj.Node)

---
inv7 S: *adj & Node
inv7 S: *adj
inv7 S: *adj in Node<:adj
inv7 S: *adj in Node.adj
inv7 S: *adj in Node
inv7 S: *adj in adj

---
inv8 T: all n : Node | n->n.adj.adj.Node in adj
inv8 T: all n : Node | n->(n.adj.adj.Node) in adj
inv8 T: all n : Node | (n->(n.adj.adj.Node)) in adj
inv8 T: all n : Node | let n1 = n.adj.adj.Node | n->n1 in adj
inv8 T: let n1 = n.adj.adj.Node | (all n : Node | n->n1 in adj)
inv8 S: n.adj.adj.Node
inv8 T: all n : Node | n.adj.adj.Node

---
inv1 T: adj = ~adj	}		pred inv1{	adj = ~adj
inv1 T: all n : Node, a : n.adj | n->a => a->n
inv1 T: all n : Node | n->adj => adj->n
inv1 T: Node->adj
inv1 T: Node
inv1 T: Node.adj
inv1 T: Node->Node
inv1 T: adj

---
inv1 T: Node.adj
inv1 T: adj.adj
inv1 T: ~adj.adj
inv1 T: ~adj->adj
inv1 T: all n : Node, a : n.adj | a->n in Node.adj

---
inv4 T: all n1, n2 : Node | some (n1.n2)
inv4 T: all n1, n2 : Node | some (n1.n2)
inv4 T: all n1, n2 : Node | some (n1.n2)
inv4 T: all n1, n2 : Node | some (n1.n2)
inv4 T: all n1, n2 : Node | some (n1.n2)
inv4 T: all n1, n2 : Node | some (n1.n2)
inv4 T: all n1, n2 : Node | some (n1.n2)

---
inv5 S: adj = not Node -> ~Node
inv5 S: adj = no Node -> ~Node
inv5 S: adj = no Node -> ~Node
inv5 S: adj = no Node -> ~Node
inv5 S: adj = no Node -> ~Node
inv5 S: adj = no Node -> Node
inv5 T: adj = Node -> ~Node

---
inv1 S: all n1:Node | all n2 in n1.adj | n1 in n2.adj && n2 in n1.adj
inv1 T: all n1:Node | all n2:Node in n1.adj | n1 in n2.adj && n2 in n1.adj
inv1 S: all n1:Node | n2 in n1.adj | n1 in n2.adj && n2 in n1.adj
inv1 S: all n1:Node | n2:Node in n1.adj | n1 in n2.adj && n2 in n1.adj
inv1 S: all n1:Node | let n2:Node in n1.adj | n1 in n2.adj && n2 in n1.adj
inv1 S: all n1:Node | let n2:Node = one n1.adj | n1 in n2.adj && n2 in n1.adj
inv1 S: all n1:Node | n2 in n1.adj | n1 in n2.adj && n2 in n1.adj

---
inv8 T: all a:Node , b:Node | b in a.next*adj
inv8 T: all a:Node , b:Node, c:Node | a->b->c in adj implies a->c in adj
inv8 T: all a:Node , b:Node, c:Node | a->b->c in adj implies a->c in adj
inv8 T: all a:Node , b:Node, c:Node | a->b in adj & b->c in adj implies a->c in adj
inv8 T: all a:Node , b:Node, c:Node | (a->b in adj & b->c in adj) implies a->c in adj

---
inv6 T: adj = Node.^adj or Node.~^adj
inv6 T: adj = Node.^adj || Node.~^adj
inv6 T: adj = Node.^adj + Node.~^adj
inv6 T: adj = Node.^adj + Node.^adj
inv6 T: adj = Node.^adj

---
inv4 T: all s1, s2 : State | (s1 in Init) implies(s2 in s1.^trans)
inv4 T: all s1, s2 : State | (s1 in Init) implies(s2 in (s1.^trans))
inv4 T: all s1, s2 : State | (s1 in Init) implies (s2 in (s1.^trans))
inv4 T: all s1, s2 : State , e : Event | (s1 in Init) implies (s2 in (s1.e.^trans))
inv4 T: all s1, s2 : State , e : Event | (s1 in Init) implies (s2 in (e.(s1.^trans)))
inv4 T: all s1, s2 : State | (s1 in Init) implies (s2 in (s1.^trans))

---
inv4 T: Init.^trans = State
inv4 T: Event.Init.^trans = State
inv4 T: Event.(Init.^trans) = State
inv4 T: Init.trans
inv4 T: Init.trans.Event
inv4 T: Event.(Init.trans)

---
inv4 T: Event.trans = State
inv4 T: Event.trans
inv4 T: Event.State.trans
inv4 T: Event.(Init.trans)
inv4 T: State.trans
inv4 T: Init.trans
inv4 T: ^(Init.trans)
inv4 T: Event.^(Init.trans)

---
inv4 T: Init.trans.*Event = State
inv4 T: Init.*trans = State
inv4 T: trans = State
inv4 T: trans.*Init = State
inv4 T: Init.^trans = State
inv4 T: Init.trans = State
inv4 T: (Init.trans).*Event = State

---
inv4 S: State in fromState[Init]
inv4 S: State in fromState[Init].fromState
inv4 S: State in fromState[Init].^fromState	}		/*	All the states have the same events available.	*/	fun fromState[s: set State] : set State {  		s.trans[Event]
inv4 S: State in (fromState[Init]).^fromState	}		/*	All the states have the same events available.	*/	fun fromState[s: set State] : set State {  		s.trans[Event]
inv4 S: State in (fromState[Init]).fromState
inv4 S: State in Init.lookupState
inv4 S: State in Init.^lookupState	}		/*	All the states have the same events available.	*/	fun lookupState[s: set State] : set State {  		s.trans[Event]
inv4 T: State in ^(lookupState[Init])	}		/*	All the states have the same events available.	*/	fun lookupState[s: set State] : set State {  		s.trans[Event]
inv4 S: State in Init.^lookupState	}		/*	All the states have the same events available.	*/	fun lookupState[s: set State] : set State {  		s.trans[Event]

---
inv4 S: State in Init.^lookupState
inv4 S: State in Init.^lookupState	}		/*	All the states have the same events available.	*/	fun lookupState[s: set State] : set State {  		s.trans[Event]
inv4 S: State in Init.^lookupState
inv4 S: State in Init.^lookupState
inv4 S: State in Init + Init.^lookupState
inv4 S: State in Init.^lookupState
inv4 S: State in Init.^lookupState
inv4 S: State in Init.^lookupState

---
inv4 T: all s:State, i:Init | s in (i.trans)->State
inv4 T: all s:State, i:Init | s in State->(i.trans)
inv4 T: all s:State, i:Init | s in (i.trans)
inv4 S: all s:State, i:Init |  some (i.^trans :< s )
inv4 T: all s:State, i:Init |  some (i.^trans :> s )
inv4 T: all s:State, i:Init |  i.^(s.trans)

---
inv4 S: all s1 : State |
inv4 S: all s1 : State |  ^(Init.trans).s
inv4 T: all s1 : State |  ^(Init.trans).s1
inv4 T: all s1 : State |  ^(Init.trans)
inv4 T: all s1 : State |  (Init.trans)
inv4 T: all s1 : State |  (Init.trans)
inv4 T: all s1 : State |  (Init.Event)
inv4 T: all s1 : State |  (Init->Event)
inv4 T: all s1 : State |  (Init->Event) in trans
inv4 T: all s1 : State |  s1.(Init->Event) in trans
inv4 T: all s1 : State |  s1.(Init->Event) in s1.trans

---
inv5 T: all s:State | Event.(s.trans)
inv5 T: all s:State | Event->(s.trans)
inv5 T: all s:State | Event.(s.trans)
inv5 T: all s:State | (s.trans)->Event
inv5 T: all s:State | (s.trans).Event

---
inv4 S: for all i : Initial | trans.i
inv4 S: for all i : Initial | trans.Initial
inv4 S: for all i : Initial | trans.Initial
inv4 S: for all i : Initial | trans.Initial
inv4 S: for all i : Initial | trans.Initial

---
inv4 T: all s:State |some e:Event | Init.^(e->s)
inv4 T: all s:State |some e:Event | Init.^(e->s)
inv4 T: all s:State |some e:Event | Init.^(e->s)
inv4 T: all s:State |some e:Event | Init.^(e->s)
inv4 T: all s:State |some e:Event | Init.^(e->s)

---
inv4 T: all s:State-Init |some e:Event | s in ^e.(Init.trans)
inv4 S: all s : Init <: trans | State in n.^(trans.Event)
inv4 T: all s : Init <: trans | State in s.^(trans.Event)
inv4 T: all s : Init <: trans | State in ^(s.trans.Event)
inv4 T: all s : Init <: trans | State in ^(Event.s.trans)
inv4 T: all s : Init <: trans | State in ^(Event.(s.trans))
inv4 T: all s : Init <: trans | State in *(Event.(s.trans))
inv4 T: all s : Init <: trans | State in *(s->Event.(s.trans))
inv4 T: all s : Init <: trans | State in *(s->Event.(s.trans))
inv4 T: all s : Init <: trans | State in ^(s->Event.(s.trans))
inv4 T: all s : Init <: trans | State in ^(s->(Event.(s.trans)))
inv4 T: all s : Init <: trans | ^(s->(Event.(s.trans)))
inv4 T: all s : (Init <: trans).Event.State | ^(s->(Event.(s.trans)))
inv4 S: all s : State | s in Init && State in ^(s->Event.(n.trans))
inv4 T: all s : State | s in Init && State in ^(s->Event.(s.trans))
inv4 T: all s : Init | State in ^(s->Event.(s.trans))

---
inv4 S: all State in Init
inv4 T: all i : Init | i.trans
inv4 T: all i : Init | Event.(i.trans)
inv4 T: all s1,s2 : State | some e : Event | s1->e->s2  in trans	  	State in Init.(^(all s1,s2 : State | some e : Event | s1->e->s2  in trans))
inv4 S: all s1,s2 : State | some e : Event | s1->e->s2  in trans	  	State in Init.(^( s1,s2 : State | some e : Event | s1->e->s2  in trans))

---
inv4 S: all i : Init | State in i . ^adj
inv4 S: all i : Init | State in i . *adj
inv4 S: all i : Init | State in i.*adj
inv4 S: State in Init.*adj
inv4 S: all s : State | s in Init.*adj
inv4 S: State in Init.*adj
inv4 S: State-Init in Init.*adj
inv4 S: State in Init.*adj
inv4 S: State in Init.*adj
inv4 S: State in Init.*adj

---
inv7 S: all s : Init.^adj | Init in s.^adj
inv7 S: all s : Init.^adj | Init in s.*adj
inv7 S: all s : Init.*adj | Init in s.*adj
inv7 S: all s : Init.^adj | Init in s.*adj
inv7 S: Init in Init.^adj.*adj
inv7 S: Init in Init.*adj
inv7 S: Init in Init.^adj
inv7 S: Init in Init.^adj.*adj
inv7 S: Init in Init.*adj

---
inv4 S: let adj = ( all x,y:State | some e:Event | x->e->y in trans )	  	^adj
inv4 S: let adj = ( all x,y:State | some e:Event | x->e->y in trans )	  	^adj
inv4 S: let adj = ( all x,y:State | some e:Event | x->e->y in trans )
inv4 S: let adj =  {x,y:State | some e:Event | x->e->y in trans}
inv4 S: let adj =  ({x,y:State | some e:Event | x->e->y in trans})

---
inv1 T: let t = trans | iden in (trans.trans :> Event)
inv1 T: let t = trans | iden in (trans.trans <: Event)
inv1 T: let t = trans | iden in (trans.trans)
inv1 T: let t = trans | iden in (trans.trans) :> State
inv1 T: let t = trans | iden in (trans.trans) <: State
inv1 T: all e : Event | trans.e.trans
inv1 T: all e : Event | trans.e
inv1 T: all e : Event | e
inv1 T: all e : Event | trans
inv1 T: all e : Event | trans.e
inv1 T: all e : Event | e.trans
inv1 T: all e : Event | trans.State
inv1 T: all e : Event | trans.State
inv1 T: all e : Event | trans.State.e
inv1 T: trans.State

---
inv3 S: all s:State, all e:Event | lone s->e->State
inv3 S: all s1,s2:State, all e:Event | lone s1->e->s2
inv4 T: all s:State | some i:Init | s in i.trans
inv4 T: all s:State | some i:Init | s in trans.i
inv4 T: all s:State | s in s.trans
inv4 T: all s:State | s in s->Event->s
inv4 S: all s:State, some i:Init | s in i->Event->s
inv4 T: all s:State| some i:Init | s in i->Event->s
inv4 T: all s:State| some i:Init | i->Event->s in State

---
inv6 S: all e:Event| some s.State | s in trans.e
inv6 T: all e:Event| some s:State | s in trans.e
inv6 T: all e:Event| some s:State | s in e->State
inv6 T: all e:Event| some s:State | s in (e->State).trans
inv6 T: all e:Event| some s:State | s in (e.State).trans
inv6 T: all e:Event| some s:State | e in s->trans.State
inv6 T: some e:Event| some s:State | e in s->trans->State

---
inv7 T: all s:State | s in trans.State implies s in ^trans.State
inv7 T: all s:State | s in trans.State implies s in State.^trans
inv7 T: all s:State | s in Event.(trans.State) implies s in Event.(State.^trans)
inv7 T: all s:State | s in Event.(trans.State) implies s in Event.(^trans.State)
inv7 T: all s:State | one i:Init | i in (^trans.s)
inv7 T: all s:State | one i:Init | i in Event.(^trans.s)
inv7 T: all s:State | one i:Init | i in (^trans.s).Event
inv7 T: all s:State | one i:Init | i in Event.(s.^trans)
inv7 T: all s:State | one i:Init | i in State.(s.^trans)
inv7 T: all s:State | one i:Init | i in (s.^trans).Event
inv7 T: all s:State | one i:Init | i in (s.^trans).State
inv7 T: all s:State | one i:Init | i in (s.^trans)
inv7 S: all s:State | one i:Init | i in
inv7 S: all s:State | one i:Init

---
inv4 T: all s : State | s in Init.*trans
inv4 T: all s : State | s in Init.*(trans)
inv4 T: all s : State | s in Init.^(trans)
inv4 T: all s : State | s in Init.^(trans)
inv4 T: all s : State | s in Init.^(trans)
inv1 S: all State.trans
inv1 T: always State.trans
inv1 T: State.trans in State
inv1 T: State.trans
inv1 T: all s : State | s.trans

---
inv5 S: all x : State | x.trans in Event		/*	Each event is available in at least a state.	*/
inv5 S: all x : State | some x.trans in Event		/*	Each event is available in at least a state.	*/
inv5 T: all x : State | some x.trans in Event
inv5 T: all x : State | x.trans in Event
inv5 T: all x : State | x:>trans in Event
inv5 T: all x : State | x<:trans in Event
inv5 T: all x : State | x.trans in Event

---
inv3 T: all e:Event , s:State | lone e in s.(State.~trans)
inv3 T: all t:trans | lone t
inv3 T: all s:State | all e:Event | lone e->s in s.trans
inv3 S: all s:State, all e:Event | lone e->s in s.trans
inv3 S: all s:State all e:Event | lone e->s in s.trans
inv3 T: all s:State | all e:Event | lone e->s in s.trans

---
inv4 T: trans in Init.*trans
inv4 S: Node in Init.*trans
inv4 T: State in Init.*trans
inv4 T: all s:State | s in Init.(*trans)
inv4 T: all s:State | s in Init.(trans)

---
inv4 T: State in Init.trans.trans
inv4 S: State in Init.trans..trans
inv4 T: State in Init.trans.Event.trans
inv4 T: State in Init.Event.trans.trans
inv4 T: State in Event.Event(Init.State.State)
inv4 T: State in Event.Event(Init.trans.trans)
inv4 S: State in Event.(Event(Init.trans.trans))

---
inv4 T: all s:State-Init| some e:Event | s in ~(Init.trans)
inv4 T: all s:State-Init| some e:Event | s in ^(s.e.Init.trans)
inv4 T: all s:State-Init| some e:Event | s in (s.e.Init.trans)
inv4 S: all s:State-Init| some e:Event | s in
inv4 S: all s:State-Init| some e:Event | s in

---
inv4 T: all s: State | Init.^function	}		/*	All the states have the same events available.	*/	fun function: State->State {	  {s1, s2: State | s1->Event->s2 in trans}
inv4 S: all s: State | Init^.function
inv4 T: all s: State | Init.^function	}		/*	All the states have the same events available.	*/	fun function: State->State {	  {s1, s2: State | s1->Event->s2 in trans}
inv4 S: Init.^function in State
inv4 S: State = Init.^function
inv4 S: all s: State | Init.^function[s]	}		/*	All the states have the same events available.	*/	fun function[s: State]: State->State {	  {s1, s2: State | s1->Event->s2 in trans}
inv4 S: all s: State | Init.^function(s)	}		/*	All the states have the same events available.	*/	fun function(s: State): State->State {	  {s1, s2: State | s1->Event->s2 in trans}
inv4 S: State in Init.^function

---
inv3 T: all s:State |some e: Event | s.trans implies lone trans.e
inv3 T: all s:State |some e: Event | s.trans implies lone trans.e->s
inv3 T: all s:State |some e: Event | s.trans implies lone e in trans
inv3 T: all s:State |some e: Event | s.trans implies lone trans.e->s
inv3 T: all s:State |some e: Event | s.trans implies lone e->s

---
inv4 S: all s: State | s^.trans
inv4 S: Init^.trans
inv4 S: Init^.trans
inv4 T: Init.^trans
inv4 T: Init.^trans in State
inv4 T: State.^trans
inv4 T: all s: State | all e: Event | one Init.^trans implies s->e->s

---
inv4 T: some e: Event | all s: State | Init.trans implies e->s in trans
inv4 T: some e: Event | all s: State | Init.trans implies s
inv4 T: some e: Event | all s: State | s in Init.^trans
inv4 T: some e: Event | all s: State | s in Init.^trans.e
inv4 T: some e: Event | all s: State | Init.trans and e->s in trans
inv4 T: some e: Event | all s: State | Init.trans implies e->s
inv4 T: some e: Event | Init.trans implies *trans.e

---
inv4 T: all s: State | all e: Event | Init.trans.e
inv4 T: all s: State | all e: Event | Init.trans
inv4 T: all s: State | all e: Event | Init.trans implies e->s
inv4 T: all s: State | all e: Event | Init.trans implies e->s in trans
inv4 T: all s: State | all e: Event | Init.trans in trans implies e->s in trans
inv4 T: all s: State | some e: Event | Init.trans in trans implies e->s in trans
inv4 T: all s: State | some e: Event | Init.trans in trans implies trans.e->s in trans
inv4 T: all s: State | some e: Event | Init.trans in trans implies ~trans.e->s in trans
inv4 T: all s: State | some e: Event | Init.trans in trans implies trans.e->s in trans
inv4 T: all s: State | some e: Event | Init.trans in trans implies trans.e in trans
inv4 T: all s: State | some e: Event | Init.trans in trans implies trans.e->s in State
inv4 T: all s: State | some e: Event | Init.trans in trans implies e->s in State
inv4 T: all s: State | some e: Event | Init.trans in trans implies e->s
inv4 T: all s: State | all e: Event | Init.trans in trans implies e->s
inv4 T: all s: State | all e: Event | Init.trans implies e->s
inv4 T: all s: State | all e: Event | Init.trans implies e->s in trans
inv4 T: all s: State | all e: Event | Init.trans implies e->s in State

---
inv6 S: s.trans in State
inv6 T: State.trans in State
inv6 S: all e: Event |
inv6 S: all e: Event |
inv6 S: all e: Event |
inv6 S: all e: Event |
inv6 S: all e: Event |
inv6 S: all e: Event |
inv6 S: all e: Event |
inv6 S: all e: Event |
inv6 S: all e: Event |

---
inv7 S: let adj ={x,y:State | some e:Event |x->e->y in trans} |	  	  Init.^adj & adj^.Init
inv7 T: let adj ={x,y:State | some e:Event |x->e->y in trans} |	  	  Init.^adj & adj.^Init
inv7 T: let adj ={x,y:State | some e:Event |x->e->y in trans} |	  	  some Init in (Init.^adj).^adj
inv7 T: let adj ={x,y:State | some e:Event |x->e->y in trans} |	  	  some i:Init| i.^adj  implies (some Init in (i.^adj).^adj )
inv7 T: let adj ={x,y:State | some e:Event |x->e->y in trans} |	  	  some i:Init| some i.^adj  implies (some Init in (i.^adj).^adj )
inv7 T: let adj ={x,y:State | some e:Event |x->e->y in trans} |	  	  all i: Init.^adj|  (some Init in (i.^adj).^adj )
inv7 T: let adj ={x,y:State | some e:Event |x->e->y in trans} |	  	  all i: Init.^adj|  (some Init in i.^adj )

---
inv4 S: all i : Init, s : State | s in i.*tr
inv4 S: State in Init.*tr
inv4 S: Init->State in *tr
inv4 S: Init->State in *tr
inv4 S: Init->State in ^tr
inv4 S: State in Init.^tr

---
inv4 T: State in Init.^trans[Event]
inv4 T: State in ^Init.trans[Event]
inv4 T: State in Init <: ^trans[Event]
inv4 T: State in Init <: ^(trans[Event])
inv4 T: State in Init <: ^(trans.Event)

---
inv7 T: all s : State | Init in ^(~trans.s)
inv7 T: all s : State | Init in ^(~trans<:s)
inv7 T: all s : State | Init in ^(~trans)
inv7 T: all s : State | Init in ^(~s.trans)
inv7 T: all s : State | Init in ^(~s<:trans)
inv7 T: all s : State | Init in ~(^s<:trans)
inv7 S: all s : State | Init in ~(^strans)
inv7 T: all s : State | Init in ~(^s.trans)
inv7 T: all s : State | Init in ~(^s)
inv7 T: all s : State | Init in ~s
inv7 T: all s : State | some ~trans
inv7 T: all s : State | some ~s.trans
inv7 T: all s : State | some ~s<:trans
inv7 T: all s : State | some ~State
inv7 T: let t = {x,y : State | some z : Event | x->z->y in trans} |		all s : State | Init in ~t
inv7 T: let t = {x,y : State | some z : Event | x->z->y in trans} |		all s : State | Init in ~s.t

---
inv4 T: Init.^adj		}		/*	All the states have the same events available.	*/	fun adj: State -> State {	{ x,y : State | some (x.trans).y }
inv4 S: Init in State.^adj
inv4 S: Init in ^adj.State
inv4 S: all s:State | Init in s.^adj
inv4 S: all s:State | s in Init.^adj
inv4 S: all s:State | s in Init.^adj

---
inv4 T: all s:State | s in Init.*(State.trans.State)
inv4 T: all s:State | s in Init.*(State.trans.Event)
inv4 T: all s:State | s in Init.*(Event.State.trans)
inv4 T: all s:State | s in Init.*(Event.State.trans)
inv4 T: all s:State | s in Init.*(Event.State.trans)
inv4 T: all s:State | s in Init.*(Event.State.trans)
inv4 T: all s:State | s in Init.*(Event.State.trans)
inv4 T: all s:State | s in Init.*(Event.State.trans)
inv4 T: all s:State | s in Init.*(Event.State.trans)

---
inv1 S: all State | trans != none
inv1 S: all s:State | some t:trans
inv1 S: all s:State, some t:trans | t in s
inv1 T: all s:State | some t:trans | t in s
inv1 S: all s:State | some t:trans in s.trans
inv1 T: all s:State | some t:trans | t in s.trans

---
inv1 S: all s:State | some ss:State | e:Event | e->ss in s.trans
inv1 S: all s:State | some s.trans		/*	There is a single initial state.	*/
inv1 S: all s:State | some Event.(s.trans)		/*	There is a single initial state.	*/
inv1 S: all s : State | some s.trans		/*	There is a single initial state.	*/
inv1 S: all s : State | one s.trans		/*	There is a single initial state.	*/
inv1 S: some State.trans		/*	There is a single initial state.	*/

---
inv4 S: all x : Init | State in lone Event.*(x.trans)
inv4 T: all x : Init, y : State | some (Event.(x.trans)).y
inv4 S: all x : Init, y : State | Node x.*(trans.Event)		/*	All the states have the same events available.	*/
inv4 S: all x : Init  | Node in x.*(trans.Event)		/*	All the states have the same events available.	*/
inv4 S: all x : Init | Node in x.*(trans.Event)		/*	All the states have the same events available.	*/
inv4 S: all x : Init | Node in (*(x.trans)).Event		/*	All the states have the same events available.	*/
inv4 S: all x : Init | Node in (*(x.trans)).Event

---
inv4 T: all s:State, s1:State,e:Event, t:trans | s->e in trans
inv4 T: all s:State, s1:State,e:Event, t:trans | s->e in trans
inv4 T: all s:State, s1:State,e:Event, t:trans | s->e in s1.trans
inv4 T: all s:State, s1:State,e:Event, t:trans | s->e in s.trans
inv4 T: all s:State, s1:State,e:Event, t:trans | s->e in t
inv4 T: trans = Event->State

---
inv4 S: all s : State | s in Init.*tran	}		/*	All the states have the same events available.	*/	fun tran[s : State] : set State {	  s.trans[Event]
inv4 S: all s : State | s in Init.*tran1	}		/*	All the states have the same events available.	*/	fun tran1[s : State] : set State {	  s.trans[Event]
inv4 S: all s : State | s in Init.*tran1	}		/*	All the states have the same events available.	*/	fun tran1 (s : State) : set State {	  s.trans[Event]
inv4 T: all s : State | s in Init.*trans
inv4 S: all s : State | let r[x] = x.tran[Event] | s in Init.*r

---
inv4 S: all s : State | s in reachable[Init]
inv4 S: all s : State | s in Init.reachable
inv4 S: all s : State | s in Init.reachable.reachable
inv4 S: all s : State | s in Init.reachable.reachable.reachable
inv4 S: all s : State | s in Init.reachable
inv4 S: all s : State | s in Init.reachable
inv4 S: all s : State | s in Init.reachable.reachable
inv4 S: all s : State | s in Init.reachable.reachable.reachable
inv4 S: all s : State | s in Init.reachable.reachable.reachable.reachable
inv4 S: all s : State | s in Init.*reachable	}		/*	All the states have the same events available.	*/	fun reachable[s : State] : set State {	  s.trans[Event]
inv4 S: all s : State | s in Init .* reachable	}		/*	All the states have the same events available.	*/	fun reachable[s : State] : set State {	  s.trans[Event]
inv4 S: all s : State | s in Init. (reachable)
inv4 S: all s : State | s in Init. *(reachable)	}		/*	All the states have the same events available.	*/	fun reachable[s : State] : set State {	  s.trans[Event]

---
inv7 T: Init in State.^{x,y: State | some x.~trans.y}
inv7 T: Init in ~trans
inv7 T: Init in ~trans.Event
inv7 T: Init in ~trans.State
inv7 T: Init in ~(trans.State)
inv7 T: Init in ~(Event.(trans.State))
inv7 T: Init in ~(Event.(State.trans))

---
inv4 S: all i : Initial | State in i.trans
inv4 S: all i : Initial | State in i.trans
inv4 T: all i : Init | State in i.trans
inv4 T: all i : Init | State in i<:trans
inv4 T: some i : Init | State in i<:trans
inv4 S: all s : State | some Initial.^trans
inv4 T: all s : State | some Init.^trans

---
inv4 S: let t = {all x,y : State, some z : Event | x->z->y in trans}		all s : State | State in Init.*(s.trans)
inv4 S: let t = {all x,y : State, some z : Event | x->z->y in trans}		all s : State | some Init.(s.^t)
inv4 S: let t = {all x,y : State, some z : Event | x->z->y in trans}		all s : State | some Init.(s.^t)
inv4 S: let t = {all x,y : State, some z : Event | x->z->y in trans}|		all s : State | some Init.(s.^t)
inv4 S: let t = {all x,y : State, some z : Event | x->z->y in trans} |		all s : State | some Init.(s.^t)
inv4 T: let t = {all x,y : State | some z : Event | x->z->y in trans} |		all s : State | some Init.(s.^t)
inv4 T: let t = {all x,y : State | some z : Event | x->z->y in trans} |		all s : State | some Init<:(s.^t)
inv4 T: let t = {all x,y : State | some z : Event | x->z->y in trans} |		all s : State | some (s.^t)
inv4 T: let t = {all x,y : State | some z : Event | x->z->y in trans} |		all s : State | some i : Init | s in i.(^t)
inv4 T: let t = {all x,y : State | some z : Event | x->z->y in trans} |		State in Init.(^t)

---
inv4 T: all s: State | some (*{ss: State, e: Event | ss.trans.e}.s & Init)
inv4 T: all s: State | some (*{ss: State, e: Event | ss.trans}.s & Init)
inv4 T: all s: State | some (*{ss: State | ss.trans.Event}.s & Init)
inv4 T: all s: State | some (*{ss: State | ss.trans}.s & Init)
inv4 T: all s: State | some (*{s1, s2: State | some s1.trans[Event].s2}.s & Init)

---
inv5 S: all x : State | x.trans in Event		/*	Each event is available in at least a state.	*/
inv5 S: all x : State | some x.trans in Event		/*	Each event is available in at least a state.	*/
inv5 T: all x : State | some x.trans in Event
inv5 T: all x : State | x.trans in Event
inv5 T: all x : State | x:>trans in Event
inv5 T: all x : State | x<:trans in Event
inv5 T: all x : State | x.trans in Event

---
inv5 T: Event in Event<:(State.trans)
inv5 T: Event in (State.trans)
inv5 T: Event in (trans)
inv5 T: Event in (trans.Event)
inv5 T: Event in (Event<:trans)
inv5 T: Event in (Event:>trans)
inv5 T: Event in (Event:>State.trans)

---
inv4 S: let ts : onlyStates[] |	  		all s : State | s in Init.^ts
inv4 S: all s : State | s in Init.^onlyStates
inv4 S: all s : State | s in Init.^onlyStates
inv4 S: all s : State | s in Init.^onlyStates
inv4 S: all s : State | s in Init.^onlyStates

---
inv4 S: all s: State | s in Init.trans^
inv4 T: all s: State | s in ^Init.trans
inv4 S: let adj = {s1,s2: State | some e s1.e.s2}	  all s: State | some i: Init | s in ^adj
inv4 S: let adj = {s1,s2: State | s1 -> e -> s2 in trans}	  all s: State | some i: Init | s in ^adj
inv4 S: let adj = {s1,s2: State | some e: Event | s1 -> e -> s2 in trans}	  all s: State | some i: Init | s in ^adj
inv4 T: let adj = {s1,s2: State | some e: Event | s1 -> e -> s2 in trans} |	  all s: State | some i: Init | s in ^adj

---
inv4 T: all s:State | s in Init.trans
inv4 T: all s:State | s in ^(Event.Init.trans)
inv4 T: all s:State | s in ^(Event.(Init.trans))
inv4 T: all s:State | s in ^(Event.(Init.trans)).trans
inv4 T: all s:State | s in ^((Event.(Init.trans)).trans)

---
inv4 S: States in init.^trans
inv4 S: State in init.^trans
inv4 T: State in Init.^trans
inv4 T: all i :Init | State in i.^trans
inv4 T: all i :Init | State in ^(i.trans)

---
inv4 T: all c : Component, p : c.parts | p.position < c.position
inv4 S: all c : Component, p : c.parts | c.position <= p.position.one
inv4 S: all c: Component | all p: c.parts | c.position <= p.position.one
inv4 T: all c : Component, p : c.parts | c.position <= p.position
inv4 T: all c : Component, p : c.parts | c.position < p.position

---
inv4 T: all c:Component, p:c.parts | c.position < c.prevs
inv4 T: all c:Component, p:c.parts | c.position < c.prevs.position
inv4 T: all c:Component, p:c.parts | c.position < c.prevs.position
inv4 T: all c:Component, p:c.parts | c.position < p.position
inv4 T: all c:Component, p:c.parts | c.position > p.position

---
inv2 T: all c : Component | c & ^parts.c not in parts
inv2 T: all c : Component | c & ^parts<:c not in parts
inv2 T: all c : Component | c.^parts & c not in parts
inv2 T: all c : Component | (c.^parts).c not in parts
inv2 S: no Componet.^parts

---
inv3 T: all c : Component | some p : Position | some c.p implies some Robot.p
inv3 T: all c : Component | some p : Position | some c.p implies some Robot.p
inv3 T: all c : Component | some p : Position | some c.p implies some Robot.p
inv3 T: all c : Component | some p : Position | some c.p implies some Robot.p
inv3 T: all c : Component | some p : Position | some c.p implies some Robot.p

---
inv3 S: all c:Component | some r.Robot |  r.positon in c.position
inv3 S: all c:Component | some r.Robot |  c.position in r.position
inv3 T: all c: Component | some position.(c.position)
inv3 T: all c: Component | some position.c.position
inv3 S: all c: Component | some (position<:Robot)(.c.position)
inv3 S: all c: Component | some (position<:(Robot->Position))(.c.position)
inv3 S: all c: Component | some (position<:(Robot->Position))(.c.position)
inv3 S: all c: Component | some position(.c.position)
inv3 T: all c: Component | some position(c.position)
inv3 T: all c: Component | some (Robot:>position).(c.position)
inv3 T: all c: Component | some (Robot:>position).(c.position)
inv3 T: all c: Component | some (Position:>position).(c.position)
inv3 T: all c: Component | some (position:>Position).(c.position)
inv3 S: all c: Component | some (position:>Position).(c.(Component:>position)
inv3 T: all c: Component | some (position:>Position).(c.(Component:>position))
inv3 T: all c: Component | some position.(c.position)
inv3 T: all c: Component | Robot.position & c.position

---
inv1 T: all c:Component | some p:Product | some c->p in parts
inv1 T: all c:Component | some p:Product | some c->p in parts
inv1 S: all c:Component | some c->p:Product in parts
inv3 T: (position.~position)
inv3 T: iden & Component->Robot in (Component:>(position.~position)).~(Component:>(position.~position))
inv3 T: iden & Component->Robot in (Component:>(position.~position)).~(Component:>(position.~position))
inv3 T: all c: Component | c.position.~position
inv3 T: all r: Robot | r.position.~position
inv3 T: all c: Component | c.position.~position
inv3 T: all c: Component | c.position

---
inv4 T: all disj c, c1 : Component | c.position < c1.position
inv4 T: all disj c, c1 : Component | c.position before c1.position
inv4 T: all disj c, c1 : Component | smaller[c.position, c1.position]
inv4 S: all disj c, c1 : Component | smaller[c.position, c1.position :Position]
inv4 S: all disj c, c1 : Component | smaller[c.position, c1.position : Position]
inv4 T: all disj c, c1 : Component | smaller[c.position, c1.position]

---
inv4 T: all c:Component | c.parts.position < c.position
inv4 S: all c:Component | p in c.parts | gt[c.position,p.position]
inv4 S: all c:Component		p in c.parts		gt[c.position,p.position]
inv4 S: all c:Component		p in c.parts | gt[c.position,p.position]
inv4 S: all c:Component | p in c.parts => gt[c.position,p.position]
inv4 S: all c:Component | one p in c.parts => gt[c.position,p.position]
inv4 S: all c:Component | p in c.parts => gt[c.position,p.position]

---
inv4 T: all c : Component |  c.^parts not in c.^next.^parts
inv4 T: all c : Component |  c.^parts not in c.^next.^parts
inv4 T: all c : Component |  c.^parts not in (c.^next).^parts
inv4 T: all c : Component |  c.^parts not in (c.^next).^parts
inv4 T: all p : Position | Component.p.parts not in Component.(p.^next).parts
inv4 S: all p : Position | position.p).parts not in position.(p.^next).parts
inv4 S: all p : Position | position.p).parts not in position.(p.^next).parts

---
inv3 S: all c: Component | Robot/position[c.position]
inv3 T: all c: Component | position[c.position]
inv3 T: all c: Component | some position.(c.position)
inv3 T: all c: Component | some position.(c.position)
inv3 S: all c: Component | some (Robot/position).(c.position)
inv3 T: all c: Component | let p = c.position | position.p
inv3 T: all c: Component | let p = c.position | some position.p

---
inv2 T: all wb : Workstation | some (wb.workers & Worker)	all w : Worker | one (workers & w)
inv2 T: all wb : Workstation | some (wb.workers & Worker)	all w : Worker | one (workers & w)
inv2 T: all wb : Workstation | some (wb.workers & Worker)	all w : Worker | one (workers & w)
inv2 S: all wb : Workstation | w : Worker | some (wb.workers & Worker) and wb->w in workers
inv2 S: all wb : Workstation | w : Worker | some (wb.workers & Worker) and wb->w

---
inv4 T: all c : Component, m : Material, p : Product | some p in c.parts and no p in m.parts
inv4 T: all c : Component, m : Material, p : Product | some p in c.parts and p not in m.parts
inv4 T: all c : Component, m : Material, p : Product | (some p in c.parts) and (p not in m.parts)
inv4 T: all c : Component, m : Material, p : Product | (some p in c.parts) and (no p in m.parts)
inv4 S: all c : Component, m : Material, p : Product |

---
inv10 S: all c:Component | all part:c.parts | part is Material or c.workstation in part.workstation.succ
inv10 S: all c:Component | all part:(c.parts) | part is Material or c.workstation in part.workstation.succ
inv10 S: all c:Component | all part:c.parts | part is Material or c.workstation in part.workstation.succ
inv10 S: all c:Component | part is Material or c.workstation in part.workstation.succ
inv10 T: all c:Component | all p:c.parts | p is Material or c.workstation in p.workstation.succ

---
inv10 T: all p:Product | p.parts
inv10 T: all p:Product | no p.parts.Component
inv10 T: all p:Product | p.parts
inv10 T: all p:Product | p.parts.Component
inv10 T: all p:Product | p.parts & Component

---
inv5 S: all w,w1 : Worker | all ws:Worstation | (w+w1) in ws.workers and w in Human | implies w1 not in Robot
inv5 S: all w,w1 : Worker | all ws:Worstation | w in ws.workers and w1 in w1.workers and w in Human | implies w1 not in Robot
inv5 S: all w,w1 : Worker | all ws:Worstation | w in ws.workers and w1 in w1.workers and w in Human | implies w1 in Human
inv5 S: all w,w1 : Worker | all ws:Worstation | w in ws.workers and w1 in ws.workers and w in Human | implies w1 in Human
inv5 S: all w,w1 : Worker | all ws:Worstation | w in ws.workers and w1 in ws.workers and w in Human implies w1 in Human

---
inv6 S: Component in parts.*(Component, Product)
inv6 T: Component in parts.*(Product)
inv6 T: all c1,c2: Component | c1 in parts.*(c2)
inv6 S: all c1,c2: Component | c1 in parts.*(c2,Product)
inv6 T: all c : Component | c in parts.*Product

---
inv2 S: all ws: Workstation | some w: ws.workers	all w: Worker | one w.workstation	all w: Worker, ws1, ws2: w.workstation | ws1 != ws2 => ws1 not in ws2.^succ and ws2 not in ws1.^succ
inv2 S: all ws,w | w in worstation.w
inv2 S: all w | w in worstation.w
inv2 T: Worker & Workstation
inv2 T: all w: Worker | w & Workstation
inv2 T: all w: Worker | w & workstation
inv2 S: all w: Worker | not in w - workstation
inv2 T: all w: Worker | ~(w not in workstation)
inv2 T: all w: Worker | ~(w in workstation)
inv2 T: all w: Worker | (w in workstation)

---
inv1 S: all w: Worker | Human | Robot
inv1 S: fact	{	all w: Worker | Human | Robot	}
inv1 S: fact	{	all w: Worker | Human | Robot	}		run inv1 {} for 3		}		pred inv1{		fact	{	all w: Worker | Human | Robot	}		run inv1 {} for 3
inv1 S: fact	{	all w: Worker != Human	}		run inv1 {} for 3		}		pred inv1{		fact	{	all w: Worker != Human	}		run inv1 {} for 3
inv1 S: a
inv1 S: all w: Workstation | w.Workers != w.succ

---
inv9 T: all w,wb : Workstation | (wb in begin and w != wb) implies w in wb.^(succ)	all w : Workstation | w not in w.^(succ)	all w : Workstation | w not int end implies one w.succ
inv9 S: all w,wb : Workstation | (wb in begin and w != wb) implies w in wb.^(succ)	all w : Workstation | w not in w.^(succ)	all w : Workstation | w not int end implies one w.succ
inv9 S: all w,wb : Workstation | (wb in begin and w != wb) implies w in wb.^(succ)	all w : Workstation | w not in w.^(succ)	all w : Workstation | w not int end implies one w.succ
inv9 T: all w,wb : Workstation | (wb in begin and w != wb) implies w in wb.^(succ)	all w : Workstation | w not in w.^(succ)	all w : Workstation | w not int end implies one w.succ
inv9 T: all w,wb : Workstation | (wb in begin and w != wb) implies w in wb.^(succ)	all w : Workstation | w not in w.^(succ)	all w : Workstation | w not int end implies one w.succ

---
inv10 S: all c:Component| all c implies (historically some c.parts)
inv10 T: all c:Component| c implies (historically some c.parts)
inv10 T: all c:Component| c in Product implies (historically some c.parts in Product)
inv2 S: all w : Worker | all ws: Workstation |
inv2 S: all w : Worker | all ws: Workstation |
inv2 T: all w : Worker | all ws: Workstation | one w in ws
inv2 T: all w : Worker | all ws: Workstation | one w in ws
inv2 T: one Worker in Workstation

---
inv2 T: one Worker in Workstation
inv2 T: one Worker in Workstation
inv2 T: all w : Worker | all ws: Workstation | one w in ws
inv2 T: one Worker in Workstation
inv2 T: all w : Worker, ws : Workstation | lone w in ws.workers

---
inv5 S: Robot in Workstation <-> no Human in Workstation
inv5 T: Robot in Workstation <=> no Human in Workstation
inv5 T: Robot.Workstation <=> no Human.Workstation
inv5 T: Robot.Workstation <=> Human.Workstation
inv5 T: Robot in Workstation.workers <=> no Human in Workstation.workers

---
inv6 T: Component not in ^(Component.parts)
inv6 S: all c: Components | c not in c.parts.^(Component.parts)
inv6 S: all c: Components | c not in c^(Component.parts)
inv6 S: all c: Components | c not in c.^(Component.parts)
inv6 S: all c: Components | c not in c.parts.^(Component.parts)
inv6 T: all c: Component | c not in c.parts.^(Component.parts)

---
inv5 T: all w1,w2: Worker , ws: Workstation | w1 in ws.workers and w2 in ws.workers implies (w1 and w2 in Human) or (w1 and w2 in Robot)
inv5 T: all w1,w2: Worker , ws: Workstation | w1 in ws.workers and w2 in ws.workers implies (w1 and w2 in Human) or (w1 and w2 in Robot)
inv5 S: all w1,w2: Worker | all: ws: Workstation | w1 in ws.workers and w2 in ws.workers implies (w1 and w2 in Human) or (w1 and w2 in Robot)
inv5 S: all w1,w2: Worker | all: ws: Workstation | w1 in ws.workers and w2 in ws.workers and w1 in Human implies  w2 in Human
inv5 S: all w1,w2: Worker | all: ws: Workstation | w1 in ws.workers and w2 in ws.workers and w1 in Human implies  w2 in Human

---
inv2 S: all w1, w2 : Worker | all ws1,ws2: Worstation | ws1!=ws2 and w1 in ws1.worker and w2 in ws2.worker implies w1=w2
inv2 S: all w1, w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.worker and w2 in ws2.worker implies w1=w2
inv2 T: all w1, w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.Worker and w2 in ws2.Worker implies w1=w2
inv2 T: all w1, w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.Worker and w2 in ws2.Worker implies w1=w2
inv2 T: all w1,w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.Worker and w2 in ws2.Worker implies w1=w2
inv2 T: all w1,w2 : Worker | all ws1,ws2: Workstation | ws1!=ws2 and w1 in ws1.Worker and w2 in ws2.Worker implies w1=w2

---
inv2 T: all w:Worker | some w in Workstation.workers	all ww:Workstation | some (ww.workers)
inv2 S: all w:Worker,ww:Workstation | w in some(ww.workers)	all ww:Workstation | some (ww.workers)
inv2 S: all w:Worker,some ww:Workstation | w in ww.workers	all ww:Workstation | some (ww.workers)
inv2 S: all w:Worker,one ww:Workstation | w in ww.workers	all ww:Workstation | some (ww.workers)
inv2 S: all w:Worker,one ww:Workstation | w in ww.workers	all ww:Workstation | some (ww.workers)
inv2 S: all w:Worker,one ww:Workstation | w in ww.workers	all ww:Workstation | some (ww.workers)

---
inv5 T: all ww:Workstation | Human & ww.workers implies no(Robot & ww.workers)
inv5 T: all ww:Workstation | (ww.workers & Human) implies no (ww.workers&Robot)
inv5 S: all ww:Workstation | disj Human,Worker in ww.workers
inv5 T: all ww:Workstation | (ww.workers & Human) or (ww.workers &Robot)
inv5 T: all ww:Workstation | (ww.workers & Human) or (ww.workers &Robot)

---
inv5 T: all h :  Human | all r : Robot | all w : workstation | h->w in workers implies r->w not in workers
inv5 S: all h :  Human | all r : Robot | all w : workstation | h->w in workers
inv5 S: all h :  Human | all r : Robot | all w : Workstation | h->w in workers
inv5 S: all h :  Human | all r : Robot | all w : Workstation
inv5 S: all h :  Human | all r : Robot | all w : Workstation ! h -> w in workers
inv5 S: all h :  Human | all r : Robot | all w : Workstation ! h -> w in workers implies r->w not in workers
inv5 S: all h :  Human | all r : Robot | all w : Workstation | h -> w in workers implies r->w not in workers

---
inv9 S: all ws, wsb : Workstation | (wsb in begin and ws = != wsb) implies ws in wsb.^(succ)	all ws : Workstation | ws not in ws.^(succ)	all ws : Workstaion | ws not in end implies w.succ
inv9 S: all ws, wsb : Workstation | (wsb in begin and ws = != wsb) implies ws in wsb.^(succ)	all ws : Workstation | ws not in ws.^(succ)	all ws : Workstaion | ws not in end implies w.succ
inv9 S: all ws, wsb : Workstation | (wsb in begin and ws = != wsb) implies ws in wsb.^(succ)	all ws : Workstation | ws not in ws.^(succ)	all ws : Workstaion | ws not in end implies w.succ
inv9 S: all ws, wsb : Workstation | (wsb in begin and ws != wsb) implies ws in wsb.^(succ)	all ws : Workstation | ws not in ws.^(succ)	all ws : Workstaion | ws not in end implies w.succ
inv9 S: all ws, wsb : Workstation | (wsb in begin and ws != wsb) implies ws in wsb.^(succ)	all ws : Workstation | ws not in ws.^(succ)	all ws : Workstation | ws not in end implies w.succ
inv9 T: all ws, wsb : Workstation | (wsb in begin and ws != wsb) implies ws in wsb.^(succ)	all ws : Workstation | ws not in ws.^(succ)	all ws : Workstation | ws not in end implies ws.succ
inv9 T: all ws, wsb : Workstation | (wsb in begin and ws != wsb) implies ws in wsb.^(succ)	all ws : Workstation | ws not in ws.^(succ)	all ws : Workstation | (ws not in end) implies ws.succ

---
inv5 S: Workers & Robots not in workers
inv5 T: Worker & Robot not in workers
inv5 S: all ws:Worstation | not some w1, w2:Worker | ws->w and w1 in Human and w2 in Robot and w1!=w2
inv5 S: all ws:Workstation | not some w1, w2:Worker | ws->w and w1 in Human and w2 in Robot and w1!=w2
inv5 T: all ws:Workstation | not some w1, w2:Worker | ws->w1 and ws->w2 and w1 in Human and w2 in Robot and w1!=w2

---
inv7 S: all c:Component |
inv7 S: all c:Component |
inv7 S: all c:Component |
inv7 S: all c:Component |
inv7 S: all c:Component |
inv7 S: all c:Component |
inv7 S: all c:Component |

---
inv8 S: all ws:Worstation |  ^parts.Dangerous
inv8 T: all ws:Workstation |  ^parts.Dangerous
inv8 T: all c:Component, ws:Workstation |  some Dangerous & c.^parts => not some Human in workers
inv8 T: all c:Component, ws:Workstation |  some Dangerous & c.^parts => not some Human in ws.workers
inv8 T: all c:Component, ws:Workstation |  some Dangerous & c.^parts => some Human not in workers
inv8 T: all c:Component, ws:Workstation |  c.^parts in Dangerous  => some Human not in workers

---
inv9 T: one Workstation.^Workstation.succ
inv9 T: one ^Workstation.succ
inv9 T: one begin.(^begin.succ).end
inv9 T: one begin.(^succ).end
inv9 S: one begin.^(w : Workstation | some w.succ).end
inv9 S: one begin.^(w : Workstation | some w.succ)
inv9 S: ^(w : Workstation | some w.succ)
inv9 S: ^w.succ
inv9 T: ^Workstation.succ
inv9 T: ^begin.succ
inv9 T: begin.^succ
inv9 T: one begin.^succ.end
inv9 T: one begin.^(begin.succ.end)
inv9 T: one begin.^(succ.end)
inv9 T: one begin.^({ w:Workstation | some succ.w}).end
inv9 T: one begin.^{some w : Workstation | one succ.w}.end
inv9 T: one begin.^{w : Workstation | one succ.w}.end
inv9 T: some w : Workstation | one begin.^{y : Workstation | one w.succ.y}.end
inv9 T: one begin.^{w : Workstation | one succ.w}.end
inv9 T: one begin.^{w,z : Workstation | one w.succ.z}.end
inv9 T: one begin.^{all w,z : Workstation | one w.succ.z}.end
inv9 T: one begin.^{all w,z : Workstation | one w.succ.z}.end
inv9 T: one begin.^{w,z : Workstation | one w.succ.z}.end
inv9 T: one begin.^{w,z : Workstation | one w.succ.z}
inv9 T: one begin.^{w : Workstation | one succ.w}.end
inv9 T: one begin.^{w : Workstation | some succ.w}.end
inv9 T: end in begin.^{w : Workstation | one succ.w}
inv9 T: begin in ^{w : Workstation | one w.succ}.end
inv9 T: one begin.^{w : Workstation | one succ.w}
inv9 T: one begin.^succ.Workstation
inv9 T: one begin.^succ.Workstation.end
inv9 T: one begin.^(succ.Workstation).end
inv9 T: one w : Workstation | begin.^(succ.w).end
inv9 T: one w : Workstation | begin.^succ.end
inv9 T: all x : Workstation | one x.succ	one begin.^succ.end
inv9 T: all x : Workstation | one x.succ	begin.^succ.end
inv9 T: all x : Workstation | one x.succ	begin.(^succ).end

---
inv5 S: all ws : Workstation | all w1,w2 : Worker |	(ws->w1 in workers and ws->w2 in workers and w1 in Human)	implies (w2 in Human)		}		fun path [c1,c2]{	all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2]
inv5 S: all ws : Workstation | all w1,w2 : Worker |	(ws->w1 in workers and ws->w2 in workers and w1 in Human)	implies (w2 in Human)		}		fun path [c1,c2] : r{	r iff	(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
inv5 S: all ws : Workstation | all w1,w2 : Worker |	(ws->w1 in workers and ws->w2 in workers and w1 in Human)	implies (w2 in Human)		}		fun path [c1,c2] : r {	r iff	(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
inv5 S: all ws : Workstation | all w1,w2 : Worker |	(ws->w1 in workers and ws->w2 in workers and w1 in Human)	implies (w2 in Human)		}		fun path [c1,c2]: r {	r iff	(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
inv5 S: all ws : Workstation | all w1,w2 : Worker |	(ws->w1 in workers and ws->w2 in workers and w1 in Human)	implies (w2 in Human)		}		fun path [c1,c2]= r {	r iff	(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
inv5 S: all ws : Workstation | all w1,w2 : Worker |	(ws->w1 in workers and ws->w2 in workers and w1 in Human)	implies (w2 in Human)		}		fun path [c1,c2=]: r {	r iff	(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
inv5 S: all ws : Workstation | all w1,w2 : Worker |	(ws->w1 in workers and ws->w2 in workers and w1 in Human)	implies (w2 in Human)		}		fun path [c1 : Component,c2:Component]: r {	r iff	(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
inv5 S: all ws : Workstation | all w1,w2 : Worker |	(ws->w1 in workers and ws->w2 in workers and w1 in Human)	implies (w2 in Human)		}		fun path [c1 : Component,c2:Component] {	(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
inv5 S: all ws : Workstation | all w1,w2 : Worker |	(ws->w1 in workers and ws->w2 in workers and w1 in Human)	implies (w2 in Human)		}		fun path [c1 : Component,c2:Component]: {	(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
inv5 S: all ws : Workstation | all w1,w2 : Worker |	(ws->w1 in workers and ws->w2 in workers and w1 in Human)	implies (w2 in Human)		}		fun path [c1 : Component,c2:Component]:  {	(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
inv5 S: all ws : Workstation | all w1,w2 : Worker |	(ws->w1 in workers and ws->w2 in workers and w1 in Human)	implies (w2 in Human)		}		fun path [c1 : Component,c2:Component]:  {	(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])		}			{pred inv6 {		all c1,c2 : Component | c1->c2 in parts implies c2->c1 not in parts
inv5 S: all ws : Workstation | all w1,w2 : Worker |	(ws->w1 in workers and ws->w2 in workers and w1 in Human)	implies (w2 in Human)		}		fun path [c1 : Component,c2:Component]: r:Bool  {	(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])

---
inv5 T: all w : Workstation | no w.workers & Robot or no w.workers in Human
inv5 T: all w : Workstation | no w.workers & Robot or no w.workers in Human
inv5 T: all w : Workstation | no w.workers & Robot or no w.workers in Human
inv5 T: all w : Workstation | no w.workers & Robot or no w.workers in Human
inv5 T: all w : Workstation | no w.workers & Robot or no w.workers in Human
inv5 T: all w : Workstation | no w.workers & Robot or no w.workers in Human

---
inv2 T: all w : Worker ,  ws : Workstation | (some ws.workers) and (one w.^Workstation)
inv2 T: all w : Worker ,  ws : Workstation | (some ws.workers) and (one w.Workstation)
inv2 T: all w : Worker ,  ws : Workstation | (some ws.workers) and (one Workstation.^w)
inv2 T: all w : Worker ,  ws : Workstation | (some ws.workers) and (one Workstation.~w)
inv2 T: all w : Worker ,  ws : Workstation | (some ws.workers) and (one Workstation.w)

---
inv9 T: one Workstation.^Workstation.succ
inv9 T: one ^Workstation.succ
inv9 T: one begin.(^begin.succ).end
inv9 T: one begin.(^succ).end
inv9 S: one begin.^(w : Workstation | some w.succ).end
inv9 S: one begin.^(w : Workstation | some w.succ)
inv9 S: ^(w : Workstation | some w.succ)
inv9 S: ^w.succ
inv9 T: ^Workstation.succ
inv9 T: ^begin.succ
inv9 T: begin.^succ
inv9 T: one begin.^succ.end
inv9 T: one begin.^(begin.succ.end)
inv9 T: one begin.^(succ.end)
inv9 T: one begin.^({ w:Workstation | some succ.w}).end
inv9 T: one begin.^{some w : Workstation | one succ.w}.end
inv9 T: one begin.^{w : Workstation | one succ.w}.end
inv9 T: some w : Workstation | one begin.^{y : Workstation | one w.succ.y}.end
inv9 T: one begin.^{w : Workstation | one succ.w}.end
inv9 T: one begin.^{w,z : Workstation | one w.succ.z}.end
inv9 T: one begin.^{all w,z : Workstation | one w.succ.z}.end
inv9 T: one begin.^{all w,z : Workstation | one w.succ.z}.end
inv9 T: one begin.^{w,z : Workstation | one w.succ.z}.end
inv9 T: one begin.^{w,z : Workstation | one w.succ.z}
inv9 T: one begin.^{w : Workstation | one succ.w}.end
inv9 T: one begin.^{w : Workstation | some succ.w}.end
inv9 T: end in begin.^{w : Workstation | one succ.w}
inv9 T: begin in ^{w : Workstation | one w.succ}.end
inv9 T: one begin.^{w : Workstation | one succ.w}
inv9 T: one begin.^succ.Workstation
inv9 T: one begin.^succ.Workstation.end
inv9 T: one begin.^(succ.Workstation).end
inv9 T: one w : Workstation | begin.^(succ.w).end
inv9 T: one w : Workstation | begin.^succ.end
inv9 T: all x : Workstation | one x.succ	one begin.^succ.end
inv9 T: all x : Workstation | one x.succ	begin.^succ.end
inv9 T: all x : Workstation | one x.succ	begin.(^succ).end

---
inv2 T: all workstation : Workstation | all workers : Worker | workers in workstation.workers != none and worker in Workstation.workers
inv2 T: all workstation : Workstation | all workers : Worker | (workers in workstation.workers) != none and worker in Workstation.workers
inv2 T: all workstation : Workstation | all workers : Worker | workstation.workers != none and worker in Workstation.workers
inv2 T: all workstation : Workstation | all workers : Worker | Workstation.workers != none and worker in Workstation.workers
inv2 S: all workers : Worker | workstation.workers != none and worker in Workstation.workers
inv2 T: all workers : Worker | Workstation.workers != none and worker in Workstation.workers

---
inv4 S: all c : Component | all m : material | c.parts != none and m.parts is none
inv4 T: all c : Component | all m : Material | c.parts != none and m.parts is none
inv4 S: all c : Component | all m : Material | (c.parts != none) and (m.parts is none)
inv4 S: all c : Component | all m : Material | (c.parts != none) and (m.parts is none)
inv4 S: all c : Component | all m : Material | (c.parts != none) and (m.parts is none))

---
inv5 S: all w : Workstation | all w1,w2 : Worker | (w1 in w.workers and w2 in w.workers and w1 is Human) implies w2 is Human
inv5 T: all w : Workstation | all w1,w2 : Worker | w1 in w.workers and w2 in w.workers and w1 is Human implies w2 is Human
inv5 S: all w : Workstation | all w1,w2 : Worker | (w1 in w.workers and w2 in w.workers and w1 is Human) implies w2 is Human
inv5 S: all w : Workstation | all w1,w2 : Worker | (w1 in w.workers and w2 in w.workers and w1 is Human) implies (w2 is Human)
inv5 S: all w : Workstation | all w1,w2 : Worker | (w1 in w.workers and w2 in w.workers and w1 is Human) implies (w2 is Human
inv5 T: all w : Workstation | all w1,w2 : Worker | w1 in w.workers and w2 in w.workers and w1 is Human implies w2 is Human
inv5 S: all w : Workstation | all w1,w2 : Worker | (w1 in w.workers and w2 in w.workers and w1 is Human) implies w2 is Human
inv5 S: all w : Workstation | all w1,w2 : Worker | ((ws->w1 in workers and ws->w2 in workers and w1 in Human)	implies (w2 in Human)
inv5 S: all w : Workstation | all w1,w2 : Worker |  (w1 in w.workers and w2 in w.workers and w1 is Human) implies w2 is Human

---
inv2 T: all ws: Workstation| sum w: Worker | w->ws in workers	all k: Worker | one ks: Workstartion | w->ks in workers
inv6 T: all c:Component | c->c not in c.*parts
inv6 T: all c:Component | c->c not in c.(*parts)
inv6 T: all c:Component | c->c not in c.parts
inv6 S: all c:Component | c->c not in c*.parts
inv6 S: all c:Component | c->c not in c^.parts
inv6 T: all c:Component | c->c not in *(c.parts)
inv6 T: all c:Component | c->c not in *(c.parts)
inv6 T: all c:Component | c->c not in (c.*parts)
inv6 T: all c:Component | c->c not in ^(c.parts)
inv6 T: all c:Component | c->c not in c.parts

---
inv8 T: all c:Component | c in Dangerous => Human not in workers.workstation
inv8 T: all c:Component | c in Dangerous => Human not in c->workstation.workers
inv8 T: all c:Component | c in Dangerous => Human not in (c->workstation).workers
inv8 T: all c:Component, ws:Workstation | c in Dangerous and c->ws in workstation => Human not in workers
inv8 S: all c:Component, ws:Workstation | c in Dangerous and c->ws in workstation => (not some h:Human h in workers)
inv8 T: all c:Component, ws:Workstation | c in Dangerous and c->ws in workstation => (not some h:Human| h in workers)

---
inv2 S: w : Workstation, wo : Worker | w one -> some wo
inv2 T: all w : Workstation, wo : Worker | w one -> some wo
inv2 S: all w : Workstation, wo : Worker | w one -> some wo in workers
inv2 S: all w : Workstation, some wo : Worker | w -> wo in workers	all w : Worker | w in workers
inv2 S: all w : Workstation, some wo : Worker | w -> wo in workers	all wo : Worker | one w : Workstation| w -> wo in workers
inv2 S: all w : Workstation, some wo : Worker | w -> wo in workers and	all wor : Worker | one wr : Workstation| wr -> wor in workers

---
inv9 T: one Workstation.^Workstation.succ
inv9 T: one ^Workstation.succ
inv9 T: one begin.(^begin.succ).end
inv9 T: one begin.(^succ).end
inv9 S: one begin.^(w : Workstation | some w.succ).end
inv9 S: one begin.^(w : Workstation | some w.succ)
inv9 S: ^(w : Workstation | some w.succ)
inv9 S: ^w.succ
inv9 T: ^Workstation.succ
inv9 T: ^begin.succ
inv9 T: begin.^succ
inv9 T: one begin.^succ.end
inv9 T: one begin.^(begin.succ.end)
inv9 T: one begin.^(succ.end)
inv9 T: one begin.^({ w:Workstation | some succ.w}).end
inv9 T: one begin.^{some w : Workstation | one succ.w}.end
inv9 T: one begin.^{w : Workstation | one succ.w}.end
inv9 T: some w : Workstation | one begin.^{y : Workstation | one w.succ.y}.end
inv9 T: one begin.^{w : Workstation | one succ.w}.end
inv9 T: one begin.^{w,z : Workstation | one w.succ.z}.end
inv9 T: one begin.^{all w,z : Workstation | one w.succ.z}.end
inv9 T: one begin.^{all w,z : Workstation | one w.succ.z}.end
inv9 T: one begin.^{w,z : Workstation | one w.succ.z}.end
inv9 T: one begin.^{w,z : Workstation | one w.succ.z}
inv9 T: one begin.^{w : Workstation | one succ.w}.end
inv9 T: one begin.^{w : Workstation | some succ.w}.end
inv9 T: end in begin.^{w : Workstation | one succ.w}
inv9 T: begin in ^{w : Workstation | one w.succ}.end
inv9 T: one begin.^{w : Workstation | one succ.w}
inv9 T: one begin.^succ.Workstation
inv9 T: one begin.^succ.Workstation.end
inv9 T: one begin.^(succ.Workstation).end
inv9 T: one w : Workstation | begin.^(succ.w).end
inv9 T: one w : Workstation | begin.^succ.end
inv9 T: all x : Workstation | one x.succ	one begin.^succ.end
inv9 T: all x : Workstation | one x.succ	begin.^succ.end
inv9 T: all x : Workstation | one x.succ	begin.(^succ).end

---
inv9 S: all ws, wsb : Workstation | (wsb in begin and ws = != wsb) implies ws in wsb.^(succ)	all ws : Workstation | ws not in ws.^(succ)	all ws : Workstaion | ws not in end implies w.succ
inv9 S: all ws, wsb : Workstation | (wsb in begin and ws = != wsb) implies ws in wsb.^(succ)	all ws : Workstation | ws not in ws.^(succ)	all ws : Workstaion | ws not in end implies w.succ
inv9 S: all ws, wsb : Workstation | (wsb in begin and ws = != wsb) implies ws in wsb.^(succ)	all ws : Workstation | ws not in ws.^(succ)	all ws : Workstaion | ws not in end implies w.succ
inv9 S: all ws, wsb : Workstation | (wsb in begin and ws != wsb) implies ws in wsb.^(succ)	all ws : Workstation | ws not in ws.^(succ)	all ws : Workstaion | ws not in end implies w.succ
inv9 S: all ws, wsb : Workstation | (wsb in begin and ws != wsb) implies ws in wsb.^(succ)	all ws : Workstation | ws not in ws.^(succ)	all ws : Workstation | ws not in end implies w.succ
inv9 T: all ws, wsb : Workstation | (wsb in begin and ws != wsb) implies ws in wsb.^(succ)	all ws : Workstation | ws not in ws.^(succ)	all ws : Workstation | ws not in end implies ws.succ
inv9 T: all ws, wsb : Workstation | (wsb in begin and ws != wsb) implies ws in wsb.^(succ)	all ws : Workstation | ws not in ws.^(succ)	all ws : Workstation | (ws not in end) implies ws.succ

---
inv9 T: one Workstation.^Workstation.succ
inv9 T: one ^Workstation.succ
inv9 T: one begin.(^begin.succ).end
inv9 T: one begin.(^succ).end
inv9 S: one begin.^(w : Workstation | some w.succ).end
inv9 S: one begin.^(w : Workstation | some w.succ)
inv9 S: ^(w : Workstation | some w.succ)
inv9 S: ^w.succ
inv9 T: ^Workstation.succ
inv9 T: ^begin.succ
inv9 T: begin.^succ
inv9 T: one begin.^succ.end
inv9 T: one begin.^(begin.succ.end)
inv9 T: one begin.^(succ.end)
inv9 T: one begin.^({ w:Workstation | some succ.w}).end
inv9 T: one begin.^{some w : Workstation | one succ.w}.end
inv9 T: one begin.^{w : Workstation | one succ.w}.end
inv9 T: some w : Workstation | one begin.^{y : Workstation | one w.succ.y}.end
inv9 T: one begin.^{w : Workstation | one succ.w}.end
inv9 T: one begin.^{w,z : Workstation | one w.succ.z}.end
inv9 T: one begin.^{all w,z : Workstation | one w.succ.z}.end
inv9 T: one begin.^{all w,z : Workstation | one w.succ.z}.end
inv9 T: one begin.^{w,z : Workstation | one w.succ.z}.end
inv9 T: one begin.^{w,z : Workstation | one w.succ.z}
inv9 T: one begin.^{w : Workstation | one succ.w}.end
inv9 T: one begin.^{w : Workstation | some succ.w}.end
inv9 T: end in begin.^{w : Workstation | one succ.w}
inv9 T: begin in ^{w : Workstation | one w.succ}.end
inv9 T: one begin.^{w : Workstation | one succ.w}
inv9 T: one begin.^succ.Workstation
inv9 T: one begin.^succ.Workstation.end
inv9 T: one begin.^(succ.Workstation).end
inv9 T: one w : Workstation | begin.^(succ.w).end
inv9 T: one w : Workstation | begin.^succ.end
inv9 T: all x : Workstation | one x.succ	one begin.^succ.end
inv9 T: all x : Workstation | one x.succ	begin.^succ.end
inv9 T: all x : Workstation | one x.succ	begin.(^succ).end

---
inv1 T: all w:Worker | (w & Human) or (w & Robot)
inv1 T: all w:Worker | Workstation.w implies (w & Human or w & Robot)
inv1 S: all w:Worker | Workstation.w | (w & Human or w & Robot)
inv1 T: all w:Worker | all wo:Workstation | (wo.w & Human or wo.w & Robot)
inv1 T: no (Workstation.workers & Human and Workstation.workers & Robot)

---
inv2 S: all wb : Workstation | some w : Worker | w in wb.workers	all wb : Workstation, w : Worker | w in wb.workers
inv2 T: all wb : Workstation | some w : Worker | w in wb.workers	all w : Worker | w in workers
inv2 T: all wb : Workstation | some w : Worker | w in wb.workers	Worker in workers
inv2 T: all wb : Workstation | some w : Worker | w in wb.workers	all w : Worker | w in workers
inv2 T: all wb : Workstation | some w : Worker | w in wb.workers	all w : Worker | w in workers

---
inv3 T: all c : Component | one ws : workstation | ws in c.workstation
inv3 T: all c : Component | one ws : workstation | ws in c.workstation
inv3 T: all c : Component | one ws : workstation | ws in c.workstation
inv3 T: all c : Component, ws : workstation | ws in c.workstation
inv3 T: all c : Component | one  ws : workstation | ws in c.workstation

---
inv2 T: all workstation: Workstation, worker: Worker| some workstation.Workstation
inv2 T: all workstation: Workstation, worker: Worker| some workstation.Workstation
inv2 T: all workstation: Workstation, worker: Worker| some workstation.Workstation
inv2 T: all workstation: Workstation, worker: Worker| some workstation.Workstation
inv2 T: all workstation: Workstation, worker: Worker| some workstation.Workstation
inv2 T: all workstation: Workstation, worker: Worker| some workstation.Workstation

---
inv2 S: all w:Worker| s:Workstation | w in s.workers and s.worker != none
inv2 S: all w:Worker| s:Workstation | w in s.workers and #s.worker > 0
inv2 S: all w:Worker| s:Workstation | w in s.workers	all s:Workstation| some s.workers
inv2 S: all w:Workers | s:Workstation | w in s.workers	all s:Workstation| some s.workers
inv2 S: all w : Workers | s : Workstation | w in s.workers	all s : Workstation | some s.workers
inv2 S: all w : Workers | all s : Workstation | w in s.workers	all s : Workstation | some s.workers

---
inv7 T: all c: Component | some (c.^parts in Dangerous) implies c in Dangerous
inv7 T: all c: Component | (some c.^parts in Dangerous) implies c in Dangerous
inv7 T: all c: Component | (some c.^parts in Dangerous) implies (c in Dangerous)
inv7 T: all c: Component | (some c.parts in Dangerous) implies (c in Dangerous)
inv7 T: all c: Component | (some c.parts in Dangerous)
inv7 T: all c: Component | (some (c.parts in Dangerous)) implies (c in Dangerous)

---
inv2 T: all ws1 : Workstation | all worker : Worker | worker in ws1.workers implies worker not in succ
inv2 T: all ws1 : Workstation | all worker : Worker | worker in ws1.workers implies worker not in succ.workers
inv2 T: all ws1 : Workstation | all worker : Worker | worker in ws1.workers implies no worker in succ.workers
inv2 T: all ws1 : Workstation | all worker : Worker | worker in ws1.workers implies no worker in succ.workers
inv2 T: some ws1 : Workstation | all worker : Worker | worker in ws1.workers implies no worker in succ.workers
inv2 T: some ws1 : Workstation | all worker : Worker | worker in workers.ws1 implies no worker in ws1.succ.workers
inv2 T: all ws1 : Workstation | all worker : Worker | worker in ws1.workers implies no worker in ws1.succ.workers
inv2 T: all ws1 : Workstation | all worker : Worker |some worker in ws1.workers implies no worker in ws1.succ.workers
inv2 T: all ws1 : Workstation | all worker : Worker |some worker in ws1.workers and no worker in ws1.succ.workers
inv2 T: all worker : Worker | worker in workers and no worker in succ.workers
inv2 T: all worker : Worker | worker in workers and worker not in succ.workers

---
inv9 S: all e : entry | end in e.*(succs)
inv9 S: all b : begin | end in e.*(succs)
inv9 S: all b : begin | end in b.*(succs)
inv9 S: all ws : Workstation| ws in begin implies ws.*(succs) in end
inv9 S: all ws : Workstation| ws in begin implies (some ws1 : Workstation | ws1 in ws.*(succs) && ws1 in end)

---
inv2 T: all x: Worker| all s: Workstation| one x in s.worker
inv2 S: all x: Worker| all s: Workstation| #(x in s.worker)=1
inv2 T: all x: Worker| all s: Workstation| #(x in s.workers)=1
inv2 T: all x: Worker| all s: Workstation| one x in s.workers
inv2 T: all x: Worker| all s: Workstation| #s.workers.x=1
inv2 T: all x: Worker| all s: Workstation| one (x in s.workers)
inv2 T: all x: Worker| all s: Workstation| #s.workstation.x=1

---
inv4 S: all c : Component | some
inv4 S: all c : Component | some
inv4 S: all c : Component | some
inv4 S: all c : Component | some
inv4 S: all c : Component | some

---
inv5 T: all h : Human | all r : Robot | all ws : workstation | r in ws.workers implies h not in ws.workers
inv5 S: all h : Human | all r : Robot | all ws : workstation | (r in ws.workers) implies (h not in ws.workers(
inv5 T: all h : Human | all r : Robot | all ws : workstation | (r in ws.workers) implies (h not in ws.workers)
inv5 T: all h : Human | all r : Robot | all ws : workstation | (r in ws.workers) implies (not(h in ws.workers))
inv5 T: all h : Human | all r : Robot | all ws : workstation | (r in ws.workers) iff (not(h in ws.workers))
inv5 T: all r : Robot | all ws : workstation | (r in ws.workers) iff (not(some h : Human| h in ws.workers))
inv5 T: all r : Robot | all ws : workstation | r in ws.workers iff (not(some h : Human| h in ws.workers))

---
inv5 S: all ws : Workstation |  no (w.workers & Robot) or no (w.workers & Human)
inv5 S: all ws : Workstation |  no (ws.workers & Robot) or no (ws.workers & Human)
inv5 S: all w: Workstation | no (w.workers & Robot) or no (w.workers & Human)
inv5 S: all ws : Workstation |  no (ws.workers & Robot) or no (ws.workers & Human)
inv5 S: all ws : Workstation |  no (ws.workers & Robot) or no (ws.workers & Human)

---
inv9 S: all ws : Workstation | one b:Begin | one e:End | end in begin.succs
inv9 S: all ws : Workstation | one b:Begin | one e:End | end in b.succs
inv9 T: all ws : Workstation | end in begin.ws.succs and one end and one begin
inv9 T: all ws : Workstation | end in begin.ws.succs
inv9 T: all ws : Workstation | ws.end in ws.begin.succs
inv9 T: all ws : Workstation | ws->end in ws.begin.succs
inv9 S: all ws : Workstation | one end : Workstation | one begin : Workstation | end in begin.succs
inv9 T: all ws : Workstation | one end : Workstation | one begin : Workstation | end in begin.ws.succs
inv9 S: all ws : Workstation | one end : Workstation | one begin : Workstation | end in ws.succs

---
inv4 S: (all c : Componente | card(c.parts)>1
inv4 S: (all c : Componente | card(c.parts)>1)	and	(all m : Material | card(c.parts)=0)
inv4 S: (all c : Componente | card(c.parts)>1)	and	(all m : Material | card(c.parts)=0)
inv4 S: (all c : Componente | card(c.parts)>1)	and	(all m : Material | card(c.parts)=0)
inv4 S: (all c : Component | card(c.parts)>1)	and	(all m : Material | card(c.parts)=0)
inv4 S: (all c : Component | card(c.parts)>1)	and	(all m : Material | card(m.parts)=0)
inv4 S: (all c : Component | some p : Product | p in c.parts)	and	(all m : Material | no p : Product | p in c.parts)

---
inv5 T: all h : Human | all r : Robot | all ws : workstation | r in ws.workers implies h not in ws.workers
inv5 S: all h : Human | all r : Robot | all ws : workstation | (r in ws.workers) implies (h not in ws.workers(
inv5 T: all h : Human | all r : Robot | all ws : workstation | (r in ws.workers) implies (h not in ws.workers)
inv5 T: all h : Human | all r : Robot | all ws : workstation | (r in ws.workers) implies (not(h in ws.workers))
inv5 T: all h : Human | all r : Robot | all ws : workstation | (r in ws.workers) iff (not(h in ws.workers))
inv5 T: all r : Robot | all ws : workstation | (r in ws.workers) iff (not(some h : Human| h in ws.workers))
inv5 T: all r : Robot | all ws : workstation | r in ws.workers iff (not(some h : Human| h in ws.workers))

---
inv5 S: all ws : Workstation |  no (w.workers & Robot) or no (w.workers & Human)
inv5 S: all ws : Workstation |  no (ws.workers & Robot) or no (ws.workers & Human)
inv5 S: all w: Workstation | no (w.workers & Robot) or no (w.workers & Human)
inv5 S: all ws : Workstation |  no (ws.workers & Robot) or no (ws.workers & Human)
inv5 S: all ws : Workstation |  no (ws.workers & Robot) or no (ws.workers & Human)

---
inv9 S: all ws : Workstation | one b:Begin | one e:End | end in begin.succs
inv9 S: all ws : Workstation | one b:Begin | one e:End | end in b.succs
inv9 T: all ws : Workstation | end in begin.ws.succs and one end and one begin
inv9 T: all ws : Workstation | end in begin.ws.succs
inv9 T: all ws : Workstation | ws.end in ws.begin.succs
inv9 T: all ws : Workstation | ws->end in ws.begin.succs
inv9 S: all ws : Workstation | one end : Workstation | one begin : Workstation | end in begin.succs
inv9 T: all ws : Workstation | one end : Workstation | one begin : Workstation | end in begin.ws.succs
inv9 S: all ws : Workstation | one end : Workstation | one begin : Workstation | end in ws.succs

---
inv1 T: all w:Worker | all h:Human | all r:Robot | w -> h && w->r
inv1 T: all w:Worker | all h:Human | all r:Robot | w -> h & w->r
inv1 T: all w:Worker | all h:Human | all r:Robot | w -> h & w -> r
inv1 T: all w:Worker | all h:Human | all r:Robot | w -> h or w -> r
inv1 T: all w:Worker | w in Robot & w in Human

---
inv7 T: all c : Component | (c.^parts & Dangerous) implies c in Dangerous
inv7 S: all c : Component | (c.^parts & Dangerous) implies all c in Dangerous
inv7 T: all c : Component | (c.^parts & Dangerous) implies c in Dangerous
inv7 T: all c : Component | (c.parts & Dangerous) implies c in Dangerous
inv7 T: all c : Component | (c.parts & Dangerous) => c in Dangerous

---
inv2 T: all ws: Workstation | #(ws.workers) > 0	all w: Worker | #(w.(Workstation)) = 1
inv2 T: all ws: Workstation | #(ws.workers) > 0	all w: Worker | #(w.(Workstation)) = 1
inv2 S: all ws: Workstation | #(ws.workers) > 0	all w: Worker | one w in Workstation
inv2 S: all ws: Workstation | #(ws.workers) > 0	all w: Worker | one w->Workstation
inv2 S: all ws: Workstation | #(ws.workers) > 0	all w: Worker | w in Workstation and one w->ws

---
inv2 T: all ws: Workstation | #(ws.workers) > 0	all w: Worker | #(w.Workstation) = 1
inv2 S: all ws: Workstation | #(ws.workers) > 0	all w: Worker | #(w.ws) = 1
inv2 T: all ws: Workstation, w: Worker | #(ws.workers) > 0 and one w.ws
inv2 T: all ws: Workstation, w: Worker | #(ws.workers) > 0 and one ws.w
inv2 S: all ws: Workstation | #(ws.workers) > 0	all w: Worker | #(w.Workstation) = 1	}
inv2 T: all ws: Workstation | #(ws.workers) > 0	all w: Worker | #(w.Workstation) = 1
inv2 T: all ws: Workstation | #(ws.workers) > 0	all w: Worker | #(w.(Workstation)) = 1
inv2 T: all ws: Workstation | #(ws.workers) > 0	all w: Worker | #(w.(Workstation)) = 1
inv2 T: all ws: Workstation | #(ws.workers) > 0	all w: Worker | #(w.(Workstation)) = 1

---
inv9 S: one begin.succ and one succ.end and		(no succ & iden) and ((w in begin and one w.succ-w) or (w in end and one succ.w-w) or (one w.succ-w and one succ.w-w) or (w in begin+end))
inv9 S: one begin.succ and one succ.end and		(no succ & iden) and ((w in begin and one w.succ-w) or (w in end and one succ.w-w) or (one w.succ-w and one succ.w-w) or (w in begin+end))
inv9 S: one begin.succ and one succ.end and		(no succ & iden) and ((w in begin and one w.succ-w) or (w in end and one succ.w-w) or (one w.succ-w and one succ.w-w) or (w in begin+end))
inv9 S: one begin.succ and one succ.end and
inv9 S: one begin.succ and one succ.end and

---
inv5 T: all w: Workstation | #(w.workers in Human) = 0 or #(w.workers in Robot) = 0
inv5 T: all w: Workstation | #w.workers in Human = 0 or #w.workers in Robot = 0
inv5 T: all w: Workstation | #(w.workers in Human) = 0 or #(w.workers in Robot) = 0
inv5 T: all w: Workstation | (#w.workers in Human) = 0 or (#w.workers in Robot) = 0
inv5 S: all w: Workstation | (#w.workers in Human) == 0 or (#w.workers in Robot) == 0
inv5 T: all w: Workstation | (#w.workers in Human) =0 or (#w.workers in Robot) = 0

---
inv4 S: Components in parts	Material not in parts
inv4 T: Component in parts	Material not in parts
inv4 S: all c : Component, m : material | c in parts & m not in parts
inv4 T: all c : Component, m : Material | c in parts & m not in parts
inv4 T: all c : Component | c in parts	parts - Material = parts
inv4 T: all c : Component | c in Product.parts	parts - Material = parts
inv4 T: (Component <: parts) in Component set -> some Product	parts - Material = parts

---
inv9 T: all w: Workstation | one begin in w && one end in w
inv9 T: (all w: Workstation | one begin in w) && (all w: Workstation | one end in w)
inv9 S: one begin in Workstation
inv9 T: (all w: Workstation | one end in w.succs) && (all w: Workstation | one end in w)
inv9 T: (all w: Workstation | one end in w.succs)
inv9 S: (all w: Workstation | one x: Workstation | x in w.succs && x in end)

---
inv5 S: all x,y in Workstation.workers implies x = y
inv5 S: all x,y in Workstation.workers implies x == y
inv5 S: all x in Workstation.workers implies x in Human or x in Robot
inv5 S: (all x in Workstation.workers) implies (x in Human or x in Robot)
inv5 S: (all x: Workstation.workers) implies (x in Human or x in Robot)
inv5 S: all x: Workstation.workers implies x in Human or x in Robot

---
inv3 S: all x : Users | x.sees = x.follows.posts
inv3 S: all x : Users | x.sees = follows.x.posts
inv3 S: all x : Users | x.sees = x.follows.posts
inv3 S: all x : Users | all p : x.sees | p not in Ad => x.sees.posts
inv3 S: all x : Users | all p : x.sees | p not in Ad => p in u.sees.posts
inv3 S: all x : User | all p : x.sees | p not in Ad => p in u.sees.posts

---
inv3 S: all u: User | some y: User | all p: Photo | u.follows.posts | u->y in follows
inv3 S: all p:Photo - Ad | some u1 | all u2 | (p in u1.posts and p in u2.sees) implies u1 in u2.follows
inv3 S: all p:Photo - Ad | some ua | all ub | (p in u1.posts and p in u2.sees) implies u1 in u2.follows
inv3 S: all p:Photo - Ad | some ua | all ub | (p in u1.posts and p in u2.sees) implies ub in ua.follows
inv3 S: all p:Photo - Ad | some ua | all ub | (p in u1.posts and p in u2.sees) implies ub in ua.follows
inv3 S: all p:Photo - Ad | some ua | all ub
inv3 S: all p:Photo - Ad |
inv3 S: all p:Photo - Ad
inv3 S: all p:Photo-Ad
inv3 S: all p:Photo - Ad | some a | all b | (p in a.posts and p in b.sees) implies b in a.follows
inv3 S: all p:Photo - Ad | some a | all b | (p in a.posts and p in b.sees)

---
inv4 T: all x: User | some x.posts in Ad implies (all p: Photo | p in x.posts and p in Ad)
inv4 T: all x: User | some x.posts in Ad implies (all p: Photo | p in x.posts and p in Ad)
inv4 S: all x: User | some x.posts in Ad implies (all p: Photo | p in x.posts | p in Ad)
inv4 S: all x: User | some x.posts in Ad implies (all p: Photo | p in x.posts and p in Ad
inv4 T: all x: User | some x.posts in Ad implies (all p: Photo | p in x.posts and p in Ad)
inv4 T: all x: User | some x.posts in Ad implies (all p: Photo | p in x.posts and p in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Adb implies ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies ph2 in Ad
inv4 S: all x: User | some p1: Photo | all p2: Photo | (p1 in x.posts and p1 in Ad) implies (p2 in x.posts and p in Ad)

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies ph2 in Ad
inv4 T: all u1 : User | some u1.posts in Ad implies (all ph : Photo | ph in Ad)
inv4 T: all u1 : User | some u1.posts in Ad implies ((all ph : Photo |  ph in u1.posts) implies ph->Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies ((all ph : Photo |  ph in u1.posts) implies ph is Ad)

---
inv3 T: all u : User | all p : Photo | u.sees.p implies p in u.follows.posts or p in Ad
inv3 T: all u : User | all p : Photo | u.sees.p implies p in u.follows.posts or p in Ad is Ad
inv3 T: all u : User | all p : Photo-Ad | u.sees.p implies p in u.follows.posts
inv3 T: all u : User | all p : Photo-Ad | p in u.sees implies p in u.follows.posts or p is Ad
inv3 T: all u : User | all p : Photo | p in u.sees implies p in u.follows.posts or p is Ad

---
inv1 S: all p:posts | lone u :user | p in u
inv1 T: all p:posts | lone u :User | p in u
inv1 T: all p:posts | lone u :User | p -> u
inv1 S: all p:Photo | all u:user | lone p in u.posts
inv1 T: all p:Photo | all u:User | lone p in u.posts
inv1 T: all p:Photo | all u:User | lone (p in u.posts)
inv1 T: all p:Photo | all u:User | some (p in u.posts)

---
inv1 S: all i : Photo | lone User.posts(i)
inv1 T: all i : Photo | lone User.posts.i
inv1 T: all i : Photo | i lone User
inv1 T: all i : Photo | i lone User.posts
inv1 S: all i : Photo | all u : User | u.posts -> photo
inv1 T: all i : Photo | all u : User | u.posts -> i

---
inv5 S: some i : Influencer
inv5 T: some i : Influencer | all u : User | follows.i
inv5 S: some i : Influencer | all u : User | all follows.i
inv5 S: some i : Influencer | all u : User follows.i
inv5 S: some i : Influencer | all u : User | all follows.i
inv5 T: some i : Influencer | all u : User | follows.i
inv5 T: some i : Influencer | all u : User | follows.u
inv5 T: some i : Influencer | all u : User | follows.i
inv5 T: some i : Influencer | all u : User | follows.i
inv5 T: all i : Influencer | all u : User | follows.i
inv5 T: all i : User | all u : User | follows.i
inv5 T: all i : Influencer | follows.i
inv5 S: all i : Influencer | all follows.i

---
inv5 S: all i : Influencer | all u : User | all follows.i
inv5 S: all i : Influencer	all u : User | all follows.i
inv5 S: all i : Influencer (all u : User | all follows.i)
inv5 S: all i : Influencer implies (all u : User | all follows.i)
inv5 S: all i : Influencer | all u : User | u.follows.i)
inv5 S: all i : Influencer | User in follows.i)

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv1 T: all p: Photo, u: User | u.posts.p
inv1 T: all p: Photo, u: User | u.posts.p
inv1 T: all u: User, p: Photo | u.posts.p
inv1 T: all u: User, p: Photo | u.posts
inv1 T: all u: User | u.posts
inv1 T: all u : User | u.posts
inv1 T: all p: Photo, u: User | p in Photo iff u.posts

---
inv1 T: all p:Photo, u: User | p.Photo in u.posts
inv1 T: all p:Photo, u: User | u.posts in p.Photo
inv1 T: all p:Photo | p in Photo iff posts.p
inv1 T: all p:Photo | p in Photo iff posts.p
inv1 T: all p:Photo | posts.p
inv1 T: all p:Photo, u:User | p in Photo iff u.posts

---
inv4 T: all p:Photo | posts.p
inv4 S: all u:User, some p:Photo | p in u.posts & Ad implies none u.posts - Ad
inv4 S: all u:User, some p:Photo | (p in u.posts & Ad) implies (none u.posts - Ad)
inv4 S: all u:User, some p:Photo | (p in u.posts & Ad) implies u.posts - Ad
inv4 S: all u:User, some p:Photo | p in u.posts & Ad

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv2 T: all u : User | no u->u in follows
inv2 S: no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 S: all u : User | not in u.follows.u

---
inv2 T: all u : User | no u->u in follows
inv2 S: no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 S: all u : User | not in u.follows.u

---
inv4 S: all u:User, a:Ad,p:Photos-Ad | a in u.posts implies u.posts none p
inv4 T: all u:User, a:Ad,p:Photo-Ad | a in u.posts implies u.posts none p
inv4 T: all u:User, a:Ad,p:Photo-Ad | a in u.posts implies posts in u none -> p
inv4 T: all u:User, a:Ad,p:Photo-Ad | a in u.posts implies posts in u none -> Photo
inv4 T: all u:User, a:Ad,p:Photo-Ad | a in u.posts implies posts in User none -> Photo
inv4 T: all u:User, a:Ad,p:Photo-Ad | a in u.posts implies posts in User none -> Photo

---
inv3 T: all x : User | all y : User | all z : Photo | x <: sees.z[y]
inv3 T: all x : User | all y : User | all z : Photo | x :> sees.z[y]
inv3 T: all x : User | all y : User | all z : Photo | x follows.y && x :> sees.z[y]
inv3 T: all x : User | all y : User | all z : Photo | x follows.y => x :> sees.z[y]
inv3 T: all x : User | all y : User | all z : Photo | x follows.y && y posts.z => x sees.z
inv3 T: all x : User | all y : User | all z : Photo | x follows.y && y posts.z => x sees.z
inv3 T: all x : User | all y : User | all z : Photo | y->x in follows && z->y in posts => x sees.z
inv3 T: all x : User | all y : User | all z : Photo | y->x in follows && z->y in posts -> x sees.z

---
inv3 T: all x : User | x sees in x.follos.posts		all x : Ad | one sees.x
inv3 T: all x : User | x sees in (x.follos.posts + Ad)
inv3 T: all x : User | x sees in (x.follows.posts)		all x : Ad | one sees.x
inv3 T: all x : User | x sees in x.follows.posts		all x : Ad | one sees.x
inv3 T: all x : User | x sees in (x.follows.posts + Ad)

---
inv7 S: all x: User | x.suggested in x->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x.follows->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x.follows->y.follows
inv7 S: all x,y: User | x.suggested in x^.follows.follows - x.follows

---
inv1 S: all p, u : univ | u in User and u->p in Photo implies all p | u->p
inv1 S: all p, u : univ | u in User and p in Photo implies all p | u->p
inv1 S: all p,u : univ | u in User and p in Photo implies all p | u->p
inv1 S: all u : User | u->p in posts implies all p | u->p
inv1 S: all one u : User | u->p in posts implies all p | u->p
inv1 S: all one u,p : univ |u in User and p in u.posts implies all p | u->p
inv1 S: all u : User | p : posts |p in u.posts implies all p | u->p

---
inv2 T: User.follows & User.follows not in iden
inv2 T: User.follows & User.follows not in iden
inv2 T: User.follows & User.follows & iden = none
inv2 T: User.follows & iden = none
inv2 T: User.follows + iden = none
inv2 T: User.follows-iden = User.follows
inv2 T: User.follows not in iden

---
inv4 T: all u : User | u.posts+Ad implies u.posts in Ad
inv4 T: all u : User | u.posts implies u.posts in Ad
inv4 T: all u : User | u.posts&Ad implies u.posts in Ad
inv4 T: all u : User | u.posts&Ad implies u.posts-Ad = none
inv4 T: all u : User | u.posts&Ad
inv4 T: all u : User | u.posts
inv4 T: all u : User | u

---
inv8 T: all u: User | all a : Ad | a in u.sees => u.follows.posts or u.suggested.posts
inv8 T: all u: User | all a : Ad | a in u.sees => u.follows.posts or u.suggested.posts
inv8 S: all u: User, all a : Ad | a in u.sees => u.follows.posts or u.suggested.posts
inv8 S: all u: User, all a : Ad | a in u.sees => u.follows.posts or a in u.suggested.posts
inv8 S: all u: User, all a : Ad | a in u.sees => a in u.follows.posts or a in u.suggested.posts

---
inv1 S: all p : Photo | one posts.x
inv2 T: all u : User | u not in follows
inv2 T: all u : User | u in follows
inv2 S: all u : User | u not in follows.^
inv2 S: all u : User | u not in follows.
inv2 T: all u : User | u.follows

---
inv6 T: all x : Influencer | all d : Day | d implies posts.x
inv6 T: all x : Influencer | all d : Day | d implies x.posts
inv6 T: all x : Influencer | all d : Day | x.posts & d
inv6 T: all x : Influencer | all d : Day | x.posts & d.date
inv6 T: all x : Influencer | all d : Day | x.posts & d

---
inv6 S: all x : Influencer | all d : Day | some p : Photo | x->p in day
inv6 S: all x : Influencer | all d : Day | some p : Photo | x->p in day
inv6 T: all x : Influencer | all d : Day | some p : Photo | x->p in d
inv6 T: all x : Influencer | all d : Day | some p : Photo | p->x in d
inv6 T: all x : Influencer | all d : Day | some p : Photo | p->x in d

---
inv3 T: all x : User | all y : Photo | x.sees -> x.follows
inv3 T: all x : User | all y : Photo | x.sees -> x.follows	all x : User | x.sees -> x.suggested
inv3 T: all x : User | all y : Photo | x.sees -> x.follows	all x : User | x.sees -> x.suggested
inv3 T: all x : User | all y : Photo | x.sees -> x.follows	all x : User | x.sees -> x.suggested
inv3 T: all x : User | all y : Photo | x.sees -> x.follows	all x : User | x.sees -> x.suggested
inv3 T: all x : User | all y : Photo | x.sees -> x.follows	all x : User | x.sees -> x.suggested
inv3 T: all x : User | all y : Photo | x.sees -> x.follows	all x : User | x.sees -> x.suggested
inv3 T: all x : User | all y : Photo | x.sees -> x.follows	all x : User | x.sees -> x.suggested

---
inv3 S: all x : User | x in posts.x implies x in all posts.x
inv3 S: all x : User | x in posts.x implies x in all posts.x
inv3 S: all x : User | x in posts.x implies x in all posts.x
inv3 S: all x : User | x in posts.x implies x in all posts.x
inv3 S: all x : User | x in posts.x implies x in all posts.x
inv3 S: all x : User | x in posts.x implies x in all posts.x
inv3 S: all x : User | x in posts.x implies x in all posts.x
inv3 S: all x : User | x in posts.x implies x in all posts.x
inv3 S: all x : User | x in posts.x implies x in all posts.x

---
inv2 T: all u : User | no u->u in follows
inv2 S: no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 S: all u : User | not in u.follows.u

---
inv4 S: all x: User, y: Photo | y in ad implies all z: x.posts.Ad
inv4 S: all x: User, y: Photo | y in ad implies all z: x.posts.Ad
inv4 S: all x: User, y: Photo | y in ad implies all z: Photo | x -> z in posts implies z in Ad
inv4 S: all x: User, y: Photo | y in ad implies all x.posts in Ad
inv4 S: all x: User, y: Photo | y in ad and y in x.posts implies all x.posts in Ad
inv4 S: all x: User, y: Photo | y in ad and y in x.posts implies x.posts in Ad
inv4 S: all x: User, y: Photo | y in Ad and y in x.posts implies x.posts in Ad

---
inv8 T: all u: User| all a: Ad  | u.sees.a implies a in u.follows.post + u.suggested.posts
inv8 T: all u: User| all a: Ad  | u.sees.a implies a in u.follows.post and u.suggested.posts
inv8 T: all u: User| all a: Ad  | u.sees.a implies a in u.follows.post
inv8 T: all u: User| all a: Ad | u.sees.a implies a in u.follows.post or a in u.suggested.posts
inv8 T: all u: User| all a: Ad | u.sees.a implies a in u.follows.posts or a in u.suggested.posts
inv8 S: all u: User| all a: Ad | u -> ad in sees implies a in u.follows.posts or a in u.suggested.posts

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv5 S: all u: User-i, i:Influencer | u in i.follows
inv5 S: all u: User-i, i:Influencer | i in u.follows
inv5 S: all u: User-i, i:Influencer | u in follows.i
inv5 S: all u: User-i| all i: Influencer | u in follows.i
inv5 S: all u: User-i| all i:Influencer | u in follows.i

---
inv3 T: all u: User | all p: Photo | u.follows.posts in p.Photo-Ad
inv3 T: all u: User | all p: Photo | u.follows.sees in p.Photo-Ad
inv3 T: all u: User | all p: Photo | u.follows.sees in u.sees.Photo-Ad
inv3 T: all u: User | all p: Photo | u.follows.sees in u.sees.p-Ad
inv3 S: all u: User | all p: Photo | u.follows.see.posts in p.Photo-Ad
inv3 T: all u: User | all p: Photo | u.follows.sees.posts in p.Photo-Ad
inv3 T: all u: User | all p: Photo | u.follows.posts in p.Photo-Ad
inv3 T: all u: User | all p: Photo | u.follows.posts in p.Photo-Ad

---
inv4 S: all u: User | u.posts in Ad implies all u.posts in Ad
inv4 T: all u: User | all p:Photo | u.posts in Ad implies u.posts = p in Ad
inv4 T: all u: User | u.posts in Ad implies u.posts
inv4 T: all u: User | all p: Photo | some u.posts in Ad implies u.posts in Ad
inv4 T: all u: User | some u.posts in Ad implies u.posts in Ad
inv4 S: all u: User | some u.posts in Ad implies u.posts==Ad
inv4 T: all u: User | some u.posts in Ad

---
inv5 T: all u : User | ((u.follows.Influencer) -> Influencer) in iden
inv5 S: all u : User | u.follows.Influecer in Influencer
inv5 S: all u : User | u.follows.Influecer in Influencer
inv5 T: all u : User | u.follows.Influencer in Influencer
inv5 T: all u : User | u.(follows.Influencer) in Influencer
inv5 T: all u : User | (u.follows).Influencer in Influencer
inv5 T: all u : User | u.follows.Influencer
inv5 T: all u : User | (u.follows)-(User-Influencer)

---
inv3 T: all u:User | u.posts not in u.sees	all u:User | all p:Photo | p in u.sees implies u.follows->posts
inv3 T: all x : User | all y : sees.x | y is Photo -> y in x.follows
inv3 T: all x : User | all y : sees.x | y is Photo -> post.y in x.follows
inv3 T: all x : User | all y : sees.x | y is Photo -> y.post in x.follows
inv3 T: all x : User | all y : sees.x | y not is Ad -> y.post in x.follows
inv3 T: all x : User | all y : sees.x | y not is Ad -> y.post in follows.x
inv3 T: all x : User | all y : sees.x | y not is Ad implies y.post in follows.x
inv3 T: all x : User | all y : sees.x | y not is Ad implies y.post in follows.x
inv3 T: all x : User | all y : sees.x | y not is Ad implies y.post in follows.x
inv3 T: all x : User | all y : sees.x | y not is Ad implies y.post in follows.x	all x : User | all y : Ad | x.sees.y
inv3 T: all x : User | all y : sees.x | y not is Ad implies y.post in follows.x	all x : User | all y : Ad | x.sees.y
inv3 T: all x : User | all y : sees.x | y not is Ad implies y.post in follows.x	all x : User | all y : Ad | x.sees.y
inv3 T: all x : User | all y : sees.x | y not is Ad implies y.post in follows.x	all x : User | all y : Ad | x.sees.y
inv3 T: all x : User | all y : sees.x | y is Photo implies y.post in follows.x	all x : User | all y : Ad | x.sees.y
inv3 T: all x : User | all y : sees.x | y is Photo implies y.post in follows.x	all x : User | all y : Ad | x.sees.y

---
inv7 S: all x: User | x.suggested in x->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x.follows->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x.follows->y.follows
inv7 S: all x,y: User | x.suggested in x^.follows.follows - x.follows

---
inv1 S: all u:User,u2:User | all p:Photo | p in u.posts and u != u2 implies p not in u2.posts	all u.User | lone u.posts
inv1 S: all u:User,u2:User | p in u.posts and u != u2 implies p not in u2.posts
inv1 S: all u:User,u2:User | p in u.posts and u != u2 implies p not in u2.posts
inv1 S: all u:User,u2:User | p:Photo| p in u.posts and u != u2 implies p not in u2.posts
inv1 S: all u:User,u2:User | p:Photo | p in u.posts and u != u2 implies p not in u2.posts
inv1 S: all u:User,u2:User | p:Photo | p in u.posts and u != u2 implies p not in u2.posts
inv1 S: all u:User,u2:User | p:Photo | p in u.posts and p in u2.posts implies u = u2

---
inv6 S: all d:Day | u:User | u in Influencer and p implies some  p:Photo | p->u.posts in d
inv6 S: all d:Day | u:User | u in Influencer implies some  p:Photo | p->u.posts in d
inv6 S: all d:Day | u:User | u in Influencer implies some  p:Photo | p.date = d and p in u.posts
inv6 S: all d:Day | u:User | u in Influencer implies some  p:Photo | p.date = d and p in u.posts
inv6 S: all d:Day | u:User | u in Influencer implies some p:Photo | p.date == d and p in u.posts
inv6 S: all d:Day | u:User | u in Influencer implies some p:Photo | d in p.date and p in u.posts
inv6 S: all d:Day | u:User | u in Influencer implies some p:Photo | d in p.date
inv6 S: all d:Day | u:User | u in Influencer implies some p:Photo | d != p.date
inv6 S: all d:Day | u:User | u in Influencer implies some p:Photo | d in p.date
inv6 S: all d:Day | u:User | u in Influencer implies some p:Photo | p in u.posts

---
inv6 S: all d:Day | u:User | u in Influencer implies some p:Photo | p in u.posts
inv6 S: all d:Day | u:User | p:Photo | u in Influencer implies some p in u.posts
inv6 S: all d:Day | u:User | p:Photo | u in Influencer implies some p in u.posts
inv6 S: all d:Day | u:User | p:Photo | u in Influencer implies some p in u.posts
inv6 S: all d:Day | u:User | p:Photo | u in Influencer implies some p in u.posts

---
inv8 S: all a:Ad | u:User | a in u.sees implies some u2:User | a in u.posts and u2 in u.suggested or u2 in u.follows
inv8 S: all a:Ad | u:User | a in u.sees implies some u2:User | a in u.posts and u2 in u.suggested
inv8 S: all a:Ad | u:User | a in u.sees implies some u2:User | a in u2.posts and u2 in u.suggested or u2 in u.follows
inv8 S: all p:Photo | u:User | p in u.sees and p in Ad implies some u2:User | a in u2.posts and u2 in u.suggested or u2 in u.follows
inv8 S: all p:Photo | u:User | p in u.sees and p in Ad implies some u2:User | a in u2.posts and u2 in u.suggested

---
inv3 T: all x : User | x.sees in x.follows.posts not Ad
inv3 T: all x : User | x.sees in x.follows.posts=(Photo-Ad)
inv3 T: all x : User | x.sees in x.follows.posts in (Photo-Ad)
inv3 T: all x : User | x.sees in (x.follows.posts in (Photo-Ad))
inv3 S: all x : User | x.sees in x.follows.posts or x.sees = (Photo + Add)

---
inv1 T: all x : Photo | some y : User | y->x
inv1 T: all x : Photo | some y : User | y->x
inv1 T: all x : Photo | some y : User | y.posts->x
inv1 T: all x : Photo | some y : User | y.posts implies x
inv1 T: all x : Photo | (some y : User | y.posts implies x)

---
inv3 T: all u1,u2 : User, p: Photo | u1.sees.p and p not in Ad implies p in u2.posts and u2 in u1.follows
inv3 T: all u1,u2 : User, p: Photo | u1.sees.p and p not in Ad implies (p in u2.posts and u2 in u1.follows)
inv3 T: all u1,u2 : User, p: Photo | (u1.sees.p and p not in Ad) implies (p in u2.posts and u2 in u1.follows)
inv3 T: all u1,u2 : User, p: Photo | (u1.sees.p and (p not in Ad)) implies (p in u2.posts and u2 in u1.follows)
inv3 T: all u1,u2 : User, p: Photo | (u1.sees.p and (p not in Ad)) implies ((p in u2.posts) and (u2 in u1.follows))
inv3 T: all u1,u2 : User, p: Photo | (u1.sees.p and (p not in Ad)) implies ((p in u2.posts) and (u2 in u1.follows))

---
inv4 S: all p,p2:Photo | all u1:User | u1->p in posts and u1->p2 in posts | p in Ad
inv4 S: all p:Photo | all u1:User | all p2:Photo | u1->p in posts and u1->p2 in posts | p in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad
inv4 S: all u1: User | some u1->Ad in posts implies (all ph:Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1: User | some u1.posts in Ad implies (all ph:Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in       u1.posts | ph in Ad)

---
inv3 S: all x : User |all p : Photo | p not in Ad| p in x.follows
inv3 S: all x : User |all p : Photo | p not in Ad| p in x.follows.posts
inv3 S: all x : User |all p : Photo | p not in Ad| p in (x.follows).posts
inv3 S: all x : User |all p : Photo | p not in Ad| p in (x.follows).posts| p in sees.x
inv3 S: all x : User |all p : Photo | p not in Ad| p in (x.follows).posts| p in x.sees

---
inv4 S: all x : User | all p : x.posts | all p in Ad iff one p in Ad
inv4 S: all x : User | all p : x.posts | all p in Ad iff one p in Ad
inv4 S: all x : User | all p : x.posts |one p2: x.posts| all p in Ad iff p2 in Ad
inv4 S: all x : User | all p : x.posts |all p in Ad iff one p in Ad
inv4 S: all x : User | all p : x.posts |(all p in Ad) iff (one p in Ad)
inv4 T: all x : User | all p : x.posts |( p in Ad) iff (one p in Ad)
inv4 T: all x : User | all p : x.posts |( p in Ad) iff (some p in Ad)
inv4 S: all x : User | all p : x.posts |(all p in Ad) iff (some p in Ad)
inv4 S: all x : User | some p : x.posts.Ad |all p in Ad
inv4 S: all x : User | some p : x.posts in Ad |all p in Ad

---
inv1 S: all p: Photo, some u:User | u->p in posts implies ( all u2:User | u2!=u implies not u2->p in posts )
inv1 S: all p: Photo, some u:User | u->p in posts implies ( all u2:User | u2!=u implies (not u2->p in posts) )
inv1 S: all p: Photo, some u:User | u->p in posts
inv1 T: all p: Photo | lone User.p
inv1 T: all p: Photo | lone User.posts.p

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv1 S: all x : Photo | one in posts.x
inv1 S: all x : Photo | one in x.posts
inv1 S: all x : Photo, one y : User | one in y.posts.x
inv1 S: all x : Photo | one y : User | one in y.posts.x
inv1 S: all x : Photo | one in posts.x
inv1 S: e in posts.x
inv1 S: all e : Photo | e in posts.x
inv1 S: all e : Photo | some in posts.e

---
inv2 T: all u : User | none u.follows.u
inv2 S: not p.follows.p
inv2 T: not follows.~follows
inv2 T: not follows.~follows
inv2 T: none follows.~follows
inv2 S: | none follows.~follows

---
inv3 S: all u : User | sees & ad in u.follows.post
inv3 T: all u : User | sees & Ad in u.follows.post
inv3 T: all u : User | sees & Ad in u.follows.post
inv3 T: all u : User | u.sees in Ad in u.follows.post
inv3 T: all u : User | (u.sees in Ad) in u.follows.post
inv3 T: all u : User | all a : Ad | u.sees.a in u.follows.post
inv3 S: all u : User u.sees.Ad in u.follows.post
inv3 T: all u : User | u.sees.Ad in u.follows.post
inv3 T: all u : User | u.sees.Ad in u.follows.posts
inv3 T: all u : User | u.sees.~Ad in u.follows.posts

---
inv4 S: all u : User | some Ad in u.posts implies all Ad in u.posts
inv4 S: all u : User | some Ad in u.posts implies all Ad in u.posts
inv4 S: all u : User | all a : Ad | some u.posts.a implies all u.posts in Ad
inv4 S: all u : User | some u.posts.Ad implies all u.posts.Ad
inv4 T: all u : User | some (u.posts & Ad) implies none (u.posts-Ad)
inv4 T: all u : User | some (u.posts & Ad) implies none u.posts-Ad

---
inv5 S: all u : Users | u in Influencer implies (all follows.u)
inv5 S: all i : Influencer |	all u : Users | u in Influencer implies (follows.User)
inv5 T: all i : Influencer |	all u : User | u in Influencer implies (follows.User)
inv5 T: all u : User | u in Influencer implies (follows.User)
inv5 S: all u : User | u in Influencer implies (all follows.User)
inv5 S: all u : User | u in Influencer implies (none follows.u - follows)
inv5 T: all u : User | u in Influencer implies none follows.u - User

---
inv8 S: all
inv8 S: all
inv8 S: all
inv8 S: all
inv8 S: all
inv8 S: all

---
inv8 S: all u:User,a:Ad | u->a in sees implies (
inv8 S: all u:User,a:Ad | u->a in sees implies (
inv8 S: all u:User,a:Ad | u->a in sees implies (
inv8 S: all u:User,a:Ad | u->a in sees implies (
inv8 S: all u:User,a:Ad | u->a in sees implies ()

---
inv2 T: all x : User | x not follows.x
inv2 T: all x : User | not follows.x
inv2 T: all x : User | not x.follows.x
inv2 T: all x : User | x not follows.x
inv2 S: all x : User | follows.all - x

---
inv2 S: all x : User | no y follows.x | y = x
inv2 S: all x : User | no y follows.x implies y = x
inv2 S: all x, y : User | no y follows.x implies y = x
inv2 S: all x : User, y : User | no y follows.x implies y = x
inv2 S: y : User	all x : User| no y follows.x implies y = x
inv2 S: all x and y : User| no y follows.x implies y = x
inv2 S: all x and y : User| no y follows.x implies y == x
inv2 S: all x : User | no x follows.x

---
inv3 S: all p:Photo - Ad | some u1 | all u2 | (p in u1.posts and p in u2.sees) implies u1 in u2.follows
inv3 S: all p:Photo - Ad | some ua | all ub | (p in u1.posts and p in u2.sees) implies u1 in u2.follows
inv3 S: all p:Photo - Ad | some ua | all ub | (p in u1.posts and p in u2.sees) implies ub in ua.follows
inv3 S: all p:Photo - Ad | some ua | all ub | (p in u1.posts and p in u2.sees) implies ub in ua.follows
inv3 S: all p:Photo - Ad | some ua | all ub
inv3 S: all p:Photo - Ad |
inv3 S: all p:Photo - Ad
inv3 S: all p:Photo-Ad
inv3 S: all p:Photo - Ad | some a | all b | (p in a.posts and p in b.sees) implies b in a.follows
inv3 S: all p:Photo - Ad | some a | all b | (p in a.posts and p in b.sees)

---
inv2 S: follows.-follows not in User
inv2 S: follows.-follows not in User
inv2 T: follows.~follows not in User
inv2 T: follows.~follows not in User
inv2 S: follows.x not in User
inv2 T: not follows.~follows
inv2 T: none follows.~follows

---
inv2 S: follows.~follows in
inv2 T: follows.~follows in none
inv2 T: none follows.~follows
inv2 S: | none follows.~follows
inv2 T: follows.~follows not in User

---
inv2 T: follows.~follows not in User
inv2 T: follows.~follows not in User.iden
inv2 T: follows.~follows not in iden.User
inv2 T: follows.~follows not in User
inv2 T: follows->~follows not in User
inv2 T: follows.~follows not in User
inv2 S: none a: User | a.follows.a

---
inv3 T: all u : User, p : Photo, us : User | p in u.sees implies (p in Ad || (p in us.posts implies us in u.follows))		all u : User | u.sees in (Ad || u.follows)
inv3 T: all u : User, p : Photo, us : User | p in u.sees implies (p in Ad || (p in us.posts implies us in u.follows))		all u : User | u.sees in (Photo.Ad || u.follows)
inv3 T: all u : User | u.sees in (Ad || u.follows)
inv3 T: all u : User | u.sees in Ad || u.follows
inv3 T: all u : User | u.sees in Ad || u.follows.posts

---
inv3 S: all x : User | y in x.follows | z in y.posts |
inv3 S: all x : User | y in x.follows | z in y.posts
inv3 S: all x : User | y in x.follows | z in y.posts
inv3 T: all x,y : User | x.sees not in Ad implies x.follows
inv3 T: all x,y : User | all a : Ad | x.sees not in a implies x.follows

---
inv8 T: all u : User, s : sees | s in u.follows.posts or s in u.suggested.posts
inv8 T: all u : User, s : sees | s in follows.u.posts or s in suggested.u.posts
inv8 T: all u : User, s : sees | s in follows.posts.u or s in suggested.posts.u
inv8 S: all u : User, s : sees | s in follows.posts.u or in suggested.posts.u
inv8 S: all u : User | sees.s in follows.posts.u or in suggested.posts.u
inv8 S: all u : User | sees.s in follows.posts.u

---
inv8 S: all u : User | u.seed in u.follows.posts or sees.u in u.suggested.posts
inv8 S: all u : User, ad Ad |  u.sees.ad in u.follows.posts  or  u.sees.ad in u.follows.suggested
inv8 S: all u : User, ad Ad |  u.sees.ad in u.follows.posts  or  u.sees.ad in u.follows.suggested
inv8 T: all u : User, ad : Ad |  u.sees.ad in u.follows.posts  or  u.sees.ad in u.follows.suggested
inv8 T: all u : User, ad : Ad |  sees.u.ad in u.follows.posts  or  u.sees.ad in u.follows.suggested
inv8 T: all u : User, ad : Ad |  sees.ad.u in u.follows.posts  or  u.sees.ad in u.follows.suggested
inv8 T: all u : User, ad : Ad |  sees.ad.u  in u.follows.posts  or  u.sees.ad in u.follows.suggested
inv8 T: all u : User, ad : Ad |  u.sees  in u.follows.posts  or  u.sees.ad in u.follows.suggested

---
inv8 T: all u : User, ad : Ad |  u.sees.ad  in u.follows  or  u.sees in u.follows
inv8 T: all u : User, ad : Ad |  u.sees.Photo  in u.follows  or  u.sees in u.follows
inv8 T: all u : User, ad : Ad |  ad.u.sees in u.follows  or  u.sees in u.follows
inv8 T: all u : User, ad : Ad |  u.ad.sees in u.follows  or  u.sees in u.follows
inv8 T: all u : User, ad : Ad |  u->sees.ad in u.follows  or  u.sees in u.follows

---
inv1 S: all x: Photo| same y:
inv1 S: all x: Photo| same y:
inv1 S: all x: Photo| same y:
inv1 S: all x: Photo| same y:
inv1 S: all x: Photo| same y:

---
inv2 T: no iden in follows
inv2 T: no iden in follows
inv2 S: no ident in follows
inv2 T: no (iden in follows)
inv2 T: no iden in follows

---
inv4 T: all u : User | some u.posts.Ad implies u.posts in Ad
inv4 T: all u : User | lone u.posts.Ad implies u.posts in Ad
inv4 T: all u : User | (some u.posts.Ad) implies u.posts in Ad
inv4 T: all u : User | (some u.posts.Ad) implies u.posts in Ad
inv4 T: all u : User | (some u.posts.Ad) implies u.posts in Ad
inv4 S: all u : User | implies u.posts in Ad

---
inv4 T: all u : User | one u.posts in Ad implies u.posts in Ad
inv4 T: all u : User | (one u.posts in Ad) implies u.posts in Ad
inv4 T: all u : User | (some u.posts.Ad) implies u.posts in Ad
inv4 T: all u : User | u.posts.Ad in Ad
inv4 T: all u : User | u.posts.Ad
inv4 T: all u : User | u.posts
inv4 T: all u : User | u.posts.Ad in univ

---
inv4 T: all u: User | some u.posts in Ad implies (all p: Photo | p in u.posts and p in Ad)
inv4 S: all u: User | some u.posts in Ad implies (all p: Photo | p in u.posts | p in Ad)
inv4 S: all u: User | some u.posts in Ad implies (all p: Photo | p in u.posts | p in Ad)
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (ph : Photo |  ph in u1.posts and ph in Ad)
inv4 T: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts and ph in Ad)
inv4 T: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts and ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | ph in u1.posts | ph in Ad)

---
inv3 S: all u : User | univ in u.follow.post
inv3 T: all u : User | u.sees != Ad in u.follow.post
inv3 S: all u : User | u.post != Ad in u.follow.post
inv3 T: all u : User | u.posts != Ad in u.follow.post
inv3 T: all u : User | u.posts != Ad in u.follow.posts
inv3 T: all u : User | u.sees not in Ad in u.follow.posts
inv3 T: all u : User | u.sees not in Ad in u.follow.posts

---
inv5 T: all i : Influencer | all u : User | i in u.follows and no (i.follows & iden)
inv5 T: all i : Influencer | all u : User | i in u.follows and no (u.follows & iden)
inv5 S: all i : Influencer | all u : User | i in u.follows | no (follows & iden)
inv5 T: all i : Influencer | all u : User | i & u.follows no (follows & iden)
inv5 T: all i : Influencer | all u : User | i & u.follows and no (follows & iden)
inv5 T: all i : Influencer | all u : User | i & u.follows

---
inv5 T: all i : Influencer | all u : User | u.follows & i
inv5 S: all i : Influencer | all u : User | u.follows & i.user
inv5 S: all i : Influencer | all u : User | u.follows & i.users
inv5 T: all i : Influencer | all u : User | u.follows & i
inv5 T: all i : Influencer | all u : User | u.follows & i implies i not in i.follows
inv5 T: all i : Influencer | all u : User | (i in u.follows) - i

---
inv3 S: all u1:User | all p:Photo | u1->p in posts implies((some u2 | u2 -> p in sees implies u2 -> u1 in follows) or ph in Ad)
inv3 S: all u1:User | all p:Photo | u1->p in posts implies((some u2 | u2 -> p in sees implies u2 -> u1 in follows) or ph in Ad)
inv3 S: all u1:User | all p:Photo | u1->p in sees implies((some u2 | u2 -> p in posts implies u1 -> u2 in follows) or ph in Ad)
inv3 S: all u1:User | all p:Photo | u1->p in sees implies((some u2:User | u2 -> p in posts implies u1 -> u2 in follows) or ph in Ad)
inv3 S: all u1:User | all p:Photo | u1->p in sees implies((some u2:User | u2 -> p in posts and u1 -> u2 in follows) or ph in Ad)

---
inv3 S: sees.ads
inv3 T: sees.Ad
inv3 S: all p.Photo, u.User | u.follows.posts.p
inv3 S: all p.Photo, u.User | u.follows.posts.p
inv3 S: all p.Photo-Ad, u.User | u.follows.posts.p
inv3 T: all p:Photo-Ad, u:User | u.follows.posts.p

---
inv4 S: all p: Photos&Ad |posts.p
inv4 S: all p: Photos&Ad | posts.p
inv4 S: all p: Photo&Ad | u.posts.p
inv4 T: all p: Photo&Ad | posts.p
inv4 T: all p: Ad | posts.p

---
inv4 S: All x : User | some x.posts in Ad implies x.posts in Ad
inv4 S: All x : User | some x.posts in Ad implies x.posts in Ad
inv4 T: all x : User | some x.posts in Ad implies (x.posts in Ad)
inv4 T: all x : User | (some x.posts in Ad -> (x.posts in Ad))
inv4 T: all x : User | some x.posts in Ad

---
inv4 T: all x : User | some y : Photo | y->x in Ad -> x.posts in Ad
inv4 T: all x : User | some y : Photo | (y->x in Ad -> (x.posts in Ad))
inv4 T: all x : User | some y : Photo | (x.y in Ad -> (x.posts in Ad))
inv4 T: all x : User | some y : Photo | (y->x in Ad -> (x.posts in Ad))
inv4 T: all x : User | some y : Photo | ((y->x in Ad) -> (x.posts in Ad))
inv4 S: all x : User | some y : Ad | (y in x.posts) -> (x.posts in Ad))
inv4 T: all x : User | some y : Ad | ((y in x.posts) -> (x.posts in Ad))

---
inv2 T: all x : User | no x in follows.x
inv2 S: all x : User | all follows.x implies no x
inv2 S: all x : User | all follows.x : implies no x
inv2 S: all x : User | all follows.x : no x
inv2 S: all x : User | all follows.x : no x
inv2 S: all x : User | all follows.x and no x

---
inv1 S: all
inv1 S: all
inv1 S: all
inv1 S: all
inv1 S: all

---
inv3 S: all u,u1:User | all p:Photo | p in u.posts and p in u1.sees implies u in u1.follows	all a : Ad | all u : User implies a in u.sees
inv3 S: all u,u1:User | all p:Photo | p in u.posts and p in u1.sees implies u in u1.follows	all a : Ad | all u : User|  implies a in u.sees
inv3 S: all u,u1:User | all p:Photo | p in u.posts and p in u1.sees implies u in u1.follows	all a : Ad | all u : User  implies a in u.sees
inv3 S: all u,u1:User | all p:Photo | p in u.posts and p in u1.sees implies u in u1.follows	all a : Ad | all u : User , implies a in u.sees
inv3 S: all u,u1:User | all p:Photo | p in u.posts and p in u1.sees implies u in u1.follows	all a : Ad | all u : User | implies a in u.sees

---
inv7 S: all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u3 in suggested.u1)	all u : User | u not in suggested.u	all u4, u5 : User | (u4 in follows.u5) implies (u4 not in suggested.u5)	all u6 : User | (none u6.follows) implies (none suggested.u6)
inv7 S: all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u3 in suggested.u1)	all u : User | u not in suggested.u	all u4, u5 : User | (u4 in follows.u5) implies (u4 not in suggested.u5)	all u6 : User | (none u6.follows) implies (none u6.suggested)
inv7 S: all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u3 in suggested.u1)	all u : User | u not in suggested.u	all u4, u5 : User | (u4 in follows.u5) implies (u4 not in suggested.u5)	all u6 : User | (none u6.follows) implies (none suggested.u6)
inv7 S: all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u3 in suggested.u1)	all u : User | u not in suggested.u	all u4, u5 : User | (u4 in follows.u5) implies (u4 not in suggested.u5)	all u6 : User | (none u6.follows) implies (none u6.suggested)
inv7 S: all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u3 in suggested.u1)	all u : User | u not in suggested.u	all u4, u5 : User | (u4 in follows.u5) implies (u4 not in suggested.u5)	all u6 : User | (none u6.follows) implies (u6.suggested none)
inv7 S: all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u3 in suggested.u1)	all u : User | u not in suggested.u	all u4, u5 : User | (u4 in follows.u5) implies (u4 not in suggested.u5)	all u6 : User | (none u6.follows) implies (none u6.suggested none)
inv7 S: all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u3 in suggested.u1)	all u : User | u not in suggested.u	all u4, u5 : User | (u4 in follows.u5) implies (u4 not in suggested.u5)	all u6 : User | (none u6.follows) implies (none u6.suggested)

---
inv1 T: all x : Photo | some y : User | y->x
inv1 T: all x : Photo | some y : User | y->x
inv1 T: all x : Photo | some y : User | y.posts->x
inv1 T: all x : Photo | some y : User | y.posts implies x
inv1 T: all x : Photo | (some y : User | y.posts implies x)

---
inv3 T: all u1,u2 : User, p: Photo | u1.sees.p and p not in Ad implies p in u2.posts and u2 in u1.follows
inv3 T: all u1,u2 : User, p: Photo | u1.sees.p and p not in Ad implies (p in u2.posts and u2 in u1.follows)
inv3 T: all u1,u2 : User, p: Photo | (u1.sees.p and p not in Ad) implies (p in u2.posts and u2 in u1.follows)
inv3 T: all u1,u2 : User, p: Photo | (u1.sees.p and (p not in Ad)) implies (p in u2.posts and u2 in u1.follows)
inv3 T: all u1,u2 : User, p: Photo | (u1.sees.p and (p not in Ad)) implies ((p in u2.posts) and (u2 in u1.follows))
inv3 T: all u1,u2 : User, p: Photo | (u1.sees.p and (p not in Ad)) implies ((p in u2.posts) and (u2 in u1.follows))

---
inv7 S: all x: User | x.suggested in x->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x.follows->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x.follows->y.follows
inv7 S: all x,y: User | x.suggested in x^.follows.follows - x.follows

---
inv5 T: all i : Influencer |  follows.i
inv5 S: all i : Influencer |  follows.i	all
inv5 S: all i: Influencer |  all follows.i
inv5 T: all i: Influencer |  all x : User | x.follows.i
inv5 S: all i: Influencer |  all x : User | x.follows.i
inv5 S: all i: Influencer |  all x : User | x.follows
inv5 S: all i: Influencer | all x : User | follows.i
inv5 T: all i: Influencer | all x : User | x.follows.i
inv5 T: all i: Influencer | all x : User | follows.i
inv5 T: all i: Influencer | follows.i
inv5 T: all i: User | follows.i

---
inv2 T: all x:User | none x.follows.x
inv2 T: all x:User | none x.follows.x
inv2 T: all x:User | none x.follows.x
inv2 T: all x:User | not x.follows.x
inv2 T: all x:User | not x.follows -> follows.x
inv2 T: all x:User | not {x.follows and follows.x}
inv2 T: all x:User | none x.follows.x
inv2 S: all x:User | x.follows -> not follows.x
inv2 T: all x:User | x.follows -> {not follows.x}
inv2 S: all x:User | x.follows -> !follows.x
inv2 T: all x:User | x.follows implies not follows.x
inv2 T: all x:User | x.follows -> follows.x
inv2 T: all x:User | x.follows implies follows.x
inv2 T: all x:User | x.follows -> follows.x

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv5 S: all u : User - Influencer | all follows.Influencer
inv5 S: all u : User - Influencer | all u.Influencer
inv5 S: all u : User - Influencer | all follows.Influencer
inv5 S: all i: Influencer | all follows.i
inv5 T: all i: Influencer | univ follows.i
inv5 S: all i: Influencer | all follows.i

---
inv6 T: all i : Influencer | all d : Day | one i.posts.d
inv6 T: all i : Influencer, d : Day | some i.posts.d
inv6 T: all i : Influencer, d : Day , p : Photo| some p in i.posts.d
inv6 T: all i : Influencer, d : Day , p : Photo| some d in i.posts.date
inv6 T: all i : Influencer, d : Day , p : Photo| some i.p.d
inv6 T: all i : Influencer, d : Day | some i.posts.d
inv6 T: all i : Influencer, d : Day | some i.posts in day
inv6 T: all i : Influencer, d : i.posts.date | some i.posts.d
inv6 T: all i : Influencer, d : i.posts.date | some d in i.posts.date
inv6 T: all i : Influencer, d : Day | some d in i.posts.date

---
inv8 S: all x,y,z : univ | (x->y in sees and y in Ad) implies z->y posts and (x->z infollows or y->x in suggested)
inv8 T: all x,y,z : univ | (x->y in sees and y in Ad) implies z->y posts and (x->z in infollows or y->x in suggested)
inv8 T: all x,y,z : univ | x->y in sees and y in Ad implies z->y posts and x->z in infollows or y->x in suggested
inv8 T: all x,y,z : univ | (x->y in sees and y in Ad) implies z->y posts and (x->z in infollows or y->x in suggested)
inv8 T: all x,y,z : univ | (x->y in sees and y in Ad) implies z->y posts and (x->z in infollows or y->x in suggested)

---
inv6 T: all i: Influencer | i.posts.date in date
inv6 S: all i: Influencer | i.posts.date in Photo.date
inv6 S: all i: Influencer | i.posts.date in Photo.Day
inv6 S: all i: Influencer | i.posts.date in Day
inv3 T: all u : User | u.sees Photo not in Ad
inv3 S: all u : User | all p : Photos not in Ad | u.sees not in p and u.follows
inv3 T: all u : User | all p : Photo not in Ad | u.sees not in p and u.follows
inv3 T: all u : User | all p : Photo not in Ad | u.sees not in p & u.follows.posts
inv3 S: all u : User | all p : Photo | p not in Ad | u.sees not in p & u.follows.posts
inv3 S: all u : User | all p : Photo | p not in Ad | u.sees implies p & u.follows.posts
inv3 S: all u : User | all p : Photo | p not in Ad | u.sees implies u.follows.posts

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv3 S: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all follows.Ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad : univ | sees.ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | sees.ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | u.sees.ad
inv3 S: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | ad in Ad immplies ad in u.sees

---
inv3 T: one u1,u2:User|all p1,p2:Photo|(p1 not in Ad implies (((u1->u2 in follows) and (u2->p1 in posts)) implies (u1->p1 in sees))) and (all u:User|p2 in Ad implies u->p2)
inv3 T: all u1,u2:User|all p1,p2:Photo|(p1 not in Ad implies (((u1->u2 in follows) and (u2->p1 in posts)) implies (u1->p1 in sees))) and (all u:User|p2 in Ad implies u->p2)
inv3 T: all u1,u2:User|all p1,p2:Photo|((p1 not in Ad) implies (((u1->u2 in follows) and (u2->p1 in posts)) implies (u1->p1 in sees))) and (all u:User|p2 in Ad implies u->p2)
inv3 T: all u1,u2:User|all p1,p2:Photo|((p1 not in Ad) implies (((u1->p1 in posts) and (u2->u1 in follows)) implies (u2->p1 in sees))) and (all u:User|p2 in Ad implies u->p2)
inv3 T: all u1,u2:User | all p1,p2:Photo|((p1 not in Ad) implies (((u1->p1 in posts) and (u2->u1 in follows)) implies (u2->p1 in sees))) and (all u:User|p2 in Ad implies u->p2)

---
inv4 S: all u : User | all p : Photo | p in u.posts and p in photo or p in Ad and all p1 : Photo |	p1 in p.posts and p1 in add
inv4 S: all u : User | all p : Photo | p in u.posts and p in photo or p in Ad and all p1 : Photo | p1 in p.posts and p1 in add
inv4 S: all u : User | all p : Photo | p in u.posts and p in photo or p in Ad and all p1 : Photo |	p1 in p.posts and p1 in Ad
inv4 S: all u : User | all p : Photo | p in u.posts and p in photo or p in Ad and all p1 : Photo |	p1 in p.posts and p1 in Ad
inv4 S: all u : User | all p : Photo | p in u.posts and p in photo or p in Ad and all p1 : Photo |	p1 in u.posts and p1 in Ad
inv4 S: all u : User | all p : Photo | p in u.posts and p in Photo or p in Ad and all p1 : Photo |	p1 in u.posts and p1 in Ad
inv4 S: all u : User | all p : Photo | p in u.posts and p in Photo or p in Ad and all p1 : Photo | p1 in u.posts and p1 in Ad

---
inv3 S: all x : User | x.sees - Ad in x.follows.posts	all x: User, y: Ad | all y in x.sees
inv3 S: all x : User | x.sees - Ad in x.follows.posts	all x : User, y : Ad | y in x.sees
inv3 S: all x : User | x.sees - Ad in x.follows.posts	all x : User | y : Ad | y in x.sees
inv3 S: all x : User | x.sees - Ad in x.follows.posts	all x : User, y : Ad | y in x.sees
inv3 S: all x : User | x.sees - Ad in x.follows.posts
inv3 S: all x : User | x.sees - Ad in x.follows.posts	all x : User | all y : Ad | y in x.sees

---
inv3 T: all u : User | u.sees.u.follows.posts
inv3 T: all u : User | u.sees implies u.follows.posts - Ad
inv3 T: all u : User | u.sees implies u.follows.posts
inv3 T: all u : User | u.sees implies u.follows.posts not Ad
inv3 T: all u : User | u.sees some u.follows.posts not Ad
inv3 T: all u : User | u.sees some u.follows.posts not Ad	all a : Ad | User.sees.a
inv3 T: all u : User, p : Photo | u.sees.p implies u.follows.posts.p not Ad
inv3 T: all u : User | u.sees - Ad implies u.follows.posts

---
inv4 S: some x : User | posts.x | x->Ad
inv4 S: some x : User | posts.x | x.Ad
inv1 T: all p:Photo | all u:User | p in u.p
inv1 T: all p:Photo | all u:User | p in u->p
inv1 T: all p:Photo | all u:User | p in u.p
inv1 T: all p:Photo | all u:User | p in u->p
inv1 T: all p:Photo | all u:User | p in p->u
inv1 T: all p:Photo | all u:User | p in u->Photo

---
inv1 S: all x : Photo | one posts x
inv1 S: all x : Photo | one posts x
inv1 S: all x : Photo | one posts x
inv1 S: all x : Photo | one posts x
inv1 S: all x : Photo | one posts x
inv1 S: all x : Photo | one posts x
inv1 S: all x : Photo | one posts x
inv1 S: all x : Photo | one posts x
inv1 S: all x : Photo | one posts x
inv1 S: all x : Photo | one posts x

---
inv2 T: all u : User | u not in follows
inv2 T: all u : User | u in follows
inv2 S: all u : User | u not in follows.^
inv2 S: all u : User | u not in follows.
inv2 T: all u : User | u.follows

---
inv3 S: all u : User | all p : Photo | u->p in sees and not in Ad implies u not in (posts.p)
inv3 S: all u : User | all p : Photo | u->p in sees and not in Ad implies u not in posts.p
inv3 S: all u : User | all p : Photo | (u->p in sees and not in Ad) implies u not in posts.p
inv3 S: all u : User | all p : Photo | (u->p in sees and not in Ad) implies true
inv3 S: all u : User | all p : Photo | (u->p in sees and not in Ad) implies True
inv3 S: all u : User | all p : Photo | (u->p in sees and not in Ad)
inv3 S: all u : User | all p : Photo | u->p in sees and not in Ad

---
inv3 T: all x : User | all y : Photo | x.sees -> x.follows
inv3 T: all x : User | all y : Photo | x.sees -> x.suggested
inv3 T: all x : User | all y : Photo | x.sees -> x.follows		all x : User | x.sees -> x.suggested
inv4 S: all u : User, p : Photo | one p in u.posts implies all p in u.posts in Ad
inv4 T: all u : User | one u.posts in Ad implies (all p : Photo | p in u.posts in Ad)
inv4 T: all u : User | one u.posts in Ad implies (all p : Photo | p in u.posts and p in Ad)
inv4 S: all u : User | one u.posts in Ad implies (all p : Photo | p in u.posts | p in Ad)
inv4 S: all u : User | some u.posts in Ad implies (all p : Photo | p in u.posts | p in Ad)
inv4 S: all u : User | one u.posts in Ad implies (all p : Photo | p in u.posts | p in Ad)
inv4 S: all u : User | one u.posts in Ad implies (all p : Photo | p in u.posts | p in Ad)
inv4 S: all u : User | some u.posts in Ad implies (all p : Photo | p in u.posts | p in Ad)
inv4 S: all u : User | one u.posts in Ad implies (all p : Photo | p in u.posts | p in Ad)
inv4 S: all u : User | one u.posts in Ad implies (all p : Photo | p in u.posts | p in Ad)
inv4 S: all u : User | one u.posts in Ad implies (all p : Photo | p in u.posts | p in Ad)
inv4 S: all u : User | one u.posts in Ad implies (all p : Photo | p in u.posts | p in Ad)

---
inv4 S: all u : User | one u.posts in Ad implies (all p : Photo | p in u.posts | p in Ad)
inv4 S: all u : User | one u.posts in Ad implies (all p : Photo | p in u.posts | p in Ad
inv4 S: all u : User | one u.posts in Ad implies all p : Photo | p in u.posts | p in Ad
inv4 S: all u : User | one u.posts in Ad implies (all p : Photo | p in u.posts | p in Ad)
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |

---
inv1 T: all p:Photo| one User.posts in p
inv1 T: all p:Photo| one User in p.posts
inv1 T: all p:Photo| one User in posts.p
inv1 T: all p:Photo| one User.p in posts
inv1 S: all u:User| one u.posts in p|
inv1 T: all u:User| one u.posts in p

---
inv1 T: all p:Photo| one p->p in posts
inv1 S: all p:Photo, some u:User| one u->p in posts
inv1 S: all p:Photo, some u:User| one p->u in posts
inv1 S: all p:Photo, some u:User| one u->p in p.posts
inv1 S: some u:User| one u->p in Photo.posts
inv1 T: some u:User| one u->u in Photo.posts
inv1 T: some u:User| one u in Photo.posts

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv3 S: all
inv3 S: all
inv3 S: all
inv3 S: all
inv3 S: all

---
inv3 S: all x,y : User | all p in x.sees | (p in y.posts & x->y in follows) or p in Ad
inv3 T: all x,y : User | all p : Photo in x.sees | (p in y.posts & x->y in follows) or p in Ad
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows) or p in Ad
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows)
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | some y : User | all p : in x.sees | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : in x.sees | some y : User | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : in x.sees | some y : User | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : Photo | all p in x.sees | some y : User | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : Photo | some y : User | all p in x.sees & (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : Photo | all p in x.sees & (p in x.follows.posts) or (p in Ad)
inv3 S: all x : User | all p : Photo | all p in x.sees & (p in x.follows.posts) or (p in Ad)

---
inv3 S: all p : Photos - Ad | some u : User | u->p in sees | some v : User | v->p in posts | u->v in follows
inv3 S: all p : Photos - Ad | some u : User | u->p in sees | some v : User | v->p in posts | u->v in follows		all a : Ad | all u : User | u->a in sees
inv3 S: all p : Photos - Ad | some u : User | u->p in sees | some v : User | v->p in posts | u->v in follows		all a : Ad | all u : User | u->a in sees
inv3 S: all p : Photos - Ad | some u : User | u->p in sees | some v : User | v->p in posts | u->v in follows | all a : Ad | u->a in sees	}
inv3 S: all p : Photos - Ad | some u : User | u->p in sees | some v : User | v->p in posts | u->v in follows | all a : Ad | u->a in sees
inv3 S: all p : Photos-Ad | some u : User | u->p in sees | some v : User | v->p in posts | u->v in follows | all a : Ad | u->a in sees
inv3 S: all p : Photos-Ad | some u : User | u->p in sees | some v : User | v->p in posts | u->v in follows
inv3 S: all p : Photos-Ad | all u : User | u->p in sees implies some v : User | v->p in posts | u->v in follows
inv3 S: all p : Photos-Ad | all u : User | u->p in sees implies (some v : User | v->p in posts | u->v in follows)
inv3 S: all p : Photos-Ad | all u : User | u->p in sees implies some v : User | v->p in posts | u->v in follows
inv3 S: all p : Photos-Ad | all u : User | u->p in sees implies some v : User | v->p in posts && u->v in follows

---
inv4 T: all u:User | one u.posts in Ad => u.posts in Ad
inv4 T: all u:User | some u.posts in Ad => u.posts in Ad
inv4 T: all u:User| one u.posts in Ad => u.posts in Ad
inv4 T: all u:User| one u.posts in Ad => u.posts in Ad
inv4 T: all u:User| one u.posts in Ad => u.posts in Ad

---
inv6 S: all d:Day , u.Influencer| d in i.posts.date
inv6 S: all d:Day , u.Influencer| d in i.posts.date
inv6 S: all d:Day, i.Influencer| d in i.posts.date
inv6 S: all d:Day, i.Influencer| d in i.posts.date
inv6 S: all d:Day, i.Influencer| d in i.posts.date

---
inv7 S: all u:Users| u.suggested = u.follows.follows - u.follows
inv7 S: all u:Users| u.suggested = u.follows.follows - u.follows - u
inv7 S: all u:Users| u.suggested = u.follows.follows - u.follows - u
inv7 S: all u:Users| u.suggested = u.follows.follows - u.follows - u
inv7 S: all u:Users| u.suggested = u.follows.follows - u.follows - u

---
inv3 S: (u.follows).(Photo-Ad)
inv3 T: all u:User | (u.follows).(Photo-Ad)
inv3 T: all u:User | u.sees = (u.follows).(Photo-Ad)
inv3 T: all u:User | u.sees = (u.follows).(Photo-Ad)
inv3 T: all u:User | u.sees = (u.follows.posts).(Photo-Ad)
inv3 T: all u:User | u.sees = Photo.(u.follows.posts)
inv3 T: all u:User | u.sees = Photo.(u.follows).posts
inv3 S: all u:User | Ads in u.sees

---
inv1 S: all p : Photo, p -> one User
inv1 S: all p : Photo, p -> one u in User
inv1 S: all p : Photo | p -> one u in User
inv1 S: all p : Photo, all u : User | p -> one u in User
inv1 S: all p : Photo | p -> one u in User
inv1 S: all p : Photo | p -> one u in User
inv1 S: all p : Photo, some u : User | p -> one u in in posts
inv1 S: all p : Photo, some u : User | p -> one u in posts
inv1 S: all p : Photo | some u : User | p -> one u in posts
inv1 S: photos in Photo one  -> User
inv1 S: photos in Photo -> one  User
inv1 S: all photos in Photo -> one User
inv1 S: fact {	photos in Photo -> one User	}
inv1 T: all p: Photo | some u:User | p in Photo -> one User

---
inv2 S: follows.u not in iden
inv2 T: all u : User | follows.u not in iden
inv2 T: none follows & iden
inv2 T: none (follows & iden)
inv2 T: follows & iden = none
inv2 T: follows & iden is none
inv2 T: follows & iden is in none
inv2 T: (follows & iden) is in none
inv2 T: (follows & iden) is in none

---
inv3 S: all  i:In
inv3 S: all  i:In
inv3 S: all  i:In
inv3 S: all  i:In
inv3 S: all  i:In

---
inv3 S: all u:User | all p:Photos | u -> p in sees iff p not add
inv3 S: all u:User |sees in u.follow.post
inv3 S: all u:User | not Ad in u.follow.post
inv3 S: all u:User | u.sees in u.follow.post
inv3 S: all u:User |  in u.follow.post

---
inv3 S: all x, y : User | x.sees in y.posts and y in x.follows and x.sees is not Ad		all x : Ad | all y : User | sees.x in
inv3 T: all x, y : User | x.sees in y.posts and y in x.follows and x.sees is not Ad
inv3 T: all x, y : User | x.sees in y.posts and y in x.follows and all p : x.sees | p is not Ad
inv3 T: all x, y : User | x.sees in y.posts and x.sees not is a Ad and y in x.follows
inv3 T: all x, y : User | x.sees in y.posts and not x.sees is a Ad and y in x.follows

---
inv3 S: all x,y : User | x.follows.y | x.sees.(y.posts)
inv3 S: all x : Users | all y : follows.x | y in sees.x	all u : Users | all a : Ad | x.sees.a
inv3 S: all x : User | all y : follows.x | y in sees.x	all u : User | all a : Ad | x.sees.a
inv3 T: all x : User | all y : follows.x | y in sees.x	all u : User | all a : Ad | u.sees.a
inv3 T: all x : User | all y : follows.x | y in sees.x	all u : User | all a : Ad | u.sees.a
inv3 T: all x : User | all y : follows.x | y in sees.x	all u : User | all a : Ad | u.sees.a

---
inv5 S: all inf : Influencer | all u : User| u!= i -> u in follows.inf
inv5 T: all inf : Influencer | all u : User| u!= inf -> u in follows.inf
inv5 T: all inf : Influencer, u : User| u!= inf -> u in follows.inf
inv5 S: all inf : Influencer, u : User| u!= inf -> i in u.follows
inv5 T: all inf : Influencer, u : User| u!= inf -> inf in u.follows
inv5 T: all inf : User-Influencer, u : User| u!= inf -> inf in u.follows

---
inv3 S: all user : User | all photo : Photo | (photo in user1.posts and photo in user2.sees implies user1 in user2.follows
inv3 S: all user : User | all photo : Photo | (photo in user1.posts and photo in user2.sees implies user1 in user2.follows
inv3 S: all user : User | all photo : Photo | (photo in user1.posts and photo in user2.sees implies user1 in user2.follows
inv3 S: all user : User | all photo : Photo | (photo in user1.posts and photo in user2.sees implies user1 in user2.follows
inv3 S: all user : User | all photo : Photo | (photo in user1.posts and photo in user2.sees implies user1 in user2.follows
inv3 S: all user : User | all photo : Photo | (photo in user1.posts and photo in user2.sees implies user1 in user2.follows
inv3 S: all user : User | all photo : Photo | (photo in user1.posts and photo in user2.sees) implies user1 in user2.follows

---
inv1 S: all x: Photo| same y:
inv1 S: all x: Photo| same y:
inv1 S: all x: Photo| same y:
inv1 S: all x: Photo| same y:
inv1 S: all x: Photo| same y:

---
inv5 S: all x : User | all y : Influencer | x in follows.
inv5 S: all x : User | all y : Influencer | x in follows.
inv5 S: all x : User | all y : Influencer | x in follows.
inv5 S: all x : User | all y : Influencer | x in follows.
inv5 T: all x : User | all y : Influencer | x in follows

---
inv8 T: all u: User | u.sees.Ad in u.follows+suggested.posts.Ad
inv8 T: all u: User | u.sees.Ad in u.(follows+suggested).posts.Ad
inv8 T: all u: User | u.sees.Ad in u.follows.posts.Ad || u.suggested.posts.Ad
inv8 T: all u: User | u.sees&Ad in u.follows.posts&Ad || u.suggested.posts&Ad
inv8 T: all u: User | u.sees&Ad in (u.follows.posts&Ad || u.suggested.posts&Ad)
inv8 T: all u: User | u.sees&Ad implies u.follows.posts in Ad || u.suggested.posts in Ad
inv8 T: all u: User | u.sees&Ad implies u.follows.posts in Ad || u.suggested.posts in Ad
inv8 T: all u: User | u.sees&Ad

---
inv4 S: all x : User | some x.posts in Ad -> all x.posts in Ad
inv4 S: all x : User | (some x.posts in Ad) -> (all x.posts in Ad)
inv4 T: all x : User | (some x.posts in Ad) -> (x.posts in Ad)
inv4 T: all x : User | (some x.posts in Ad) -> (x.posts in Ad)
inv4 S: all x : User | (some x.posts in Ad) | (x.posts in Ad)
inv4 T: all x : User | some y : Ad | y in x.posts -> x.posts in Ad
inv4 T: all x : User | some y : Ad | y in x.posts -> x.posts in Ad
inv4 T: all x : User | some y : Ad | (y in x.posts) -> x.posts in Ad
inv4 T: all x : User | some y : Ad | (y in x.posts) -> (x.posts in Ad)

---
inv3 T: all x: User | x.sees
inv3 T: all x: User | sees.x not Ad
inv3 S: all x: User | all y: User | x.sees in y.post -> y in x.follows
inv3 T: all x: User | all y: User | x.sees in y.posts -> y in x.follows
inv3 T: all x,y: User | x.sees in y.posts -> y in x.follows

---
inv1 S: all p:Photo | some u:User | p in u.posts and all u2:User | u2 == u or p not in u2.posts
inv1 S: all p:Photo | some u:User | p in u.posts and all u2:User | u2 == u or p not in u2.posts
inv1 S: all p:Photo | some u:User | p in u.posts and all u2:User | (u2 == u) or (p not in u2.posts)
inv1 S: all p:Photo | some u:User | (p in u.posts and all u2:User | (u2 == u) or (p not in u2.posts))
inv1 S: all p:Photo | some u:User | (p in u.posts and (all u2:User | (u2 == u) or (p not in u2.posts)))

---
inv2 T: all x : follows | not follows.x
inv2 T: all x : follows | not follows.x
inv2 T: all x : User | not follows.x
inv2 T: all x : User | not follows.x
inv2 T: all x : User | not follows.x

---
inv3 S: all y : Photo-Ad | all x : User | x.sees in y | y in x.follows.posts
inv3 S: all y : Photo-Ad | all x : User | x.sees in y | y in x.follows.posts
inv3 S: all y : Photo-Ad | all x : User | y in x.sees | y in x.follows.posts
inv3 S: all y : Photo-Ad | all x : User | y in x.sees | y in (x.follows).posts
inv3 T: all p : Photo-Ad | all u : User | u.p.sees implies some v : User | v->p in posts && u->v in follows

---
inv1 S: all x : Photo | one posts.x : User
inv1 S: all x : Photo | one (posts.x) : User
inv3 T: all p:Photo | sees.p.follows
inv3 T: all u:User | u.follows.posts
inv3 T: all u:User | u.follows.posts
inv3 T: all u:User | u.sees.Ad
inv3 T: all p:Photo-Ad |	all a:Ad | sees.a
inv3 T: all a:Ad | sees.a
inv3 T: all u:User | u.sees.Ad
inv3 T: all u:User | sees.Ad
inv3 S: all p:Photo-Ad | u.follows.posts	all u:User |
inv3 S: all p:Photo-Ad | follows.posts.p	all u:User |
inv3 S: all p:Photo-Ad | u:User | u.follows.posts.p

---
inv4 S: all p_Photo | posts.p.Ad
inv4 S: all p_Photo | posts.p.Ad
inv4 S: all p_Photo | posts.p $ p=Ad
inv4 S: all p_Photo | posts.p & p=Ad
inv4 S: all p_Photo | posts.p & p==Ad
inv4 S: all p:Photo | posts.p & p==Ad
inv4 S: all u:User | a.Ad | u.posts.a
inv4 S: all u:User | u.post.Ad
inv4 T: all u:User | u.posts.Ad
inv4 S: all u:User | u.posts.Ad implies all p:Photo | p==Ad
inv4 T: all u:User | u.posts.Ad implies all p:Photo | p is Ad
inv4 T: all u:User | u.posts.Ad implies all p:Photo | p in Ad
inv4 T: all u:User | u.posts.Ad implies all p:Photo | p in Ad	all x:univ | x in Ad implies posts.p and p is Ad
inv4 S: all x:univ | x in Ad implies posts.p and p is Ad
inv4 T: all x:univ | x in Ad implies posts.Photo and Photo is Ad
inv4 T: all x:univ and p in Photo | x in Ad implies posts.p and p is Ad

---
inv7 S: all x: User | x.suggested in x->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x.follows->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x.follows->y.follows
inv7 S: all x,y: User | x.suggested in x^.follows.follows - x.follows

---
inv3 T: all u : User | all p : Photo | u.sees.p implies p in u.follows.posts or p in Ad
inv3 T: all u : User | all p : Photo | u.sees.p implies p in u.follows.posts or p in Ad is Ad
inv3 T: all u : User | all p : Photo-Ad | u.sees.p implies p in u.follows.posts
inv3 T: all u : User | all p : Photo-Ad | p in u.sees implies p in u.follows.posts or p is Ad
inv3 T: all u : User | all p : Photo | p in u.sees implies p in u.follows.posts or p is Ad

---
inv6 S: all d: day | all i : Influencer | some i.posts.d
inv6 T: all d: Day | all i : Influencer | some i.posts.d
inv6 T: all d: Day | all i : Influencer | some i.posts.d
inv6 T: all d: Day | all i : Influencer | some i.posts.d
inv6 S: all d: Day | all i : Influencer | d in i.posts.day

---
inv2 T: all x : User | not follows.x
inv2 T: all x : User |  follows.x
inv2 T: all x : User |  follows.x
inv2 T: all x : Photo |  follows.x
inv2 S: all x : User

---
inv3 S: all x : User | all y : User | y in x.follows | x.sees in y.posts && not x.sees in posts.x
inv3 S: all x : User | all y : User | y in x.follows | x.sees in y.posts & not x.sees in posts.x
inv3 S: all x : User | all y : User | y in x.follows | x.sees in y.posts & not x.sees in posts.x
inv3 S: all x : User | all y : User | y in x.follows | x.sees in y.posts & not x.sees in posts.x
inv3 S: all x : User | all y : User | y in x.follows | x.sees in y.posts & not x.sees in posts.x

---
inv4 S: all
inv4 S: all
inv4 S: all
inv4 S: all
inv4 S: all
inv4 S: all
inv4 S: all

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv3 T: all x : User | all y : x.sees| y not in Ad -> y in x.follows
inv3 T: all x : User | all y : x.sees | (y not in Ad) -> (y in x.follows)
inv3 S: all x : User | all y : x.sees | (y not Ad) -> (y in x.follows)
inv3 T: all x : User | all y : x.sees | (y != Ad) -> (y in x.follows)
inv3 T: all x : User | all y : x.sees | (y iff not Ad) -> (y in x.follows)
inv3 S: all x : User | all y : x.sees | (y not iff Ad) -> (y in x.follows)
inv3 T: all x : User | all y : x.sees | (y not in Ad) -> (y in x.follows)
inv3 T: all x : User | all y : x.sees | (y not in Ad) -> (y.posts in x.follows)
inv3 T: all x : User | all y : x.sees | (y not in Ad) -> (posts.y in x.follows)
inv3 T: all x : User | all y : x.sees | (y not in Ad) -> (posts.y in x.follows)
inv3 T: all x : User | all y : x.sees | (y not in Ad) -> (User.y in x.follows)
inv3 S: all x : User | all y : x.sees | (y not in Ad) -> (all z: (y in z.posts) in x.follows)
inv3 T: all x : User | all y : x.sees | some k : x.follows | (y not in Ad) -> (y in k.posts)

---
inv4 S: all x : User | (some y : y.posts | y in Ad) -> (all y : y.posts | y in Ad)
inv4 S: all x : User | (some y : y.posts | y in Ad) -> (all z : z.posts | z in Ad)
inv4 S: all x : User | ((some y : y.posts | y in Ad) -> (all z : z.posts | z in Ad) )
inv4 T: all x : User | (some y : x.posts | y in Ad) -> (all y : x.posts | y in Ad)
inv4 T: all x : User | (some y : x.posts | y in Ad) -> (x.posts in Ad)
inv4 T: all x : User | (some y : x.posts | y in Ad) -> (all z : x.posts | z in Ad)
inv4 T: all x : User | (some y : x.posts | y in Ad) -> (all z : x.posts | z in Ad)
inv4 T: all x : User | (some y : x.posts | y in Ad) -> (x.posts in Ad)
inv4 T: all x : User | (some y : x.posts | y in Ad) -> (x.posts in Ad)

---
inv2 T: all x : not Influencer | one posts.x
inv2 T: all x : not Influencer | one User.x
inv2 T: all x : not Influencer |  User.x
inv2 T: all x : not Influencer |  not User.x
inv2 T: all x,y: not Influencer |  not User.x
inv2 S: all x,y: user | x -> y follows
inv2 S: all x,y: user | x -> y in follows
inv2 S: all x : user | not follow.x
inv2 S: all x : user | x not in x.follow

---
inv3 T: all x : User | x.sees implies some y: User | y in x.follows
inv3 T: all x : User | x.sees implies some y: User | y in x.follows
inv3 S: all x : User | x.sees y: User | y in x.follows
inv3 S: all x : User | x.sees implies y: User | y in x.follows
inv3 T: all x : User | x.sees implies some y: User | y in x.follows
inv3 T: all x,y : User | x != y and y in x.follows => x.sees and y.posts
inv3 T: all x,y : User | x != y and y in x.follows => x.sees and y.posts
inv3 S: all x,y : User | x != y and y in x.follows => x.sees == y.posts
inv3 S: all x,y : User | x != y and y in x.follows => x.sees == y.posts
inv3 S: all x,y : User | x != y and y in x.follows => x.sees == y.posts

---
inv6 T: all i:Influencer | all p:Photo | one d:Day | i->p in posts and p-d in date
inv6 T: all i:Influencer | all p:Photo | all d:Day | i->p in posts and p-d in date
inv6 T: all i:Influencer | all p:Photo | all d:Day | p->d in date and i-p in posts
inv6 T: all i:Influencer | some p:Photo | all d:Day | p->d in date and i-p in posts
inv6 T: all i:Influencer | some p:Photo | all d:Day | p->d in date and i-p in posts

---
inv4 S: all u : User | some a : Ad | u->a in posts implies all p : Photo | u->p in posts | p is Ad
inv4 S: all u : User | some a : Ad | u->a in posts implies all p : Photo | u->p in posts | p is Ad
inv4 S: all u : User | some a : Ad | u->a in posts implies all p : Photo | u->p in posts | p is Ad
inv4 S: all u : User | some a : Ad | u->a in posts implies all p : Photo | u->p in posts | p is Ad
inv4 T: all u:User | some a:Ad | a in u.posts implies all x: u.posts | x is Ad
inv4 T: all u:User | some a:Ad | a in u.posts implies all x:u.posts | x is Ad
inv4 T: all u:User | some a:Ad | a in u.posts implies all x:u.posts | x is Ad

---
inv3 S: all p:Photo - Ad | some u1 | all u2 | (p in u1.posts and p in u2.sees) implies u1 in u2.follows
inv3 S: all p:Photo - Ad | some ua | all ub | (p in u1.posts and p in u2.sees) implies u1 in u2.follows
inv3 S: all p:Photo - Ad | some ua | all ub | (p in u1.posts and p in u2.sees) implies ub in ua.follows
inv3 S: all p:Photo - Ad | some ua | all ub | (p in u1.posts and p in u2.sees) implies ub in ua.follows
inv3 S: all p:Photo - Ad | some ua | all ub
inv3 S: all p:Photo - Ad |
inv3 S: all p:Photo - Ad
inv3 S: all p:Photo-Ad
inv3 S: all p:Photo - Ad | some a | all b | (p in a.posts and p in b.sees) implies b in a.follows
inv3 S: all p:Photo - Ad | some a | all b | (p in a.posts and p in b.sees)

---
inv2 T: all u : User | no u->u in follows
inv2 S: no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 S: all u : User | not in u.follows.u

---
inv4 S: all x :  User | all y : Ad | all x.posts -> y in posts
inv4 S: all x :  User | (some y : Ad | y in x.posts ) implies all x.posts -> y
inv4 S: all x :  User | (some y : Ad | y in x.posts ) implies all posts -> y
inv4 S: all x :  User | (some y : Ad | y in x.posts ) implies all posts.x -> y
inv4 S: all x :  User | (some y : Ad | y in x.posts ) implies all posts.x -> y

---
inv3 S: all u:User | some p:Photo-AD | u.follows.posts	all u:User | all  a:Ad | u.sees
inv3 T: all u:User | some p:Photo-Ad | u.follows.posts	all u:User | all  a:Ad | u.sees
inv3 T: all u:User | some p:Photo-Ad | u.follows.posts	all u:User | all  a:Ad | u.sees
inv3 S: all u:User | u.sees-Ad in du.follows.posts	all u:User | all  a:Ad | u.sees
inv3 T: all u:User | u.sees-Ad in u.follows.posts	all u:User | all  a:Ad | u.sees

---
inv6 T: all i:Influencer | all p:Photo | one d:Day | i->p in posts and p-d in date
inv6 T: all i:Influencer | all p:Photo | all d:Day | i->p in posts and p-d in date
inv6 T: all i:Influencer | all p:Photo | all d:Day | p->d in date and i-p in posts
inv6 T: all i:Influencer | some p:Photo | all d:Day | p->d in date and i-p in posts
inv6 T: all i:Influencer | some p:Photo | all d:Day | p->d in date and i-p in posts

---
inv5 S: all u: User , one i: Influencer| i in u.follows and i not in i.follows
inv5 S: all u: User , one i: Influencer| i in u.follows . i not in i.follows
inv5 S: all u: User , one i: Influencer| i in u.follows
inv5 S: all u: User , one i: Influencer | i in u.follows
inv5 S: all u: User , one i: User | i in Influencer => in u.follows
inv5 S: all u: User | one i: User | i in Influencer => in u.follows

---
inv3 T: all x : User | x.sees - Ad implies x.follows.posts
inv3 T: all x : User | x.sees-Ad implies x.follows.posts
inv3 T: all x : User | x.sees-Ad implies x.follows.posts
inv3 T: all x : User | x.sees-Ad implies x.follows.posts
inv3 T: all x : User | x.sees & Ad implies x.follows.posts
inv3 T: all x : User | (x.sees)-Ad and x.follows.posts
inv3 T: all x : User | x.sees in Ad implies x.follows.posts

---
inv7 S: all u1, u2 : User | u2 in u1.follows.follows and u2 not in u1.follows => u2 in u1.suggested
inv7 S: all u1, u2 : User | u2 in u1.follows.follows && u2 not in u1.follows => u2 in u1.suggested
inv7 S: all u1, u2 : User | (u2 in u1.follows.follows && u2 not in u1.follows) => u2 in u1.suggested
inv7 S: all disj u1, u2 : User | u2 in u1.follows.follows => u2 in u1.suggested
inv7 S: all disj u1, u2 : User | u2 in u1.follows.follows => u2 in u1.suggested
inv7 S: all disj u1, u2 : User | u2 in u1.follows.follows && u2 not in u1.follows => u2 in u1.suggested
inv7 S: all disj u1, u2 : User | u2 in u1.follows.follows && u2 not in u1.follows implies u2 in u1.suggested

---
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts + Ad))
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts + Ad))
inv3 T: all u: User, p: Photo | p in u.sees => p in (follows.posts + Ad)
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts + Ad))
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts ++ Ad))
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts ++ Ad))
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts ++ Ad))
inv3 S: User, p: Photo | (p in u.sees) => (p in follows.posts || p in Ad)
inv3 S: User, p: Photo | (p in u.sees) -> (p in follows.posts || p in Ad)
inv3 S: all User, p: Photo | (p in u.sees) -> (p in follows.posts || p in Ad)
inv3 S: User, p: Photo | (p in u.sees) -> (p in follows.posts || p in Ad)
inv3 T: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.posts ++ Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts ++ Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))

---
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) implies (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) => (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) => (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) => (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, all p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all (u: User, p: Photo) | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts union Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts union Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts union Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts union Ad))

---
inv3 S: all a: Add | all u: User | u.a in sees	all p: Photo-Add | u1, u2: User | u1->p in sees and u2->p in posts implies u1-u2 in follows
inv3 S: all a: Add | all u: User | u.a in sees	all p: Photo-Add | u1, u2: User | u1->p in sees and u2->p in posts implies u1->u2 in follows
inv3 S: all a: Add | all u: User | u->a in sees	all p: Photo-Add | u1, u2: User | u1->p in sees and u2->p in posts implies u1->u2 in follows
inv3 S: all a: Add | all u: User | u->a in sees or	all p: Photo-Add | u1, u2: User | u1->p in sees and u2->p in posts implies u1->u2 in follows
inv3 S: (all a: Add | all u: User | u->a in sees) and	(all p: Photo-Add | u1, u2: User | u1->p in sees and u2->p in posts implies u1->u2 in follows)
inv3 S: (all a: Add | all u: User | u->a in sees) and	(all p: Photo-Add | u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows)
inv3 S: (all a: Add | all u: User | u->a in sees) and (all p: Photo-Add | u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows)
inv3 S: (all a: Add | all u: User | u->a in sees) and	(all p: Photo-Add | all u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows)
inv3 S: (all a: Ad | all u: User | u->a in sees) and	(all p: Photo-Add | all u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows)

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv3 S: all u1:User | all p:Photo | u1->p in posts implies((some u2 | u2 -> p in sees implies u2 -> u1 in follows) or ph in Ad)
inv3 S: all u1:User | all p:Photo | u1->p in posts implies((some u2 | u2 -> p in sees implies u2 -> u1 in follows) or ph in Ad)
inv3 S: all u1:User | all p:Photo | u1->p in sees implies((some u2 | u2 -> p in posts implies u1 -> u2 in follows) or ph in Ad)
inv3 S: all u1:User | all p:Photo | u1->p in sees implies((some u2:User | u2 -> p in posts implies u1 -> u2 in follows) or ph in Ad)
inv3 S: all u1:User | all p:Photo | u1->p in sees implies((some u2:User | u2 -> p in posts and u1 -> u2 in follows) or ph in Ad)

---
inv4 T: all x : Ad | x.posts.posts -> Ad
inv4 S: all x : Ad | x.posts.posts in some Ad
inv4 T: all x : Ad | Ad(x.posts.posts)
inv4 S: all x : Ad | all x.posts.posts : Ad
inv4 S: all x : Ad | x.posts.posts in some Ad

---
inv2 T: all x : User | none follows.x
inv2 T: all x : User | none x
inv2 T: all x : User | none posts.x
inv2 T: all x : User | none follows x x
inv2 S: all x,y : User |

---
inv4 S: all u : User, p : Photo | p in u.posts and Ad in p implies all p' : u.posts | Ad in p'
inv4 S: all u, u': User, p: Photo | p in u.posts and Ad in p implies Ad in u'.posts
inv4 S: all u: User | all p: u.posts | (Ad in p implies all p': u.posts | Ad in p')
inv4 S: all u: User | all p: u.posts | (Ad in p implies all p': u.posts | Ad in p')
inv4 S: all u: User | all p: u.posts | (Ad in p implies (all p': u.posts | Ad in p'))

---
inv8 T: all u : User, p : Ad |	p in u.sees <=>	p in u.follows.posts.Ad or p in u.suggested.posts.Ad
inv8 T: all u : User, p : Ad |	p in u.sees iff	p in u.follows.posts.Ad or p in u.suggested.posts.Ad
inv8 T: all u : User, p : Photo |	p not in Ad and p in u.sees implies	p in u.follows.posts and p not in u.follows.posts.Ad or	p in u.suggested.posts and p not in u.suggested.posts.Ad	all u : User, p : Ad |	p in u.sees implies	p in u.follows.posts.Ad or	p in u.suggested.posts.Ad
inv8 T: all u: User, p: Ad |	p in u.sees implies	(p in u.follows.posts.Ad or p in u.suggested.posts.Ad)
inv1 T: all x : Photo | some y : User | y->x
inv1 T: all x : Photo | some y : User | y->x
inv1 T: all x : Photo | some y : User | y.posts->x
inv1 T: all x : Photo | some y : User | y.posts implies x
inv1 T: all x : Photo | (some y : User | y.posts implies x)

---
inv3 T: all u1,u2 : User, p: Photo | u1.sees.p and p not in Ad implies p in u2.posts and u2 in u1.follows
inv3 T: all u1,u2 : User, p: Photo | u1.sees.p and p not in Ad implies (p in u2.posts and u2 in u1.follows)
inv3 T: all u1,u2 : User, p: Photo | (u1.sees.p and p not in Ad) implies (p in u2.posts and u2 in u1.follows)
inv3 T: all u1,u2 : User, p: Photo | (u1.sees.p and (p not in Ad)) implies (p in u2.posts and u2 in u1.follows)
inv3 T: all u1,u2 : User, p: Photo | (u1.sees.p and (p not in Ad)) implies ((p in u2.posts) and (u2 in u1.follows))
inv3 T: all u1,u2 : User, p: Photo | (u1.sees.p and (p not in Ad)) implies ((p in u2.posts) and (u2 in u1.follows))

---
inv2 T: one x:User | not follows.x
inv2 T: all x:User | not x.follows.x
inv2 T: all x:User | not follows.x
inv2 S: some x:User | some y:User | x = y -> not in follows
inv2 T: some x:User | some y:User | x = y -> x not in follows

---
inv3 T: all x:User | some p:Photo | p not Ad
inv3 T: all x:User | some p:Photo | p not Ad
inv3 T: all x:User | all a:Ad | sees.a.x
inv3 T: all x:User | all a:Ad | a.sees.x
inv3 T: all x:User | all a:Ad | sees.x.a

---
inv3 S: all x:User | all p:Photo in set Ad | x in sees.p
inv3 S: all x:User | all p:Photo not in set Ad
inv3 S: all x:User | all p:Photo not in set Ad | p in follows.x
inv3 S: all x:User | all p:Photo not in sig Ad | p in follows.x
inv3 S: all x:User | all p:Photo not Ad |
inv3 S: all x:User | all p:Photo not  Ad | p in follows.x
inv3 S: all x:User | all p:Photo not Ad | p not in follows.x
inv3 S: all x:User | all p:Photo not in Ad
inv3 T: all x:User | all p:Photo not in Ad | posts.p in follows.x

---
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |

---
inv3 S: all u:User | u.sees == u.follows.posts.~Ad					all u:User | u.sees.Ad == Ad
inv3 S: all u:User | u.sees == u.follows.posts.Photo-Ad					all u:User | u.sees.Ad == Ad
inv3 S: all u:User | u.sees == u.follows.posts.Photo-Ad					all u:User | u.sees.Ad == Ad
inv3 S: all u:User | u.sees == u.follows.posts.Photo-Ad					all u:User | u.sees.Ad == Ad
inv3 S: all u:User | u.sees = u.follows.posts.Photo-Ad					all u:User | u.sees.Ad == Ad
inv3 T: all u:User | u.sees = u.follows.posts.Photo-Ad					all u:User | u.sees.Ad = Ad
inv3 T: all u:User | none u.sees-u.follows.posts.Photo-Ad					all u:User | none u.sees.Ad-Ad
inv3 T: all u:User | u.sees-u.follows.posts.Photo-Ad = none					all u:User | u.sees.Ad-Ad = none
inv3 T: all u:User | u.sees-u.follows.posts.Photo-Ad = none					all u:User | u.sees.Ad = Ad
inv3 T: all u:User | u.sees = u.follows.posts.Photo-Ad					all u:User | u.sees.Ad = Ad
inv3 T: all u:User | u.sees.Photo-Ad = u.follows.posts.Photo					all u:User | u.sees.Ad = Ad
inv3 T: all u:User | u.sees.(Photo-Ad) = u.follows.posts.Photo					all u:User | u.sees.Ad = Ad
inv3 S: all u:User | u.sees.-Ad = u.follows.posts					all u:User | u.sees.Ad = Ad
inv3 T: all u:User | u.sees-Ad in u.follows.posts					all u:User | u.sees.Ad = Ad

---
inv2 T: all u : User | no u->u in follows
inv2 S: no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 S: all u : User | not in u.follows.u

---
inv1 S: all p : photo | p.postes
inv1 S: all p : Photo | p.postes
inv1 T: all p : Photo | p.posts
inv1 T: all p : Photo | User.posts.p
inv1 S: all p : Photo | one p.posted
inv1 S: all p : Photo | one posted.p

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv1 T: all p : Photo | one u : User | u.posts
inv1 T: all p : Photo | one u : User | p.posts.u
inv1 S: all p : Photo | one u : User |
inv1 S: all p : Photo | one u : User |
inv1 T: all p : Photo | one u : User | u.p.posts
inv1 T: all p : Photo | one u : User | p.posts
inv1 T: all p : Photo | p.posts
inv1 T: one User.Photo.posts
inv1 T: some User.Photo.posts
inv1 T: User.Photo.posts
inv1 T: all p : Photo | one u : User | lone(u.p.posts)

---
inv3 T: all u : User | u.follows & sees.~posts
inv3 T: all u : User | u.follows in sees.~posts
inv3 S: in sees.~posts
inv3 T: sees.~posts
inv3 T: all u : User | sees.~posts in u.follows

---
inv6 S: all d : Day | Influecer.posts.date.d
inv6 T: all d : Day | Influencer.posts.date.d
inv6 T: Influencer.posts.date.Day
inv6 T: all d : Day | Influencer.posts
inv6 T: all d : Day | Influencer.posts.date
inv6 T: all d : Day | Influencer.posts.date.d

---
inv3 T: all x : User | all y : sees.x | y is Photo -> y in x.follows
inv3 T: all x : User | all y : sees.x | y is Photo -> post.y in x.follows
inv3 T: all x : User | all y : sees.x | y is Photo -> y.post in x.follows
inv3 T: all x : User | all y : sees.x | y not is Ad -> y.post in x.follows
inv3 T: all x : User | all y : sees.x | y not is Ad -> y.post in follows.x
inv3 T: all x : User | all y : sees.x | y not is Ad implies y.post in follows.x
inv3 T: all x : User | all y : sees.x | y not is Ad implies y.post in follows.x
inv3 T: all x : User | all y : sees.x | y not is Ad implies y.post in follows.x
inv3 T: all x : User | all y : sees.x | y not is Ad implies y.post in follows.x	all x : User | all y : Ad | x.sees.y
inv3 T: all x : User | all y : sees.x | y not is Ad implies y.post in follows.x	all x : User | all y : Ad | x.sees.y
inv3 T: all x : User | all y : sees.x | y not is Ad implies y.post in follows.x	all x : User | all y : Ad | x.sees.y
inv3 T: all x : User | all y : sees.x | y not is Ad implies y.post in follows.x	all x : User | all y : Ad | x.sees.y
inv3 T: all x : User | all y : sees.x | y is Photo implies y.post in follows.x	all x : User | all y : Ad | x.sees.y
inv3 T: all x : User | all y : sees.x | y is Photo implies y.post in follows.x	all x : User | all y : Ad | x.sees.y

---
inv6 T: all i:Influencer | all p:Photo | one d:Day | i->p in posts and p-d in date
inv6 T: all i:Influencer | all p:Photo | all d:Day | i->p in posts and p-d in date
inv6 T: all i:Influencer | all p:Photo | all d:Day | p->d in date and i-p in posts
inv6 T: all i:Influencer | some p:Photo | all d:Day | p->d in date and i-p in posts
inv6 T: all i:Influencer | some p:Photo | all d:Day | p->d in date and i-p in posts

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv1 T: all p : Photo | one u : User | u.posts
inv1 T: all p : Photo | one u : User | p.posts.u
inv1 S: all p : Photo | one u : User |
inv1 S: all p : Photo | one u : User |
inv1 T: all p : Photo | one u : User | u.p.posts
inv1 T: all p : Photo | one u : User | p.posts
inv1 T: all p : Photo | p.posts
inv1 T: one User.Photo.posts
inv1 T: some User.Photo.posts
inv1 T: User.Photo.posts
inv1 T: all p : Photo | one u : User | lone(u.p.posts)

---
inv3 T: all u : User | u.follows & sees.~posts
inv3 T: all u : User | u.follows in sees.~posts
inv3 S: in sees.~posts
inv3 T: sees.~posts
inv3 T: all u : User | sees.~posts in u.follows

---
inv6 S: all d : Day | Influecer.posts.date.d
inv6 T: all d : Day | Influencer.posts.date.d
inv6 T: Influencer.posts.date.Day
inv6 T: all d : Day | Influencer.posts
inv6 T: all d : Day | Influencer.posts.date
inv6 T: all d : Day | Influencer.posts.date.d

---
inv6 S: all d : Day | Influencers.posts in photos.d
inv6 S: all d : Day | Influencer.posts in photos.d
inv6 T: all d : Day | Influencer.posts in Photo.d
inv6 T: all d : Day | Influencer.posts in d.Photo
inv6 T: all d : Day | one Influencer.posts & d.Photo
inv6 T: all d : Day | one Influencer.posts & Photo.d
inv6 T: all d : Day | one Influencer.posts & Photo.date.d

---
inv3 S: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all follows.Ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad : univ | sees.ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | sees.ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | u.sees.ad
inv3 S: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | ad in Ad immplies ad in u.sees

---
inv3 T: all x: User | x.sees
inv3 T: all x: User | sees.x not Ad
inv3 S: all x: User | all y: User | x.sees in y.post -> y in x.follows
inv3 T: all x: User | all y: User | x.sees in y.posts -> y in x.follows
inv3 T: all x,y: User | x.sees in y.posts -> y in x.follows

---
inv3 T: all u : User, p : Photo | sees in Ad+u.follows.posts
inv3 T: all u : User, p : Photo | sees in Ad+u.follows.posts
inv3 T: all u : User, p : Photo | sees = Ad+u.follows.posts
inv3 T: all u : User, p : Photo | sees-Ad in u.follows.posts
inv3 T: all u : User | sees-Ad in u.follows.posts

---
inv8 T: all u : User | u.sees.Ad		all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)
inv8 T: all u : User | some u.sees.Ad		all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)
inv8 S: all u : User | some u.sees.ad		all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)
inv8 S: all u : User | some ad.(u.sees)		all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)
inv8 T: all u : User | some Ad.(u.sees)		all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)
inv8 T: all u : User | some (u.sees).Ad		all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)

---
inv3 T: all u:User | all p:Photo,follow:User | p in u.sees and follow in u.follows implies p -> follow.posts	all u:User | all ad:Ad | ad in u.sees
inv3 T: all u:User | all p:Photo,follow:User | p in u.sees and follow in u.follows implies p in follow->posts	all u:User | all ad:Ad | ad in u.sees
inv3 T: all u:User | all p:Photo,follow:User | p in u.sees and follow in u.follows implies p in follow->posts	all u:User | all ad:Ad | ad in u.sees
inv3 T: all u:User | all p:Photo,follow:User | p in u.sees and follow in u.follows implies p in follow->posts	all u:User | all ad:Ad | ad in u.sees
inv3 T: all u:User | all p:Photo,follow:User | p in u.sees and follow in u.follows implies p in follow->posts	all u:User | all ad:Ad | ad in u.sees

---
inv3 T: all u:User | all p:Photo,follow:User | p in u.sees and follow in u.follows implies p in follow->posts	all u:User | all ad:Ad | ad in u.sees
inv3 T: all u:User | all p:Photo,follow:User | p in u.sees and follow in u.follows implies p in follow->posts	all u:User | all ad:Ad | ad in u.sees
inv3 T: all u:User | all p:Photo,follow:User | p in u.sees and follow in u.follows implies p in follow->posts	all u:User | all ad:Ad | ad in u.sees
inv3 T: all u:User | all p:Photo,follow:User | p in u.sees and follow in u.follows implies p in follow->posts	all u:User | all ad:Ad | ad in u.sees
inv3 T: all u:User | all p:Photo,follow:User | p in u.sees and follow in u.follows implies p in follow->posts	all u:User | all ad:Ad | ad in u.sees

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
inv3 S: all
inv3 S: all
inv3 S: all
inv3 S: all
inv3 S: all

---
inv3 S: all x,y : User | all p in x.sees | (p in y.posts & x->y in follows) or p in Ad
inv3 T: all x,y : User | all p : Photo in x.sees | (p in y.posts & x->y in follows) or p in Ad
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows) or p in Ad
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows)
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | some y : User | all p : in x.sees | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : in x.sees | some y : User | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : in x.sees | some y : User | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : Photo | all p in x.sees | some y : User | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : Photo | some y : User | all p in x.sees & (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : Photo | all p in x.sees & (p in x.follows.posts) or (p in Ad)
inv3 S: all x : User | all p : Photo | all p in x.sees & (p in x.follows.posts) or (p in Ad)

---
inv1 S: all i: Photo |i in  User.posts & not in User.follows
inv1 T: all x: User | some x in x.posts.Photo
inv1 T: all x: User | some x in x.posts
inv1 T: all x: User | some x in posts.Photo
inv1 T: all x: User | some x Photo.posts
inv1 T: all x: User | some x in x.posts
inv1 T: all x: User | some x in x.Photo

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
inv1 S: all p: Photo - User | one user.p
inv1 T: all p : Photo, u : User | one u.p
inv1 S: all p : Photo | one user.p
inv1 S: all p : Photo | p in user.posts	all p : Photo | one u : User | p in u.post
inv1 S: all p : Photo | p in User.posts	all p : Photo | one u : User | p in u.post

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv2 T: all x:User | none x.follows.x
inv2 T: all x:User | none x.follows.x
inv2 T: all x:User | none x.follows.x
inv2 T: all x:User | not x.follows.x
inv2 T: all x:User | not x.follows -> follows.x
inv2 T: all x:User | not {x.follows and follows.x}
inv2 T: all x:User | none x.follows.x
inv2 S: all x:User | x.follows -> not follows.x
inv2 T: all x:User | x.follows -> {not follows.x}
inv2 S: all x:User | x.follows -> !follows.x
inv2 T: all x:User | x.follows implies not follows.x
inv2 T: all x:User | x.follows -> follows.x
inv2 T: all x:User | x.follows implies follows.x
inv2 T: all x:User | x.follows -> follows.x

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies ph2 in Ad

---
inv1 S: all p : Photo | p in some User.posts
inv1 S: all p : Photo |
inv1 S: all p : Photo |
inv1 S: all p : Photo |
inv1 S: all p : Photo |
inv1 S: all p : Photo |
inv1 S: all p : Photo |
inv1 S: all p : Photo |

---
inv3 S: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all follows.Ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad : univ | sees.ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | sees.ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | u.sees.ad
inv3 S: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | ad in Ad immplies ad in u.sees

---
inv3 S: all x: suggested | all suggested.x
inv3 S: all x: suggested | all x.suggested
inv3 T: all x: User |  x.sees in suggested
inv3 S: all u: User, all s: suggested | s in u.sees
inv3 S: all u: User, all s: Photo | s in u.sees
inv3 S: one a: Ad, all u: User | a in u.sees
inv3 S: one a: Ad, all u: User | u->a in sees
inv3 S: one a: A | all u: User | u->a in sees

---
inv3 T: all u : User | u.sees implies some u.follows.posts
inv3 T: all u : User | u.sees implies u.follows.posts
inv3 T: all u : User | u.sees.Photo implies u.follows.posts
inv3 T: all u : User | u.sees implies u.follows.posts
inv3 S: all u : User | u.sees implies u.follows.posts | u.sees some Ad
inv3 S: all u : User | u.sees implies u.follows.posts | u.sees implies some Ad

---
inv2 S: no -follows.follows
inv2 S: no -follows*follows
inv2 S: no (-follows)*follows
inv2 S: no (-follows) x follows
inv2 S: (-follows) x follows not in iden

---
inv5 S: all f : Influencer, u : Users | u.follows.f
inv5 S: all f : Influencer, u : Users | (u.follows).f
inv5 T: all f : Influencer, u : User | (u.follows).f
inv5 T: all f : Influencer, u : User | (u.follows).f
inv5 T: all f : Influencer, u : User | (follows.u).f
inv5 T: all f : Influencer, u : User | follows.u
inv5 T: all f : Influencer, u : User | (u.follows).u
inv5 S: all f : Influencer | u : User | (u.follows).u
inv5 T: all f : Influencer | all u : User | (u.follows).u
inv5 T: all i : Influencer | follows.i - i

---
inv8 T: all u : User | all p : Photo | p in (u.sees & Ad) implies (u.follows + u.suggested).posts.u
inv8 T: all u : User | all p : Photo | p in (u.sees & Ad) implies ((u.follows + u.suggested).posts).u
inv8 T: all u : User | u.sees & Ad
inv8 T: all u : User | u.sees & Ad
inv8 T: all u : User | u.sees

---
inv6 T: all i:Influencer | all p:Photo | one d:Day | i->p in posts and p-d in date
inv6 T: all i:Influencer | all p:Photo | all d:Day | i->p in posts and p-d in date
inv6 T: all i:Influencer | all p:Photo | all d:Day | p->d in date and i-p in posts
inv6 T: all i:Influencer | some p:Photo | all d:Day | p->d in date and i-p in posts
inv6 T: all i:Influencer | some p:Photo | all d:Day | p->d in date and i-p in posts

---
inv1 T: all photo : Photo | User.photo = photo
inv1 T: all p : Photo | posts.p
inv1 T: all p : Photo | posts.p
inv1 T: all p : Photo | posts.p
inv1 T: all p : Photo | posts.p
inv1 T: all p : Photo | posts.p
inv1 T: all p : Photo | posts.p

---
inv4 S: all x : User, p : Photo | u->p in Ad implies (all u.posts in Ad)
inv4 S: all x : User, p : Photo | u->p in Ad implies (all photo : Photo | u->p in photos implies p in Ad)
inv4 T: all u: User, p : Photo | u->p in Ad implies (all photo : Photo | u->p in photos implies p in Ad)
inv4 T: all u: User, p : Photo | u->p in Ad implies (all photo : Photo | u->photo in photos implies p in Ad)
inv4 T: all u: User, p : Photo | u->p in Ad implies (all photo : Photo | u->photo in photos implies photo in Ad)

---
inv2 S: all x,y : User | x->y in follow implies x != y
inv2 S: all x,y : User | x->y in follow implies x != y
inv2 S: all x,y : User | x->y in follow implies x != y
inv2 S: all x,y : User | x->y in follow implies x!=y
inv2 S: all x,y : User | x->y in follow implies !x=y
inv2 S: all x : User | x not in follow.x
inv2 S: all x,y : User | x->y in follow implies x!=y

---
inv6 T: all i : Influencer, d : Day | some i.posts.d
inv6 T: all i : Influencer, d : Day | some i.posts.d
inv6 T: all i : Influencer, d : Day | some i.posts.date.d
inv6 T: all i : Influencer, d : Day | some i.posts in date.d
inv6 T: all i : Influencer, d : Day | some i.posts.date = d

---
inv3 S: all x,y : x -> y in sees implies Ad(y) or (some z : z->y in posts implies x->z in follows)
inv3 S: all x,y : x->y in sees implies Ad(y) or (some z : z->y in posts implies x->z in follows)
inv3 S: all x,y : x->y in sees implies (Ad(y) or (some z : z->y in posts implies x->z in follows))
inv3 S: all x,y : x->y in sees implies (Ad(y) or (some z : z->y in posts implies x->z in follows))
inv3 S: all x,y : x->y in sees implies ((y in Photo) or (some z : z->y in posts implies x->z in follows))

---
inv7 S: all e: User, o - (o + s): User - (e + s), s: User - (e + o) | s in o.follows => s in e.suggested
inv7 S: all e: User - (o + s), o: User - (e + s), s: User - (e + o) | s in o.follows => s in e.suggested
inv7 S: all e: User - (o + s), o: User - (e + s), s: User - (e + o) | s in o.follows => s in e.suggested
inv7 S: all e: User - (o + s), o: User - (e + s), s: User - (e + o) | s in o.follows => s in e.suggested
inv7 S: all e: User - (s+o), o: User - (e + s), s: User - (e + o) | s in o.follows => s in e.suggested

---
inv3 T: all x : User | x.sees not Adds
inv3 T: all x : User | x.sees not Ad
inv3 S: all x : User | Add(x.sees) or follows.posts.(x.sees)
inv3 T: all x : User | Ad(x.sees) or follows.posts.(x.sees)
inv3 T: all x : User |  follows.posts.(x.sees)
inv3 T: all x : User | x.sees in Ad or follows.posts.(x.sees)

---
inv6 T: all i : Influencer | i.posts
inv6 T: all i : Influencer | i.posts
inv6 T: all i : Influencer | i.posts
inv6 T: all i : Influencer | i.posts
inv6 T: all i : Influencer | i.posts
inv6 T: all i : Influencer | i.posts

---
inv3 T: all p : Photo | all u1 : User | all u2 : User |	p in u1.sees -> (p in u2.posts and u2 in u1.follows and p not in Ad) or (p in Ad)
inv3 T: all p : Photo | all u1 : User | all u2 : User |	p in u1.sees -> (p in u2.posts and u2 in u1.follows and p not in Ad) or (p in Ad)
inv3 T: all p : Photo | all u1 : User | all u2 : User |	p in u1.sees -> (p in u2.posts and u2 in u1.follows and p not in Ad) or (p in Ad)
inv3 T: all p : Photo | all u1 : User | all u2 : User |	p in u1.sees -> (p in u2.posts and u2 in u1.follows and p not in Ad) or (p in Ad)
inv3 T: all p : Photo | all u1 : User | all u2 : User |	p in u1.sees -> ( p not in Ad) or (p in Ad)
inv3 T: all p : Photo | all u1 : User | all u2 : User |	p in u1.sees -> (p in u2.posts and u2 in u1.follows and p not in Ad)
inv3 T: all p : Photo | all u1 : User | all u2 : User |	p in u1.sees -> ((p in u2.posts and u2 in u1.follows and p not in Ad) or (p in Ad))

---
inv4 T: all p : Photo | all u : User |	one (u.posts in Ad) implies (p in u.posts implies p in Ad)
inv4 T: all p : Photo | all u : User |	one (u.posts in Ad) implies (p in u.posts implies p in Ad)
inv4 T: all p : Photo | all u : User |	some (u.posts in Ad) implies (p in u.posts implies p in Ad)
inv4 T: all p : Photo | all u : User |	(some u.posts in Ad) implies (p in u.posts implies p in Ad)
inv4 T: all p : Photo | all u : User | all p1 : Photo |	(some p1 in u.posts and p1 in Ad) implies (p in u.posts implies p in Ad)
inv4 T: all p : Photo | all u : User | all p1 : Photo |	(some p1 in u.posts and p1 in Ad)
inv4 T: all p : Photo | all u : User | all ad : Ad |	(some ad in u.posts) implies (p in u.posts implies p in Ad)
inv4 T: all p : Photo | all u : User | all ad : Ad |	(some ad in u.posts) implies (p in u.posts and p in Ad)
inv4 T: all p : Photo | all u : User | all ad : Ad |	(some ad in u.posts)
inv4 T: all p : Photo | all u : User | all ad : Ad |	(one ad in u.posts) implies (p in u.posts and p in Ad)

---
inv7 S: all x,y : User | iff (y in x.follows and x not in y.follows) implies x in y.sugested
inv7 S: all x,y : User | iff (y in x.follows and x not in y.follows) implies x in y.sugested
inv7 S: all x,y : User | iff y in x.follows and x not in y.follows implies x in y.sugested
inv7 S: all x,y : User | iff (y in x.follows and x not in y.follows) implies x in y.suggested
inv7 S: all x,y : User | iff (y in x.follows) and (x not in y.follows) implies x in y.suggested

---
inv2 S: all u:User | u.follows & u == none
inv2 S: all u:User | u.follows-u == u.follows
inv2 S: all u:User | u.follows-u == iden
inv2 T: all u:User | u.follows-u in iden
inv2 T: all u:User | u.follows-u

---
inv4 S: all u : User and ad : Add | ad in u.posts implies ad in u.^posts
inv4 S: all u : User and ad : Add | ad in u.posts implies ad in u.(^posts)
inv4 S: all u : User and ad : Add | ad in u.posts implies ad in u.posts
inv4 S: all u : User and ad : Add | ad in u.posts implies u.posts in Ad
inv4 S: all u : User and ad : Ad | ad in u.posts implies ad in u.(^posts)

---
inv4 T: all u:User | all ad:Ad | u->ad in u.posts implies u.posts in Ad
inv4 T: all u:User | all ad:Ad | u->ad in u.posts implies u.^posts in Ad
inv4 T: all u:User | all p:Photo | u->p in u.posts and p in Ad implies p in Ad
inv4 T: all u:User | all p:Photo | u->p in u.posts and p in Ad implies u->p in Ad
inv4 T: all u:User | all p:Photo | u->p in u.posts and p in Ad implies (u->p in Ad )

---
inv1 S: all x: user | Photo one posts.x
inv1 T: all x: User | Photo one posts.x
inv1 T: all x: User | Photo one posts.x
inv1 T: all x: User | Photo one posts.x
inv1 T: all x: User | posts.x
inv1 T: all x: User | posts one Photo.x
inv1 T: all x: Photo |User one posts.x
inv1 T: all x: Photo | User one posts.x
inv1 T: all x: Photo | User.x one posts.x
inv1 T: all x : User | Photo.x
inv1 T: all x : User | Photo one posts.x
inv1 T: all x : Photo | x -> User
inv1 T: all x : Photo | x -> User.posts
inv1 S: all x : User | Photo in  one posts.x
inv1 T: all x : User | Photo.x  one posts.x
inv1 T: all x : User | Photo.x  one posts.x
inv2 S: all x : User | u not in follows.y
inv2 S: all x : User | not in follows.y
inv2 S: all x : User | not in follows.y
inv2 S: all x : User | not in follows.y
inv2 S: all x : User | x not in follows.y
inv2 S: all x : User | y not in follows.y
inv2 S: all x : User | not in follows.x

---
inv5 S: all i : Influencer |  u : User implies u in i.follows
inv5 S: all i : Influencer ,  u : User implies u in i.follows
inv5 S: all i : Influencer | all  u : User implies u in i.follows
inv5 S: all i : Influencer | all  u : User->u in i.follows
inv5 S: all x : User | un in follows.Influencer

---
inv2 T: all u : User | no u->u in follows
inv2 S: no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 S: all u : User | not in u.follows.u

---
inv4 T: all u:User, ad:Ad | some u.posts in ad implies u.posts in ad
inv4 T: all u:User, ad:Ad | some u.posts in ad implies u.posts in ad
inv4 T: all u:User, ad:Ad | some u.posts in Ad implies u.posts in Ad
inv4 T: all u:User | some u.posts in Ad implies u.posts in Ad
inv4 T: all u:User | some u.posts in Ad implies u.posts in Ad
inv4 T: all u:User | (some u.posts in Ad) implies (u.posts in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
inv4 T: all u1 : User | some u1.posts in Ad implies (all ph : Photo | ph in u1.posts and ph in Ad)
inv4 T: all u:User | some u.posts in Ad implies (all p:Photo | p in u1.posts and p in Ad)
inv4 S: all u:User | some u.posts in Ad implies (all p:Photo | p in u1.posts | p in Ad)
inv4 T: all u:User | some u.posts in Ad implies (all p:Photo | p in u1.posts implies p in Ad)
inv4 T: all u:User | some u.posts in Ad implies (all p:Photo | p in u1.posts implies p in Ad)
inv4 T: all u:User | (some u.posts in Ad) implies ( all p : Photo | posts.p in Ad)
inv4 T: all u:User | (some u.posts in Ad) implies ( all p : Photo | u.posts in Ad)
inv4 T: all u:User | (some u.posts in Ad) implies ( all p : Photo | some posts.p in Photo)
inv4 T: all u:User | (some u.posts in Ad) implies ( all p : Photo | some u.posts in Photo)
inv4 T: all u:User | (some u.posts in Ad) implies ( all p : Photo | some u.posts in Ad)

---
inv3 S: all x: User | y in follows.y , x sees.z, z in posts.y
inv3 S: all x: User | y in follows.x , x sees.z, z in posts.y
inv3 S: all x: User | y in follows.x	x sees.z	z in posts.y
inv3 S: all x: User | y in follows.x , x sees.z, z in posts.y
inv3 S: all x: User y in follows.x | z in posts.y iff x sees.z
inv3 S: all x: User | y in follows.x z in posts.y iff x sees.z
inv3 S: all x: User | y in follows.x, z in posts.y iff x sees.z
inv3 S: all x: User | y in follows.x, z in posts.y iff x sees.z
inv3 S: all x: User | y in follows.x and z in posts.y iff x sees.z
inv3 S: all x: User y: User | y in follows.x and z in posts.y iff x sees.z
inv3 S: all x: User, y: User | y in follows.x and z in posts.y iff x sees.z
inv3 T: all x: User, y: User, z : Photo | y in follows.x and z in posts.y iff x sees.z
inv3 S: all x: User, y: User, z : Photo | y in follows.x, z in posts.y iff x sees.z
inv3 S: all x: User, y: User, z : Photo | y in follows.x z in posts.y iff x sees.z
inv3 T: all x: User, y: User, z : Photo | y in follows.x and z in posts.y iff x sees.z

---
inv3 S: all x : User, all y : Photo | x,y all follows.x.y
inv3 S: all x : User, all y : Photo | x,y->follows.x.y
inv3 S: all x : User, all y : Photo | x -> follows.x
inv3 S: all x : User, all y : Photo | y in x.sees implies (y in Ad or y in follows.y)
inv3 S: all x : User, all y : Photo | y in x.sees implies (y in Ad or y in follows)
inv3 S: all x : User, all y : Photo | y in x.sees implies (y in Ad)
inv3 S: all x : User, all y : Photo | y in x.sees implies (y in Ad or y in follows.x)
inv3 S: all x : User, all y : Photo | y in x.sees implies (y in Ad or y in follows.y)
inv3 S: all x : User, all y : Photo | y in x.sees implies (y in Ad or y in x.follows)
inv3 S: all x : User, all y : Photo | y in x.sees implies (y in Ad or y in y.follows)
inv3 S: all x : User, all y : Photo | y in x.sees implies (y in Ad or y in y.follows)

---
inv4 S: all x : User | all p : Posts | p in Ad and in x.posts implies all pp : Posts in x.posts in Ad
inv4 S: all x : User | all p : Posts | p in Ad and in x.posts implies all x.posts in Ad
inv4 S: all x : User | all p : Posts | some p: x.posts in Ad implies all x.posts in Ad
inv4 S: all x : User | some y : Photo | y in Ad implies all x.posts in Ad
inv4 S: all x : User | all y : Photo | y in Ad and y in x.posts implies all x.posts in Ad
inv4 S: all x : User | some y : Photo | y in Ad and y in x.posts implies all x.posts in Ad

---
inv5 S: all u: User-i, i:Influencer | u in i.follows
inv5 S: all u: User-i, i:Influencer | i in u.follows
inv5 S: all u: User-i, i:Influencer | u in follows.i
inv5 S: all u: User-i| all i: Influencer | u in follows.i
inv5 S: all u: User-i| all i:Influencer | u in follows.i

---
inv1 S: all x: Photo| same y:
inv1 S: all x: Photo| same y:
inv1 S: all x: Photo| same y:
inv1 S: all x: Photo| same y:
inv1 S: all x: Photo| same y:

---
inv6 T: all x : Influencer | x.posts.date
inv6 T: all x : Influencer | x.posts.date
inv6 T: all x : Influencer | x.posts.date
inv6 T: all x : Influencer | x.posts.date
inv6 T: all x : Influencer | x.posts.date
inv6 T: all x : Influencer | x.posts.date
inv6 T: all x : Influencer | x.posts.date
inv6 T: all x : Influencer | x.posts.date

---
inv5 T: all i : Influencer | User.follows.i
inv5 T: all i : Influencer | User.follows.i
inv5 T: all u : User | u in Influencer => User.follows.u
inv5 T: all u : User | u in Influencer => User.follows.u
inv5 T: all u : User, i : Influencer | u.follows.i
inv5 T: all User, i : Influencer | User.follows.i
inv5 T: all u : User, i : Influencer | u.follows.i
inv5 T: all u : User, i : Influencer | u.follows.i
inv5 T: all u : User, i : Influencer | u.follows.i

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
inv6 T: all d:Day, i : Influencer| some i.posts.date = d
inv6 S: all d:Day, i : Influencer| some i.posts.date == d
inv6 S: all  i : Influencer| all d:Day => some i.posts.date = d
inv6 T: all d: Day,i:Influencer| some i.posts.date.d
inv6 T: all d: Day, i:Influencer| some i.posts.date.d

---
inv1 S: all p : Photo | one post.p
inv1 S: all p : Photo | one Post.p
inv1 S: all p : Photo | one User.post.p
inv1 S: all p : Photo | one User.post.p
inv1 S: all p : Photo | one User.post.p

---
inv5 S: all inf : Influencer | all u : User| u!= i -> u in follows.inf
inv5 T: all inf : Influencer | all u : User| u!= inf -> u in follows.inf
inv5 T: all inf : Influencer, u : User| u!= inf -> u in follows.inf
inv5 S: all inf : Influencer, u : User| u!= inf -> i in u.follows
inv5 T: all inf : Influencer, u : User| u!= inf -> inf in u.follows
inv5 T: all inf : User-Influencer, u : User| u!= inf -> inf in u.follows

---
inv2 T: all x : User | x not follows.x
inv2 T: all x : User | x not x.follows
inv2 T: all x : User | follows.x not x.follows
inv2 T: all x : User | x not x.follows
inv2 T: all x : User | x not follows.x
inv2 T: all x : User| x not follows.x
inv2 T: all x : User | x not follows.x

---
inv4 S: all x : User | one x.posts in Adds -> all x.posts in Adds
inv4 S: all x : User | one x.posts in Ad -> all x.posts in Ad
inv4 S: all x : User | one (x.posts in Ad) -> all (x.posts in Ad)
inv4 S: all x : User | one (x.posts & Ad) -> all (x.posts & Ad)
inv4 S: all x : User | one x.posts in Ad implies all x.posts in Ad
inv4 S: all x : User | one x.posts in Ad implies (all x.posts in Ad)

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv3 S: all add:Ad| all p:Photo| all u1,u2: User| p in u1.sees implies (p not in Ad p in u2.posts) else p in Ad
inv3 S: all add:Ad, all p:Photo, all u1,u2: User| p in u1.sees implies (p not in Ad p in u2.posts) else p in Ad
inv3 S: all add:Ad, all p:Photo, all u1,u2: User| p in u1.sees implies ((p not in Ad p in u2.posts) or p in Ad)
inv3 S: all add: Ad, all p: Photo, all u1,u2: User| p in u1.sees implies ((p not in Ad p in u2.posts) or p in Ad)
inv3 S: all add: Ad, all p: Photo, all u1,u2: User| p in u1.sees implies ((p not in Ad and p in u2.posts) or p in Ad)

---
inv6 T: all i:Influencer | all p:Photo | one d:Day | i->p in posts and p-d in date
inv6 T: all i:Influencer | all p:Photo | all d:Day | i->p in posts and p-d in date
inv6 T: all i:Influencer | all p:Photo | all d:Day | p->d in date and i-p in posts
inv6 T: all i:Influencer | some p:Photo | all d:Day | p->d in date and i-p in posts
inv6 T: all i:Influencer | some p:Photo | all d:Day | p->d in date and i-p in posts

---
inv1 T: all p : Photo | one p.User
inv1 T: all p : Photo | one p in posts
inv1 T: all p : Photo | one p in User.posts
inv1 T: all p : Photo | one p in User->posts
inv1 T: all p : Photo | one u : User | u.posts

---
inv6 S: all d : day, i : Influencer | one d in i.posts.date
inv6 T: all d : Day, i : Influencer | one d in i.posts
inv6 T: all d : Day, u : User | u in Influencer implies one d in i.posts
inv6 T: all d : Day, u : User | u in Influencer implies some d in u.posts.date
inv6 T: all d : Day, i : Influencer | one d in i.posts.date

---
inv3 T: all u : User, p : Photo - Ad | sees.u implies posts.p = follows.u
inv3 T: all u : User, p : Photo-Ad | sees.u implies posts.p = follows.u
inv3 T: all u : User, p : Photo-Ad | sees.u implies posts.p = follows.u
inv3 T: all u:User, p:Photo-Ad | sees.u implies posts.p = follows.u
inv3 T: all u:User, p:Photo-Ad | sees.u implies posts.p = follows.u
inv3 T: all u:User, p:Photo-Ad | sees.p implies posts.p = follows.u
inv3 T: all u:User, p:Photo-Ad | sees.p implies posts.p = follows.u
inv3 T: all u:User, p:Photo-Ad | sees.u implies posts.p = follows.u

---
inv3 T: all x : User | all y : User | all z : Photo | x <: sees.z[y]
inv3 T: all x : User | all y : User | all z : Photo | x :> sees.z[y]
inv3 T: all x : User | all y : User | all z : Photo | x follows.y && x :> sees.z[y]
inv3 T: all x : User | all y : User | all z : Photo | x follows.y => x :> sees.z[y]
inv3 T: all x : User | all y : User | all z : Photo | x follows.y && y posts.z => x sees.z
inv3 T: all x : User | all y : User | all z : Photo | x follows.y && y posts.z => x sees.z
inv3 T: all x : User | all y : User | all z : Photo | y->x in follows && z->y in posts => x sees.z
inv3 T: all x : User | all y : User | all z : Photo | y->x in follows && z->y in posts -> x sees.z

---
inv3 T: all x : User | x sees in x.follos.posts		all x : Ad | one sees.x
inv3 T: all x : User | x sees in (x.follos.posts + Ad)
inv3 T: all x : User | x sees in (x.follows.posts)		all x : Ad | one sees.x
inv3 T: all x : User | x sees in x.follows.posts		all x : Ad | one sees.x
inv3 T: all x : User | x sees in (x.follows.posts + Ad)

---
inv4 S: all u: User | (some u.posts in Ad) => (all u.posts in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
inv4 S: all u: User |	(some u.posts in Ad) => (all u.posts in Ad)
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad  implies ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad  implies ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad  implies ph2 in Ad

---
inv3 T: one u:User | u.posts & follows.u
inv3 T: one u:User | u.posts & follows.u
inv3 T: one u:User | u.posts & follows.u
inv3 T: one u:User | u.posts & follows.u
inv3 T: one u:User | u.posts & follows.u

---
inv2 T: all u : User | no u->u in follows
inv2 S: no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 S: all u : User | not in u.follows.u

---
inv1 S: All o : Photo | one User
inv1 S: All o : Photo | one User
inv1 S: all o : Photo | lone user.o
inv1 T: all o : Photo | lone User.o
inv1 S: o : Photo | lone User.o

---
inv2 S: all x: not follows.x
inv2 S: all x: not follows.x
inv2 S: all x: not follows.x
inv2 S: all x: !follows.x
inv2 T: all x: univ | !follows.x
inv2 S: all x: User|not user.s
inv2 T: all x: User|not follows.x
inv2 T: all x: User|!follows.x
inv2 T: all x: User|!follows.x
inv2 T: all x: User|follows.x

---
inv7 S: all u : User| set s in u.sugested | u not in follows.s and some follows.u in follows.s
inv7 S: all u : User| set s in u.sugested | u not in follows.s
inv7 S: all u : User| set s in u.suggested | u not in follows.s and some follows.u in follows.s
inv7 S: all u : User| set s in u.suggested | u not in follows.s
inv7 S: all u : User| all s in u.suggested | u not in follows.s and some follows.u in follows.s
inv7 S: all u : User| all s in u.suggested | u not in follows.s
inv7 T: all u,s : User| s in u.suggested and u not in follows.s and some follows.u in follows.s

---
inv8 T: sees = Ad & ( follows + suggested)
inv8 T: sees = Ad & (follows + suggested)
inv8 T: sees = Ad - (follows + suggested)
inv8 T: sees = Ad - (follows.posts + suggested.posts)
inv8 T: sees = Ad & (follows.posts + suggested.posts)
inv8 T: sees = Ad - (follows.posts - suggested.posts)
inv8 S: all u: User, a: Add | a in u.sees implies (a in u.follows.posts) or (a in u.suggested.posts)

---
inv3 S: all
inv3 S: all
inv3 S: all
inv3 S: all
inv3 S: all

---
inv3 S: all x,y : User | all p in x.sees | (p in y.posts & x->y in follows) or p in Ad
inv3 T: all x,y : User | all p : Photo in x.sees | (p in y.posts & x->y in follows) or p in Ad
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows) or p in Ad
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows)
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | some y : User | all p : in x.sees | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : in x.sees | some y : User | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : in x.sees | some y : User | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : Photo | all p in x.sees | some y : User | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : Photo | some y : User | all p in x.sees & (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : Photo | all p in x.sees & (p in x.follows.posts) or (p in Ad)
inv3 S: all x : User | all p : Photo | all p in x.sees & (p in x.follows.posts) or (p in Ad)

---
inv2 S: no -follows.follows
inv2 S: no -follows*follows
inv2 S: no (-follows)*follows
inv2 S: no (-follows) x follows
inv2 S: (-follows) x follows not in iden

---
inv5 S: all f : Influencer, u : Users | u.follows.f
inv5 S: all f : Influencer, u : Users | (u.follows).f
inv5 T: all f : Influencer, u : User | (u.follows).f
inv5 T: all f : Influencer, u : User | (u.follows).f
inv5 T: all f : Influencer, u : User | (follows.u).f
inv5 T: all f : Influencer, u : User | follows.u
inv5 T: all f : Influencer, u : User | (u.follows).u
inv5 S: all f : Influencer | u : User | (u.follows).u
inv5 T: all f : Influencer | all u : User | (u.follows).u
inv5 T: all i : Influencer | follows.i - i

---
inv8 T: all u : User | all p : Photo | p in (u.sees & Ad) implies (u.follows + u.suggested).posts.u
inv8 T: all u : User | all p : Photo | p in (u.sees & Ad) implies ((u.follows + u.suggested).posts).u
inv8 T: all u : User | u.sees & Ad
inv8 T: all u : User | u.sees & Ad
inv8 T: all u : User | u.sees

---
inv3 S: all u: User | all p: u.sees | (some f: in u.follows -> f.posts(p)) || p in Ad
inv3 S: all u: User | all p: u.sees | (some f: in u.follows -> p in f.posts) || p in Ad
inv3 S: all u: User | all p: u.sees | (some f: in u.follows -> p in f.posts) disj p in Ad
inv3 S: all u: User | all p: u.sees | (some f: in u.follows -> p in f.posts) or p in Ad
inv3 S: all u: User | all p: u.sees | (some f: in u.follows -> p in f.posts)
inv3 S: all u: User | all p: u.sees | some f: in u.follows -> p in f.posts

---
inv3 S: all u: User | all p: u.sees | p in Ad or p in u.follows.*
inv3 S: all u: User | all p: u.sees | p in Ad or p in u.follows.*.posts
inv3 S: all u: User | all p: u.sees | p in Ad or some f: in u.follows -> f.posts.p
inv3 S: all u: User | all p: u.sees | p in Ad or (some f: in u.follows | f -> p)
inv3 S: all u: User | all p: u.sees | { some f: in u.follows | f.posts.p } or p in Ad
inv3 S: all u: User | all p: u.sees | some f: in u.follows | f -> p
inv3 S: all u: User | all p: u.sees | some f: in u.follows | p in f.posts

---
inv4 S: all a: Ad | all ps in posts.a.posts | ps in Ad	all u: User | some p: u.posts | (p in Ad) -> all ps in u.posts
inv4 S: all a: Ad | all ps in posts.a.posts | ps in Ad
inv4 S: all u: User | some p in u.posts => (all ps in u.posts | ps in Ad)
inv4 S: all u: User | some p in u.posts => p in Ad
inv4 S: all u: User | (some p in u.posts) => (p in Ad)
inv4 S: all u: User | (some p in u.posts | p in Ad) => (all ps in u.posts | ps in Ad)
inv4 S: all u: User | (some p in u.posts | p in Ad) => (u.posts in Ad)

---
inv7 S: all u1, u2, u3 : Users | u1 -> u2 in follows and u2 -> u3 follows and u1 -> u3 not in follows => u1 -> u3 in sees
inv7 S: all u1, u2, u3 : Users | u1 -> u2 in follows and u2 -> u3 follows and u1 -> u3 not in follows => u1 -> u3 in suggested
inv7 T: all u1, u2, u3 : User | u1 -> u2 in follows and u2 -> u3 follows and u1 -> u3 not in follows => u1 -> u3 in suggested
inv7 S: all u1, u2, u3 : User | (u1 -> u2 in follows and u2 -> u3 follows and u1 -> u3 not in follows) => u1 -> u3 in suggested
inv7 S: all u1, u2, u3 : User | (u1 -> u2 in follows and u2 -> u3 follows and not (u1 -> u3 in follows)) => u1 -> u3 in suggested
inv7 T: all u1, u2, u3 : User | u1 -> u2 in follows and u2 -> u3 follows and not (u1 -> u3 in follows) => u1 -> u3 in suggested

---
inv4 T: all u: User | some u.posts in ad implies u.posts in ad
inv4 T: all u: User | some u.posts in Ad implies u.posts in Ad
inv4 S: all u: User | some u.posts in Ad implies all u.posts in Ad
inv4 S: all u: User | some u.posts in Ad implies all u.posts in Ad
inv4 T: all u: User | some u.posts in Ad implies u.posts in Ad

---
inv3 T: all u : User | all p : Photo | (p in Ad implies (all user : User | sees[user])) or (p not in Ad implies (all user : User | sees[user] and follows[user]))
inv3 T: all u : User | all p : Photo | (p in Ad implies (all user : User | sees[user])) or (p not in Ad implies (all user : User | sees[user] and follows[user]))
inv3 T: all u : User | all p : Photo | ((p in Ad implies (all user : User | sees[user])) or (p not in Ad implies (all user : User | sees[user] and follows[user])))
inv3 T: all u : User | all p : Photo | p in sees[u] implies follows[posts[p]] or p in Ad
inv3 T: all u : User | all p : Photo | p in sees[u] => follows[posts[p]] or p in Ad
inv3 T: all u : User | all p : Photo | p in sees[u] => posts[follows[p]] or p in Ad
inv3 T: all u : User, p : Photo | p in sees[u] => posts[follows[p]] or p in Ad
inv3 T: all u : User, p : Photo | p in sees[u] => p.follows.posts or p in Ad
inv3 T: all u : User, p : Photo | p in u.sees => p.follows.posts or p in Ad
inv3 T: all u : User, p : Photo | p in u.sees => p.follows.posts or p in Ad
inv3 T: all u : User, p : Photo | p in u.sees => u.follows.posts or p in Ad

---
inv1 S: all x : Post | one User.x
inv1 T: all x : Photo | one User.x
inv1 S: all x : Photo | one x.User
inv1 S: all x : Photo | one posts.x
inv1 S: all x : Photo | one x.posts
inv1 S: posts in User | (some a:Ad| u-> a in posts) implies (all p:Photos | u-> in posts implies p in Ad
inv1 S: posts in User | (some a:Ad| u-> a in posts) implies (all p:Photos | u-> in posts implies p in Ad
inv1 S: posts in User | (some a:Ad| u-> a in posts) implies (all p:Photos | u-> in posts implies p in Ad
inv1 S: posts in User | (some a:Ad| u-> a in posts) implies (all p:Photos | u-> in posts implies p in Ad
inv1 S: posts in User | (some a:Ad| u-> a in posts) implies (all p:Photos | u-> in posts implies p in Ad
inv1 S: posts in User | (some a:Ad| u-> a in posts) implies (all p:Photos | u-> in posts implies p in Ad)
inv1 S: posts in User | (some a:Ad| u-> a in posts) implies (all p:Photos | u-> in posts implies p in Ad)
inv1 S: posts in User | (some a:Ad| u-> a in posts) implies (all p:Photos | u-> in posts implies p in Ad)
inv1 S: all posts in User | (some a:Ad| u-> a in posts) implies (all p:Photos | u-> in posts implies p in Ad)
inv1 S: posts in User | (some a:Ad| u-> a in posts) implies (all p:Photos | u-> in posts implies p in Ad)
inv1 S: posts in User | (some a:Ad| u-> a in posts) implies (all p:Photos | u-> in posts implies p in Ad)

---
inv2 S: no -follows.follows
inv2 S: no -follows*follows
inv2 S: no (-follows)*follows
inv2 S: no (-follows) x follows
inv2 S: (-follows) x follows not in iden

---
inv5 S: all f : Influencer, u : Users | u.follows.f
inv5 S: all f : Influencer, u : Users | (u.follows).f
inv5 T: all f : Influencer, u : User | (u.follows).f
inv5 T: all f : Influencer, u : User | (u.follows).f
inv5 T: all f : Influencer, u : User | (follows.u).f
inv5 T: all f : Influencer, u : User | follows.u
inv5 T: all f : Influencer, u : User | (u.follows).u
inv5 S: all f : Influencer | u : User | (u.follows).u
inv5 T: all f : Influencer | all u : User | (u.follows).u
inv5 T: all i : Influencer | follows.i - i

---
inv2 T: follows in User
inv2 T: follows in User
inv2 T: follows in User
inv2 T: follows in User
inv2 T: follows in User
inv2 T: follows in User
inv2 T: follows in User

---
inv1 T: all p : Photo | some u : User | p in Photo implies u->p in User
inv1 S: all p : Photo , some u : User | p in Photo implies p in u->p
inv1 S: all p : Photo , some u : User | p in u->p implies p in Photo
inv1 S: all p : Photo implies some u : user
inv1 S: all p : Photo | some u : user | u->p in posts

---
inv1 T: (all p : Photo | some u : User | u->p in posts) &&	all u1,u2 : User | one p : Photo| u1->p in u1.posts and u2->p in u2.posts implies u1 = u2
inv1 S: (all p : Photo | some u : User | u->p in posts) &&	all u1,u2 : User | one p : Photo| u1->p in u1.posts and u2->p in u2.posts implies u1 == u2
inv1 T: (all p : Photo | some u : User | u->p in posts) &&	all u1,u2 : User | one p : Photo| u1->p in u1.posts and u2->p in u2.posts implies u1 = u2
inv1 T: (all p : Photo | some u : User | u->p in posts) &&	all u1,u2 : User | one p : Photo| u1->p in u1->posts and u2->p in u2.posts implies u1 = u2
inv1 T: (all p : Photo | some u : User | u->p in posts) &&	all u1,u2 : User | one p : Photo| p in u1->posts and p in u2.posts implies u1 = u2

---
inv1 T: (all p : Photo | some u : User | u->p in u.posts) &&	all u1,u2 : User | one p : Photo| p in u1.posts and p in u2.posts implies u1 = u2
inv1 T: (all p : Photo | some u : User | u->p implies p in u.posts) &&	all u1,u2 : User | one p : Photo| p in u1.posts and p in u2.posts implies u1 = u2
inv1 T: (all p : Photo | some u : User | u->p implies p in u.posts) &&	all u1,u2 : User | one p : Photo| p in u1.posts and p in u2.posts implies u1 = u2
inv1 T: (all p : Photo | some u : User | p in u.posts implies u->p) &&	all u1,u2 : User | one p : Photo| p in u1.posts and p in u2.posts implies u1 = u2
inv1 T: (all p : Photo | some u : User | p in u.posts implies u->p) &&	all u1,u2 : User | one p : Photo| p in u1.posts and p in u2.posts implies u1 = u2
inv1 S: (all p : Photo | some u : User | p in u.posts implies (all user : User | p not in user.posts) &&	all u1,u2 : User | one p : Photo| p in u1.posts and p in u2.posts implies u1 = u2

---
inv4 T: all u:User| (some u.posts in Ad) implies(no u.posts-Ad)
inv4 T: all u:User| (some u.posts) in Ad implies(no u.posts-Ad)
inv4 S: all u:User| some y:Photo | x->y in posts and y in Ad implies(no u.posts-Ad)
inv4 S: all u:User| some y:Photo | x->y in posts and y in Ad implies(u.posts in Ad)
inv4 T: all u:User| some u.posts & Ad implies(u.posts & Ad)
inv4 T: all u:User| some (u.posts & Ad) implies(u.posts & Ad)

---
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts + Ad))
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts + Ad))
inv3 T: all u: User, p: Photo | p in u.sees => p in (follows.posts + Ad)
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts + Ad))
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts ++ Ad))
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts ++ Ad))
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts ++ Ad))
inv3 S: User, p: Photo | (p in u.sees) => (p in follows.posts || p in Ad)
inv3 S: User, p: Photo | (p in u.sees) -> (p in follows.posts || p in Ad)
inv3 S: all User, p: Photo | (p in u.sees) -> (p in follows.posts || p in Ad)
inv3 S: User, p: Photo | (p in u.sees) -> (p in follows.posts || p in Ad)
inv3 T: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.posts ++ Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts ++ Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))

---
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) implies (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) => (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) => (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) => (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, all p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all (u: User, p: Photo) | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts union Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts union Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts union Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts union Ad))

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv4 S: All x : User | some x.posts in Ad implies x.posts in Ad
inv4 S: All x : User | some x.posts in Ad implies x.posts in Ad
inv4 T: all x : User | some x.posts in Ad implies (x.posts in Ad)
inv4 T: all x : User | (some x.posts in Ad -> (x.posts in Ad))
inv4 T: all x : User | some x.posts in Ad

---
inv4 T: all x : User | some y : Photo | y->x in Ad -> x.posts in Ad
inv4 T: all x : User | some y : Photo | (y->x in Ad -> (x.posts in Ad))
inv4 T: all x : User | some y : Photo | (x.y in Ad -> (x.posts in Ad))
inv4 T: all x : User | some y : Photo | (y->x in Ad -> (x.posts in Ad))
inv4 T: all x : User | some y : Photo | ((y->x in Ad) -> (x.posts in Ad))
inv4 S: all x : User | some y : Ad | (y in x.posts) -> (x.posts in Ad))
inv4 T: all x : User | some y : Ad | ((y in x.posts) -> (x.posts in Ad))

---
inv4 T: all u : User | one u.posts in Ad implies no u.posts in Photo-Ad
inv4 T: all u : User | one u.posts in Ad implies (no u.posts in Photo-Ad)
inv4 S: all u : User | one u.posts in Ad implies (none u.posts in Photo-Ad)
inv4 S: all u : User | one u.posts in Ad | no u.posts in Photo-Ad
inv4 S: all u : User | one u.posts in Ad | none u.posts in Photo-Ad
inv4 T: all u : User | one u.posts in Ad implies no u.posts in Photo-Ad
inv4 T: all u : User | one u.posts in Ad implies #(u.posts in Photo-Ad) = 0
inv4 T: all u : User | one u.posts in Ad implies no (u.posts & Photo-Ad)
inv4 T: all u : User | one u.posts in Ad and no (u.posts & Photo-Ad)
inv4 S: all u : User | all u.posts in Ad or (all u.posts & Photo-Ad)
inv4 S: all u : User | all u.posts in Ad or (all u.posts & Photo-Ad)
inv4 S: all u : User | u.posts == Ad or ( u.posts & Photo-Ad)
inv4 S: all u : User | one u.posts in Ad implies all u.posts in Ad
inv4 S: all u : User | one u.posts in Ad implies u.posts == Ad

---
inv3 S: all
inv3 S: all
inv3 S: all
inv3 S: all
inv3 S: all

---
inv3 S: all x,y : User | all p in x.sees | (p in y.posts & x->y in follows) or p in Ad
inv3 T: all x,y : User | all p : Photo in x.sees | (p in y.posts & x->y in follows) or p in Ad
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows) or p in Ad
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows)
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | some y : User | all p : in x.sees | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : in x.sees | some y : User | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : in x.sees | some y : User | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : Photo | all p in x.sees | some y : User | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : Photo | some y : User | all p in x.sees & (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : Photo | all p in x.sees & (p in x.follows.posts) or (p in Ad)
inv3 S: all x : User | all p : Photo | all p in x.sees & (p in x.follows.posts) or (p in Ad)

---
inv4 S: all ad : Ad | all user.add.posts in Ad
inv4 S: all ad : Ad | user.add.posts in Ad
inv4 S: all ad : Ad | add.user.posts in Ad
inv4 S: all ad : Ad | add.user.posts in Ad
inv4 T: all ad : Ad , user : User | ad in user.posts in Ad

---
inv5 T: all i:Influencer | all u:User | follows.i
inv5 T: all i:Influencer | all u:User | follows.i
inv5 T: all i:Influencer | all u:User | follows.i
inv5 T: all i:Influencer | all u:User | i.follows
inv5 T: all u:User | all i:Influencer |  u.follows.i
inv5 T: all u:User | all i:Influencer |  follows.u

---
inv5 S: all follow.Influencer
inv5 S: follow.Influencer
inv5 S: User.follow.Influencer
inv5 T: User.follows.Influencer
inv5 T: follows.Influencer
inv5 T: follows.Influencer

---
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv4 T: all u:User | some (u.posts in Ad) implies u.posts in Ad
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
inv4 T: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts and ph in Ad)
inv4 T: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts implies (ph in Ad))
inv4 T: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts and ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in u1.posts and ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in u1.posts and ph = Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in u1.posts and ph == Ad)
inv4 T: all u1 : User | some u1.posts in Ad implies (all ph : Photo | ph in u1.posts and ph in Ad)

---
inv7 S: all u1, u2 : User | u2 in u1.suggested implies u2 in u1.follows.follows and u2 != u1 and u2 not in u1.follows
inv7 S: all u1, u2 : User | u2 in u1.suggested implies u2 in u1.follows.follows and u2 != u1 and u2 not in u1.follows
inv7 S: all u1, u2 : User | u2 in u1.suggested => u2 in u1.follows.follows and u2 != u1 and u2 not in u1.follows
inv7 S: all u1, u2 : User | u2 in u1.suggested => u2 in u1.follows.follows and u2 not in u1 and u2 not in u1.follows
inv7 S: all u1, u2 : User | u2 in u1.suggested => u2 in u1.follows.follows and u2 != u1 and u2 not in u1.follows
inv7 S: all u1, u2 : User | u2 in u1.suggested => u2 in u1.follows.follows and u2 != u1 and u2 not in u1.follows

---
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |

---
inv5 T: all i: Influencer | follows.i
inv5 T: all i: Influencer, u:User | u.follows.i
inv5 T: all i: Influencer | follows.i
inv5 T: all i: Influencer | follows.i
inv5 T: all i:Influencer | follows.i

---
inv3 S: all x,y : User, p : Photo | (not p.ads && p in x.sees && p in y.posts) => y in follows.x
inv3 S: all x,y : User, p : Photo | (not p extends ads && p in x.sees && p in y.posts) => y in follows.x
inv3 S: all x,y : User, p : Photo | (not p extends Ad && p in x.sees && p in y.posts) => y in follows.x
inv3 S: all x,y : User, p : Photo | ( p not Ad && p in x.sees && p in y.posts) => y in follows.x
inv3 S: all x,y : User, p : Photo, a : Ad | (not p == a && p in x.sees && p in y.posts) => y in follows.x

---
inv2 T: all u : User | no u->u in follows
inv2 S: no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 S: all u : User | not in u.follows.u

---
inv3 S: all p:Photo - Ad | some u1 | all u2 | (p in u1.posts and p in u2.sees) implies u1 in u2.follows
inv3 S: all p:Photo - Ad | some ua | all ub | (p in u1.posts and p in u2.sees) implies u1 in u2.follows
inv3 S: all p:Photo - Ad | some ua | all ub | (p in u1.posts and p in u2.sees) implies ub in ua.follows
inv3 S: all p:Photo - Ad | some ua | all ub | (p in u1.posts and p in u2.sees) implies ub in ua.follows
inv3 S: all p:Photo - Ad | some ua | all ub
inv3 S: all p:Photo - Ad |
inv3 S: all p:Photo - Ad
inv3 S: all p:Photo-Ad
inv3 S: all p:Photo - Ad | some a | all b | (p in a.posts and p in b.sees) implies b in a.follows
inv3 S: all p:Photo - Ad | some a | all b | (p in a.posts and p in b.sees)

---
inv3 S: all u:User | u not u.sees	all u:User | a:Ad | u -> a.sees
inv3 S: all u:User | u not u.sees	all u:User | a:Ad | a.sees
inv3 S: all u:User | u not u.sees	all u:User | a:Ad | u sees a
inv3 S: all u:User | u.follows.posts	all u:User | a:Ad | u.sees -> a
inv3 T: all u:User | u.follows.posts
inv3 T: all u:User | u.follows.posts
inv3 T: all u:User | u.follows.posts
inv3 T: all u:User | u.follows.posts
inv3 T: all u:User | u.follows.posts
inv3 T: all u:User | u.follows.posts
inv3 T: all u:User | u.follows.posts
inv3 T: all u:User | u.follows.posts
inv3 T: all u:User | u.follows.posts

---
inv3 T: all u:User | (u.sees - Ad) implies u.follows.posts
inv3 T: all u:User | (u.sees - Ad) -> u.follows.posts
inv3 T: all u:User | (u.sees - Ad) in posts -> u.follows.posts
inv3 T: all u:User | (u.sees - Ad) in posts -> u.follows.posts in posts
inv3 T: all u:User | u -> (u.sees - Ad) implies u -> u.follows.posts
inv3 T: all u:User | u -> (u.sees - Ad) in sees implies u -> u.follows.posts

---
inv4 S: all u:User | (i.posts & Ad) -> u.posts in Ad
inv4 T: all u:User | (u.posts & Ad) -> u.posts in Ad
inv4 T: all u:User | (u.posts & Ad) -> u.posts = Ad
inv4 T: all u:User | (u.posts & Ad) -> (u.posts = Ad)
inv4 S: all u:User | (u.posts & Ad) -> (all u.posts -> Ad)
inv4 T: all u:User | (u.posts & Ad) -> (u.posts -> Ad)
inv4 T: all u:User | (u.posts & Ad) implies u.posts -> Ad
inv4 T: all u:User | (u.posts & Ad) implies u.posts in Ad
inv4 T: all u:User | (u.posts & Ad) implies u.posts -> Ad
inv4 S: all u:User | (u.posts & Ad) in Photos implies u.posts in Ad

---
inv5 S: all Influencer:i | User:u | i in user.follows & u !=i
inv5 S: all Influencer:i | User:u | i in user.follows & u!=i
inv5 S: all Influencer:i | User:u | i in user.follows & u!=i
inv5 S: all Influencer:i | User:u | i in u.follows & u!=i
inv5 S: all Influencer:i | User:u | i in u.follows & u not i
inv5 S: all Influencer:i | User:u | i in u.follows & u != i

---
inv5 S: all Influencer:i | User:u |  u != i & i in u.follows
inv5 S: all Influencer:i | User:u | u not i & i in u.follows
inv5 S: all Influencer:i -> all  User:u | u != i -> i in u.follows
inv5 S: all Influencer:i ->   User:u | u != i -> i in u.follows
inv5 S: all Influencer:i ->   User:u | (u != i) -> i in u.follows
inv5 S: all Influencer:i |   User:u | (u != i) -> i in u.follows
inv5 S: all Influencer:i |   User:u | (u != i) implies i in u.follows
inv5 S: all Influencer:i ,  User:u | (u != i) => i in u.follows
inv5 S: all Influencer:i |  User:u | (u != i) => i in u.follows
inv5 S: all Influencer:i |  User:u | (u != i) -> i in u.follows
inv5 S: all Influencer:i |  User:u | (u != i) -> i in u.follows

---
inv8 S: all u,u2:User , a:Ad | u-> a in sees iff u2-> in posts && u2 in (u.follows || u.suggested )
inv8 T: all u,u2:User , a:Ad | u -> a in sees iff u2 -> a in posts && u2 in (u.follows || u.suggested )
inv8 T: all u,u2:User , a:Ad | u -> a in sees iff ((u2 -> a in posts ) && (u2 in (u.follows || u.suggested )))
inv8 T: all u,u2:User , a:Ad | u -> a in sees implies ((u2 -> a in posts ) && (u2 in (u.follows || u.suggested )))
inv8 S: all u,u2:User , a:Ad | u -> a in sees implies ((u2 -> a in posts) && (u->u1 in follows || u->u1 in suggested)))
inv8 S: all u:User , a:Ad | u -> a in sees implies (some u2: User (u2 -> a in posts) && (u2 in (u.follows || u.suggested)))
inv8 T: all u:User , a:Ad | u -> a in sees implies (some u2: User| (u2 -> a in posts) && (u2 in (u.follows || u.suggested)))
inv8 S: all u:User , a:Ad | u -> a in sees implies (some u2: User | u2 -> a in posts && (u->u2 in follows || u->u2 in suggested)) )

---
inv3 S: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all follows.Ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad : univ | sees.ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | sees.ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | u.sees.ad
inv3 S: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | ad in Ad immplies ad in u.sees

---
inv7 T: all u: User | follows-u.follows.u in suggested.u
inv7 S: all u: User |
inv7 S: all u: User |
inv7 S: all u: User |
inv7 S: all u: User |
inv7 S: all u: User |
inv7 S: all u: User |
inv7 S: all u: User |

---
inv3 T: all u : User, p : Photo - Ad | u.follows.posts.p
inv3 T: all u : User, p : Photo - Ad | u.posts.p
inv3 T: all u : User, p : Photo - Ad | u & posts.p
inv3 T: all u : User, p : Photo - Ad | u.follows & posts.p
inv3 T: all u : User, p : Photo - Ad | u.follows & sees.p
inv3 T: all u : User, p : Photo - Ad | u.follows.posts & sees.p

---
inv4 S: all u : User | all (u.posts & Ad)
inv4 S: all u : User |  (u.posts & Ad) + (u.posts & not Ad)
inv4 T: all u : User | (u.posts & Ad) + (no u.posts & Ad)
inv4 T: all u : User | (u.posts - Ad) + (no u.posts - Ad)
inv4 T: all u : User | (u.posts - Ad) or (no u.posts - Ad)
inv4 T: all u : User | (u.posts - Ad) + (no u.posts - Ad)
inv4 T: all u : User | (u.posts - Ad) + (u.posts - Ad)
inv4 S: all u : User | (u.posts - Ad) + no (u.posts - Ad)
inv4 T: all u : User | (no iden & posts - Ad) or (no u.posts - Ad)

---
inv6 T: all x : Influencer | all d : Day | d implies posts.x
inv6 T: all x : Influencer | all d : Day | d implies x.posts
inv6 T: all x : Influencer | all d : Day | x.posts & d
inv6 T: all x : Influencer | all d : Day | x.posts & d.date
inv6 T: all x : Influencer | all d : Day | x.posts & d

---
inv6 S: all x : Influencer | all d : Day | some p : Photo | x->p in day
inv6 S: all x : Influencer | all d : Day | some p : Photo | x->p in day
inv6 T: all x : Influencer | all d : Day | some p : Photo | x->p in d
inv6 T: all x : Influencer | all d : Day | some p : Photo | p->x in d
inv6 T: all x : Influencer | all d : Day | some p : Photo | p->x in d

---
inv1 S: all x : Photo | some y : User | y->x in one posts
inv1 S: x in User x.posts
inv1 S: x in User implies one x.posts
inv1 T: all x : User | one Photo.x
inv1 T: all x : User | Photo.x = 1
inv1 T: all x : Photo | x.posts

---
inv6 S: all i : Influencer | all p : Photo | all date.p.i
inv6 S: all i : Influencer | all date.posts.i
inv6 S: all i : Influencer | all date.posts.i
inv6 S: all i : Influencer | all date.posts.i
inv6 S: all i : Influencer | all date.posts.i
inv6 S: all i : Influencer | all date.posts.i
inv6 S: all i : Influencer | all date.posts.i

---
inv1 S: all User : u | one  u.posts
inv1 S: all User : u | one u.posts
inv1 S: all User : u | one u.posts
inv1 S: all Photo : p | one posts.p
inv1 S: all Photo : p | one u: User | p in u.posts

---
inv4 T: all x : User | one x.posts in Ad => (all y : x.posts | y in Add)
inv4 T: all x : User | some x.posts in Ad => (all y : x.posts | y in Add)
inv4 T: all x : User | some x.posts in Ad => all y : x.posts | y in Ad
inv4 S: all x : User | some x.posts in Ad | all y : x.posts | y in Ad
inv4 T: all x : User | one x.posts in Ad => ( all p : x.posts | p in Ad)
inv4 T: all x : User | one x.posts in Ad => ( all p : x.posts | p in Ad)
inv4 T: all x : User | one x.posts in Ad and ( all p : x.posts | p in Ad)
inv4 T: all x : User | one x.posts in Ad

---
inv3 S: all x:User, all p:Photo| x.sees.p in follows && p not in Ad
inv3 S: all x:User, all p:Photo| x.sees.p in follows && p not Ad
inv3 S: all x:User, all p:Photo| x.sees.p in follows
inv3 S: all x:User, all p:Photo| x in sees.p.follows not Ad
inv3 S: all x:User, all p:Photo| x in sees.p.follows
inv3 S: all x:User, all p:Photo| x in sees.p
inv3 S: all x:User, all p:Photo| x.sees in follows.p
inv3 S: all x:User, all p:Photo| x.sees in p.posts
inv3 S: all x:User, all p:Photo| x.sees-Ad in x.follows.posts

---
inv4 S: all u1 : User | one add : Ad | add in u1.posts | all ph : Photo | ph in u1.posts	implies ph in Ad
inv4 S: (all u1 : User | one add : Ad | add in u1.posts | all ph : Photo | ph in u1.posts)	implies ph in Ad
inv4 S: (all u1 : User | one add : Ad | add in u1.posts | all ph : Photo | ph in u1.post)	implies ph in Ad
inv4 S: (all u1 : User | one add : Ad | add in u1.posts )	implies ph in Ad
inv4 S: (all u1 : User | one add : Ad | add in u1.posts | all ph : Photo )	implies ph in Ad
inv4 S: (all u1 : User | one add : Ad | all ph : Photo | ph in u1.posts)	implies ph in Ad
inv4 S: (all u1 : User | one add : Ad  | all ph : Photo | ph in u1.posts)	implies ph in Ad
inv4 S: (all u1 : User  | all ph : Photo | ph in u1.posts)	implies ph in Ad
inv4 S: (all u1 : User | one add : Ad | add in u1.posts | all ph : Photo | ph in u1.posts)	implies ph in Ad
inv4 S: (all u1 : User | one add : Ad | add in u1.posts | all ph : Photo | ph in u1.posts)	implies ph in Ad
inv4 S: (all u1 : User | one add : Ad | add in u1.posts | all ph : Photo | ph in u1.posts)	implies ph in Ad
inv4 S: (all u1 : User | one add : Ad | add in u1.posts | all ph : Photo | ph in u1.posts)	implies ph in Ad
inv4 S: (all u1 : User | one add : Ad | add in u1.posts | all ph : Photo | ph in u1.posts)	implies ph in Ad
inv4 S: (all u1 : User | one add : Ad | add in u1.posts | all ph : Photo | ph in u1.posts)	implies ph in Ad
inv4 S: (all u1 : User | one add : Ad | add in u1.posts | all ph : Photo | ph in u1.posts)	implies ph in Ad

---
inv3 T: all x : User | all y : x.sees| y not in Ad -> y in x.follows
inv3 T: all x : User | all y : x.sees | (y not in Ad) -> (y in x.follows)
inv3 S: all x : User | all y : x.sees | (y not Ad) -> (y in x.follows)
inv3 T: all x : User | all y : x.sees | (y != Ad) -> (y in x.follows)
inv3 T: all x : User | all y : x.sees | (y iff not Ad) -> (y in x.follows)
inv3 S: all x : User | all y : x.sees | (y not iff Ad) -> (y in x.follows)
inv3 T: all x : User | all y : x.sees | (y not in Ad) -> (y in x.follows)
inv3 T: all x : User | all y : x.sees | (y not in Ad) -> (y.posts in x.follows)
inv3 T: all x : User | all y : x.sees | (y not in Ad) -> (posts.y in x.follows)
inv3 T: all x : User | all y : x.sees | (y not in Ad) -> (posts.y in x.follows)
inv3 T: all x : User | all y : x.sees | (y not in Ad) -> (User.y in x.follows)
inv3 S: all x : User | all y : x.sees | (y not in Ad) -> (all z: (y in z.posts) in x.follows)
inv3 T: all x : User | all y : x.sees | some k : x.follows | (y not in Ad) -> (y in k.posts)

---
inv4 S: all x : User | (some y : y.posts | y in Ad) -> (all y : y.posts | y in Ad)
inv4 S: all x : User | (some y : y.posts | y in Ad) -> (all z : z.posts | z in Ad)
inv4 S: all x : User | ((some y : y.posts | y in Ad) -> (all z : z.posts | z in Ad) )
inv4 T: all x : User | (some y : x.posts | y in Ad) -> (all y : x.posts | y in Ad)
inv4 T: all x : User | (some y : x.posts | y in Ad) -> (x.posts in Ad)
inv4 T: all x : User | (some y : x.posts | y in Ad) -> (all z : x.posts | z in Ad)
inv4 T: all x : User | (some y : x.posts | y in Ad) -> (all z : x.posts | z in Ad)
inv4 T: all x : User | (some y : x.posts | y in Ad) -> (x.posts in Ad)
inv4 T: all x : User | (some y : x.posts | y in Ad) -> (x.posts in Ad)

---
inv4 S: all u : User | some a : Ad | u->a in posts implies all p : Photo | u->p in posts | p in Ad
inv4 S: all u : User | some a : Ad | u->a in posts implies (all p : Photo | u->p in posts | p in Ad)
inv4 S: all u : User | some a : Ad | u->a in posts | all p : Photo | u->p in posts implies  p in Ad
inv4 S: all u : User | some a : Ad | u->a in posts | implies all u.posts in Ad
inv4 S: all u : User | some a : Ad | u->a in posts | implies u.posts in Ad

---
inv3 S: all u : User | all p: Photo - Ads | u.follows.p
inv3 T: all u : User | all p: Photo - Ad | u.follows.p
inv3 T: all u : User | all p: Photo - Ad | p.follows.u
inv3 S: all u : User | all x.sees in x.follows.posts
inv3 S: all u : User | all x.sees in u.follows.posts
inv3 S: all u : User | all u.sees - Ad in u.follows.posts
inv3 S: all u : User | all u.sees - Ad in u.follows.posts

---
inv4 S: all user : User | (user.posts in Ad) or (user.posts in Photo and user.post not in Ad)
inv4 S: all user : User | (user.posts in Ad) or (user.posts in Photo and not user.post in Ad)
inv4 S: all user : User | (user.posts in Ad) or (none user.posts in Ad)
inv4 S: all user : User | some ad : Ad | (user-> ad in posts implies user.posts in Ad) or (none ad : Ad | user-> ad in posts)
inv4 S: all user : User | some ad : Ad | (user-> ad in posts implies user.posts in Ad)
inv4 S: all user : User | some ad : Ad | user-> ad in posts implies user.posts in Ad

---
inv3 S: all a:Ads, u, u2: Users, p: Photos | a in u.sees | u2.posts in u1.sees => u2 in u1.follows
inv3 S: all a:Ads, u, u2: Users, p: Photos | a in u.sees | u2.posts in u1.sees => u2 in u1.follows
inv3 S: all a:Ads, u, u2: Users, p: Photos | a in u.sees and u2.posts in u1.sees => u2 in u1.follows
inv3 S: all a:Ad, u, u2: Users, p: Photos | a in u.sees and u2.posts in u1.sees => u2 in u1.follows
inv3 S: all a:Ad, u, u2: User, p: Photo | a in u.sees and u2.posts in u1.sees => u2 in u1.follows

---
inv4 T: all u: User, a: Ad, p: Photo | u.posts = a => no u.posts=p
inv4 S: all u: User, a: Ad, p: Photo | u.posts = a => all u.posts=p
inv4 S: all u: User, a: Ad, p: Photo | u.posts = a =>  u.posts==p
inv4 S: all u: User, a: Ad, p: Photo | one u.posts = a =>  all u.posts=a
inv4 T: all u: User, a: Ad, p: Photo | one u.posts = a =>   u.posts=a
inv4 T: all u: User, a: Ad, p: Photo | one u.posts = a =>  no (u.posts= p)
inv4 T: all u: User, a: Ad, p: Photo | one u.posts = a implies  no (u.posts= p)
inv4 T: all u: User, a: Ad, p: Photo | one u.posts = a
inv4 T: all u: User, a: Ad, p: Photo | one u.posts=a
inv4 T: all u: User, a: Ad, p: Photo | one u.p=a
inv4 T: all u: User, a: Ad, p: Photo | one u.Photo=a
inv4 T: all u: User, a: Ad, p: Photo | one Photo=a
inv4 T: all u: User, a: Ad, p: Photo | one u. Photo=a
inv4 T: all u: User, a: Ad, p: Photo | one u.Photo
inv4 T: all u: User, a: Ad, p: Photo | one u.Photo

---
inv4 T: all u: User, a: Ad, p: Photo | one u.posts  =a
inv4 T: all u: User, a: Ad, p: Photo | one u.posts =a
inv4 T: all u: User, a: Ad, p: Photo | one u.a
inv4 S: all u: User, a: Ad, p: Photo | one u.pots.a
inv4 T: all u: User, a: Ad, p: Photo | one u.posts.a

---
inv7 S: all x: User | x.suggested in x->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x.follows->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x.follows->y.follows
inv7 S: all x,y: User | x.suggested in x^.follows.follows - x.follows

---
inv3 S: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all follows.Ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad : univ | sees.ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | sees.ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | u.sees.ad
inv3 S: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | ad in Ad immplies ad in u.sees

---
inv2 S: no -follows.follows
inv2 S: no -follows*follows
inv2 S: no (-follows)*follows
inv2 S: no (-follows) x follows
inv2 S: (-follows) x follows not in iden

---
inv5 S: all f : Influencer, u : Users | u.follows.f
inv5 S: all f : Influencer, u : Users | (u.follows).f
inv5 T: all f : Influencer, u : User | (u.follows).f
inv5 T: all f : Influencer, u : User | (u.follows).f
inv5 T: all f : Influencer, u : User | (follows.u).f
inv5 T: all f : Influencer, u : User | follows.u
inv5 T: all f : Influencer, u : User | (u.follows).u
inv5 S: all f : Influencer | u : User | (u.follows).u
inv5 T: all f : Influencer | all u : User | (u.follows).u
inv5 T: all i : Influencer | follows.i - i

---
inv8 T: all u : User | all p : Photo | p in (u.sees & Ad) implies (u.follows + u.suggested).posts.u
inv8 T: all u : User | all p : Photo | p in (u.sees & Ad) implies ((u.follows + u.suggested).posts).u
inv8 T: all u : User | u.sees & Ad
inv8 T: all u : User | u.sees & Ad
inv8 T: all u : User | u.sees

---
inv3 S: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all follows.Ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad : univ | sees.ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | sees.ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | u.sees.ad
inv3 S: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | ad in Ad immplies ad in u.sees

---
inv3 T: all x : Photo, y : User | y some sees.x & y not in Ad.x
inv3 T: all x : Photo, y : User | y some sees.x & y not in x.Ad
inv3 T: all x : Photo, y : User | y some sees.x
inv3 T: all x : Photo, y : User | x some sees.y
inv3 T: all x : Photo, y : User | y some folows.x
inv3 T: all x : Photo, y : User | y some follows.x

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv2 T: all u:User | not u.follows.u
inv2 T: all u:User | u not follows.u
inv2 T: all u:User | u->u not follows
inv2 T: all u:User | u->u not follows
inv2 T: all u:User | u->u not follows

---
inv8 T: all u:User | u.sees in Ad implies Ad in u.follows or u.suggested
inv8 T: all u:User | u.sees in Ad implies Ad in u.follows or u.suggested
inv8 T: all u:User | Ad in u.sees implies Ad in u.follows or u.suggested
inv8 T: all u:User | Ad in u.sees implies Ad in (u.follows.posts or u.suggested.posts)
inv8 T: all u:User | Ad & u.sees in (u.follows.posts or u.suggested.posts)

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv4 T: all x: User | (some x.posts in Ad => x.posts in Ad)
inv4 T: all x: User | (some x.posts in Ad) => x.posts in Ad
inv4 T: all x: User | (some (x.posts in Ad)) => x.posts in Ad
inv4 T: all x: User | (some (x.posts in Ad)) => x.posts in Ad
inv4 T: all x: User | (some (x.posts in Ad)) => x.posts in Ad
inv4 T: all x: User | (some (x.posts in Ad)) => x.posts in Ad
inv4 T: all x: User | (some (x.posts in Ad)) => x.posts in Ad

---
inv3 T: all x : User |  all y : Photo | x.sees in follows.x.y
inv3 T: all x : User |  all y : Photo | x.sees in follows.y.x
inv3 T: all x : User |  all y : Photo | x.follows
inv3 T: all x : User |  all y : Photo | follows.x
inv3 T: all x : User |  all y : Photo | x.sees in (y in x.follows)
inv3 T: all x : User |  all y : Photo | x.sees in (y in follows)
inv3 T: all x : User |  all y : Photo | x.sees in (y in follows.x)
inv3 T: all x : User |  all y : Photo | x.sees in (y -> x in follows)
inv3 T: all x : User |  all y : Photo | x.sees in (x -> y in follows)
inv3 T: all x : User |  all y : Photo | x.sees in (x -> y in follows)

---
inv4 S: all x : User |  all y : x.posts | one y in Ad implies all y in Ad
inv4 T: all x : User |  all y : x.posts | one y in Ad implies y in Ad
inv4 S: all x : User | one x.posts in Ad implies all x.posts in Ad
inv4 S: all x : User | one x.posts in Ad implies all x.posts in Ad
inv4 S: all x : User | one x.posts in Ad implies all x.posts in Ad
inv4 S: all x : User | one x.posts in Ad implies all x.posts in Ad

---
inv6 S: all i : Influencers, d: Day, p:Photo |
inv6 S: all i : Influencers, d: Day, p:Photo |
inv6 S: all i : Influencers, d: Day, p:Photo |
inv6 S: |
inv6 S: |
inv6 S: |
inv6 S: |
inv6 S: |

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv8 T: all u : User | u.sees.Ad in u.follows or u.suggested
inv8 T: all u : User | u.sees.Ad in (u.follows.posts.Ad or u.suggested.follows.posts.Ad)
inv8 T: all u : User | u.sees.Ad = (u.follows.posts.Ad or u.suggested.posts.Ad)
inv8 T: all u : User | all a : Ad | a in u.follows.posts or u.suggested.posts
inv8 T: all u : User | all a : Ad | a in u.follows.posts.Ad or u.suggested.posts.Ad
inv8 T: all u : User | all a : Ad | u.sees.a in u.follows.posts.Ad or u.suggested.posts.Ad
inv8 T: all u : User | u.sees.Photo.Ad
inv8 T: all u : User | u.sees.Ad
inv8 T: all a : Ad | User.sees.a

---
inv8 T: all u: User| all a: Ad  | u.sees.a implies a in u.follows.post + u.suggested.posts
inv8 T: all u: User| all a: Ad  | u.sees.a implies a in u.follows.post and u.suggested.posts
inv8 T: all u: User| all a: Ad  | u.sees.a implies a in u.follows.post
inv8 T: all u: User| all a: Ad | u.sees.a implies a in u.follows.post or a in u.suggested.posts
inv8 T: all u: User| all a: Ad | u.sees.a implies a in u.follows.posts or a in u.suggested.posts
inv8 S: all u: User| all a: Ad | u -> ad in sees implies a in u.follows.posts or a in u.suggested.posts

---
inv3 S: all u : User | no object.Ad in u.follows.posts
inv3 T: all u : User | no Ad in u.follows.posts
inv3 S: all u : User | not in Ad.sees in u.follows.posts
inv3 S: all u : User | not in Ad in u.follows.posts
inv3 S: all u : User | not in Ad in u.follows.posts
inv3 T: all u : User | all p : Photo | u -> p not in Ad in u.follows.posts
inv3 S: all u : User |p in Photos and p != Ad in u.follows.posts
inv3 S: all u : User | Ad != Root in u.follows.posts

---
inv5 S: all i : Influencer | all u : User | u -> i in follows
inv5 S: all i : Influencer | all u : User | u -> i in follows
inv5 S: all i : Influencer | all u : User | u -> i in follows
inv5 S: all i : Influencer | all u : User | u -u not in follow | u -> i in follows
inv5 S: all i : Influencer | all u : User | u -> u not in follow | u -> i in follows
inv5 S: all i : Influencer | all u : User | u -> u not in follows | u -> i in follows
inv5 S: all u : User | u -> u not in follows | u -> i in follows
inv5 S: all u : User | u -> u not in follows
inv5 S: all u : User | u -> u not in follows
inv5 S: all u : User | u -> u not in follows
inv5 S: all i : Influencer | all u : User | i -> i not in follows | u -> i in follows
inv5 S: all i : Influencer | all u : User | u -> i in follows
inv5 S: all i : Influencer | all u : User | u in i.follows
inv5 S: all u : User | u.follows in Influencer
inv5 S: all u : User | u.follows - u in Influencer
inv5 S: all u : User | u.follows - u in u.follows & Influencer
inv5 S: all u : User | u.follows - u in u.follows
inv5 S: all u : User | u.follows & u in u.follows
inv5 S: all i : Influencer | all u : User | u -> i in follows
inv5 S: all u : User | u.follows in Influencer
inv5 S: all i : INfluencer | univ -> i in follows
inv5 S: all i : Influencer | univ -> i in follows
inv5 S: all i : Influencer | univ -> i in follows

---
inv2 T: all u: User | no u.follows.u
inv2 T: all u: User | no u.follows.u
inv2 T: all u: User | no u.follows.u
inv2 T: all u: User | no u.follows.u
inv2 T: iden u
inv2 T: iden u.follows
inv2 T: iden follows
inv2 T: iden follows
inv2 T: iden follows.u
inv2 T: iden u.follows

---
inv2 T: iden & follows = none
inv2 T: (iden & follows) = none
inv2 T: (iden & follows) = none
inv2 T: (iden ) = none
inv2 T: (iden & follows) = univ
inv2 T: (iden & follows)
inv2 T: (follows) = none
inv2 T: follows = none
inv2 S: Follows = none
inv2 T: (iden & User.follows) = none

---
inv3 T: all u : User | all p : Photo in u.sees | p in Ad or some u1 : User | p in u1.post e u1 in u.follows
inv3 T: all u : User | all p : Photo in u.sees | p in Ad or some u1 : User | p in u1.post and u1 in u.follows
inv3 T: all u : User | all p : Photo in u.sees | p in Ad or some u1 : User | p in u1.post and u1 in u.follows
inv3 S: all u : User | all p : Photo | P in u.sees | p in Ad or some u1 : User | p in u1.post and u1 in u.follows
inv3 S: all u : User | all p : Photo | p in u.sees | p in Ad or some u1 : User | p in u1.post and u1 in u.follows
inv3 S: all u : User | all p : Photo | p in u.sees and p in Ad or some u1 : User | p in u1.post and u1 in u.follows

---
inv6 T: all d:Day, i : Influencer| some i.posts.date = d
inv6 S: all d:Day, i : Influencer| some i.posts.date == d
inv6 S: all  i : Influencer| all d:Day => some i.posts.date = d
inv6 T: all d: Day,i:Influencer| some i.posts.date.d
inv6 T: all d: Day, i:Influencer| some i.posts.date.d

---
inv4 S: all u: User | all p : u.posts | some p in Ad iff all p in Ad
inv4 T: all u: User | all p : u.posts | some p in Ad iff p in Ad
inv4 T: all u: User | all p : u.posts | (some p in Ad) iff (p in Ad)
inv4 T: all u: User | all p : u.posts | (some p in Ad) implies (p in Ad)
inv4 T: all u: User | all p : u.posts | all p2: u.posts| (some p in Ad) implies (p2 in Ad)
inv4 T: all u: User | all p : u.posts | (some p in Ad) implies (u.posts in Ad)

---
inv1 S: all p:Photo,x:User | posts(x,p) implies x in User
inv1 T: all p:Photo,x:User | x.posts(p) implies x in User
inv1 T: all p:Photo,x:User | p.posts(x) implies x in User
inv1 S: all p:Photo | posts(x,p) implies x in User
inv1 S: all p:Photo | posts(x,p) implies (x in User)
inv1 T: all p:Photo,x:User | x.posts(p) implies (x in User)

---
inv2 T: all u: User | no u in u.follows
inv2 T: all u: User | no u in u.follows
inv2 T: all u: User | no u in u.follows
inv2 T: all u: User | no u in u.follows
inv1 S: all: Photo| one posts.x
inv1 S: all: Photo|user one posts.x
inv1 S: all: Photo|x one posts.x
inv1 S: all: Photo| one posts.x
inv1 S: all: Photo| posts.x
inv1 S: all: Photo|user one x.posts
inv1 S: all: Photo|x one x.posts

---
inv2 S: no -follows.follows
inv2 S: no -follows*follows
inv2 S: no (-follows)*follows
inv2 S: no (-follows) x follows
inv2 S: (-follows) x follows not in iden

---
inv5 S: all f : Influencer, u : Users | u.follows.f
inv5 S: all f : Influencer, u : Users | (u.follows).f
inv5 T: all f : Influencer, u : User | (u.follows).f
inv5 T: all f : Influencer, u : User | (u.follows).f
inv5 T: all f : Influencer, u : User | (follows.u).f
inv5 T: all f : Influencer, u : User | follows.u
inv5 T: all f : Influencer, u : User | (u.follows).u
inv5 S: all f : Influencer | u : User | (u.follows).u
inv5 T: all f : Influencer | all u : User | (u.follows).u
inv5 T: all i : Influencer | follows.i - i

---
inv8 T: all u : User | all p : Photo | p in (u.sees & Ad) implies (u.follows + u.suggested).posts.u
inv8 T: all u : User | all p : Photo | p in (u.sees & Ad) implies ((u.follows + u.suggested).posts).u
inv8 T: all u : User | u.sees & Ad
inv8 T: all u : User | u.sees & Ad
inv8 T: all u : User | u.sees

---
inv2 S: all u : User , u2 : User | u.follows.x != u.follows.y
inv2 T: all u : User , u2 : User | u.follows.u != u.follows.u2
inv2 T: all u : User , u2 : User | User.follows.u != User.follows.u2
inv2 T: all u : User , u2 : User | User.follows.u != User.follows.u2
inv2 S: all u : User , u2 : User | follows.u != \\follows.u2

---
inv2 S: u.~u.folows in iden
inv2 S: u.~u.folows in iden
inv2 S: u.~u.folows in iden
inv2 S: u.u in iden
inv2 S: u.follows->u in iden

---
inv8 S: all u: User| a: Add| a in user.sees implies a in u.follows.posts or u.suggested.posts
inv8 S: all u: User| a: Add| a in u.sees implies a in u.follows.posts or u.suggested.posts
inv8 S: all u: User, a: Add| a in u.sees implies a in u.follows.posts or u.suggested.posts
inv8 T: all u: User, a: Ad | a in u.sees implies a in u.follows.posts or u.suggested.posts
inv8 T: all u: User, a: Ad | a in u.sees implies a in u.follows.posts or u.suggested.posts

---
inv8 S: all x : User | all a: Add | a in x.sees implies p.User | a in p.posts and p in (x.follows + x.suggested)
inv8 S: all x : User | all a: Add | a in x.sees implies some p.User | a in p.posts and p in (x.follows + x.suggested)
inv8 S: all x : User | all a: Add | a in x.sees implies some p.User | a in p.posts and p in (x.follows + x.suggested)
inv8 S: all x : User | all a: Ad | a in x.sees implies some p.User | a in p.posts and p in (x.follows + x.suggested)
inv8 S: all x : User | all a:Ad | a in x.sees implies some p.User | a in p.posts and p in (x.follows + x.suggested)

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv1 S: all x: Photo| same y:
inv1 S: all x: Photo| same y:
inv1 S: all x: Photo| same y:
inv1 S: all x: Photo| same y:
inv1 S: all x: Photo| same y:

---
inv6 T: all x : Influencer | x.posts.date
inv6 T: all x : Influencer | x.posts.date
inv6 T: all x : Influencer | x.posts.date
inv6 T: all x : Influencer | x.posts.date
inv6 T: all x : Influencer | x.posts.date
inv6 T: all x : Influencer | x.posts.date
inv6 T: all x : Influencer | x.posts.date
inv6 T: all x : Influencer | x.posts.date

---
inv2 S: no -follows.follows
inv2 S: no -follows*follows
inv2 S: no (-follows)*follows
inv2 S: no (-follows) x follows
inv2 S: (-follows) x follows not in iden

---
inv5 S: all f : Influencer, u : Users | u.follows.f
inv5 S: all f : Influencer, u : Users | (u.follows).f
inv5 T: all f : Influencer, u : User | (u.follows).f
inv5 T: all f : Influencer, u : User | (u.follows).f
inv5 T: all f : Influencer, u : User | (follows.u).f
inv5 T: all f : Influencer, u : User | follows.u
inv5 T: all f : Influencer, u : User | (u.follows).u
inv5 S: all f : Influencer | u : User | (u.follows).u
inv5 T: all f : Influencer | all u : User | (u.follows).u
inv5 T: all i : Influencer | follows.i - i

---
inv8 T: all u : User | all p : Photo | p in (u.sees & Ad) implies (u.follows + u.suggested).posts.u
inv8 T: all u : User | all p : Photo | p in (u.sees & Ad) implies ((u.follows + u.suggested).posts).u
inv8 T: all u : User | u.sees & Ad
inv8 T: all u : User | u.sees & Ad
inv8 T: all u : User | u.sees

---
inv1 T: all x : Photo | some y : User | y->x
inv1 T: all x : Photo | some y : User | y->x
inv1 T: all x : Photo | some y : User | y.posts->x
inv1 T: all x : Photo | some y : User | y.posts implies x
inv1 T: all x : Photo | (some y : User | y.posts implies x)

---
inv3 T: all u1,u2 : User, p: Photo | u1.sees.p and p not in Ad implies p in u2.posts and u2 in u1.follows
inv3 T: all u1,u2 : User, p: Photo | u1.sees.p and p not in Ad implies (p in u2.posts and u2 in u1.follows)
inv3 T: all u1,u2 : User, p: Photo | (u1.sees.p and p not in Ad) implies (p in u2.posts and u2 in u1.follows)
inv3 T: all u1,u2 : User, p: Photo | (u1.sees.p and (p not in Ad)) implies (p in u2.posts and u2 in u1.follows)
inv3 T: all u1,u2 : User, p: Photo | (u1.sees.p and (p not in Ad)) implies ((p in u2.posts) and (u2 in u1.follows))
inv3 T: all u1,u2 : User, p: Photo | (u1.sees.p and (p not in Ad)) implies ((p in u2.posts) and (u2 in u1.follows))

---
inv5 S: all u : User | u in follows.Influencer
inv5 S: all i : Influencer | all u : User | i != u implies i in u.follows
inv5 S: all i : Influencer | all u : User | i != u implies u->i in follows
inv5 S: all i : Influencer | all u : User | u->i in follows
inv5 S: all i : Influencer | all u : User | i != u implies u->i in follows

---
inv3 S: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all follows.Ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad : univ | sees.ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | sees.ad
inv3 T: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | u.sees.ad
inv3 S: all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows	all ad,u : univ | ad in Ad immplies ad in u.sees

---
inv6 S: all d : Day, i : Influencer |
inv6 S: all d : Day, i : Influencer |
inv6 S: all d : Day, i : Influencer |
inv6 S: all d : Day, i : Influencer |
inv6 S: all d : Day, i : Influencer |
inv6 S: all d : Day, i : Influencer |

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv2 T: all u : User | no u->u in follows
inv2 S: no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 T: all u : User | no u.follows.u
inv2 S: all u : User | not in u.follows.u

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv3 T: all u:User |  sees.follows in follows.u
inv3 T: all u:User | sees.follows in follows.u
inv3 T: all u:User | sees in follows.u
inv3 S: all u:User | sees in follows.p
inv3 S: all u:User | sees in follows.Photos
inv3 T: all u:User | sees in follows.Photo

---
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts + Ad))
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts + Ad))
inv3 T: all u: User, p: Photo | p in u.sees => p in (follows.posts + Ad)
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts + Ad))
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts ++ Ad))
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts ++ Ad))
inv3 T: all u: User, p: Photo | (p in u.sees) => (p in (follows.posts ++ Ad))
inv3 S: User, p: Photo | (p in u.sees) => (p in follows.posts || p in Ad)
inv3 S: User, p: Photo | (p in u.sees) -> (p in follows.posts || p in Ad)
inv3 S: all User, p: Photo | (p in u.sees) -> (p in follows.posts || p in Ad)
inv3 S: User, p: Photo | (p in u.sees) -> (p in follows.posts || p in Ad)
inv3 T: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.posts ++ Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts ++ Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))

---
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) implies (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) => (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) => (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) => (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, all p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all (u: User, p: Photo) | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts union Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts union Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts union Ad))
inv3 S: all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts union Ad))

---
inv3 S: all u1, u2 : User, p : Photo | u1 in sees.p | u2 in posts.p | u1 follows.u2
inv3 S: all u1, u2 : User, p : Photo | u1 in sees.p | u2 in posts.p | u1 follows.u2
inv3 S: all u1, u2 : User | all p : Photo | u1 in sees.p | u2 in posts.p | u1 follows.u2
inv3 S: all u1, u2 : User, p : Photo | u1 in sees.p | u2 in posts.p | u1 follows.u2
inv3 S: all u1, u2 : User, p : Photo | u1 in sees.p | u2 in posts.p | u1 follows.u2
inv3 S: all u1, u2 : User, p : Photo | u1 in sees.p | u2 in posts.p | u1 follows.u2
inv3 S: all u1, u2 : User, p : Photo | u1 in sees.p | u2 in posts.p | u1 follows.u2
inv3 S: all u1, u2 : User, p : Photo | u1 in sees.p | u2 in posts.p | u1 follows.u2
inv3 S: all u1, u2 : User, p : Photo | u1 in sees.p | u2 in posts.p | u1 follows.u2
inv3 S: all u1, u2 : User, p : Photo | u1 in sees.p | u2 in posts.p | u1 follows.u2

---
inv3 T: all u:User | (u.follows.posts in u.sees) not in u.sees.ad
inv3 T: all u:User | (u.follows.posts in u.sees) not in u.sees.Ad
inv3 T: all u:User | (u.follows.posts in u.sees) not in u.sees.Ad
inv3 T: all u:User | (u.follows.posts in u.sees) not in u.sees.posts.Ad
inv3 T: all u:User | (u.follows.posts in u.sees) not in u.sees.posts.ad

---
inv4 S: all u:User | u.posts.ad implies u.posts.photo in u.posts.ad
inv4 S: all u:User | u.posts.ad implies u.posts.photo in u.posts.Ad
inv4 T: all u:User | u.posts.Ad implies u.posts.photo in u.posts.Ad
inv4 S: all u:User | u.posts.photo.Ad implies u.posts.photo in u.posts.Ad
inv4 T: all u:User | u.posts.Photo.Ad implies u.posts.photo in u.posts.Ad
inv4 T: all u:User | u.posts.Photo.Ad implies u.posts.Photo in u.posts.Photo.Ad

---
inv4 S: all u : User | all p : u.posts | p in Ad implies all p : Ad
inv4 S: all u : User | u.posts in Ad or not u.post and Ad
inv4 T: all u : User | u.posts in Ad or not u.posts and Ad
inv4 T: all u : User | u.posts in Ad or not u.posts & Ad
inv4 T: all u : User | u.posts in Ad or no u.posts and Ad

---
inv7 S: all x: User | x.suggested in x->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x.follows->y.follows - x.follows
inv7 T: all x,y: User | x.suggested in x.follows->y.follows
inv7 S: all x,y: User | x.suggested in x^.follows.follows - x.follows

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
inv1 S: all p: Photo, some u: User | p in u.posts
inv1 S: all p: Photo some u: User | p in u.posts
inv1 S: all p: Photo, some u: User | p in lone u.posts
inv1 S: all p: Photo, some u: User | p in (lone u.posts)
inv1 S: all p: Photo, some u: User | p in (one u.posts)
inv1 S: all p: Photo, some u: User | p in (one u.posts);
inv1 S: all p : Photo, some u : User | p in (one u.posts);
inv1 S: all p : Photo, some u : User | p in (one u.posts)
inv1 S: all p : Photo, some u : User | u.posts
inv1 S: all p : Photo, some u : User | u.posts

---
inv1 T: User.posts and Influencer.post != none
inv1 S: some User.posts or Influencer.post
inv1 T: some User.posts or Influencer.posts
inv1 T: User.posts or Influencer.posts
inv1 T: one (User.posts or Influencer.posts)

---
inv1 S: all p: Photo, all a: Ad | one (posts.p or posts.ad)
inv1 S: all p: Photo, all a: Ad | one (posts.p or posts.a)
inv1 S: all p: Photo, all a: Ad | one (posts.p || posts.a)
inv1 S: all p: Photo, all a: Ad | one (posts.p & posts.a)
inv1 S: all p: Photo, all a: Ad | one posts.p or one posts.a

---
inv3 T: User.sees & User.follows.posts
inv3 T: all u:User | u.sees & u.follows.posts
inv3 T: all u: User | u.sees implies u.follows.posts
inv3 T: all u: User | u.sees implies u.follows
inv3 S: all u: User | all (u.sees & u.follows.posts)

---
inv4 S: some u: User one a: Ad | u.posts.a implies u.posts = Ad
inv4 S: some u: User one a: Ad | u.posts = a implies u.posts = Ad
inv4 S: some u: User one a: Ad | (u.posts == a) implies (all u.posts in Ad)
inv4 S: some u: User, one a: Ad | (u.posts == a) implies (all u.posts in Ad)
inv4 S: some u: User, one a: Ad | (u.posts.a) implies (all u.posts in Ad)
inv4 S: some u: User, one a: Ad | (u->a) implies (all u.posts in Ad)
inv4 S: some u: User, one a: Ad | (u->a) implies (u.posts in Ad)
inv4 S: User.posts == Ad implies (User.posts' == Ad)
inv4 S: (User.posts == Ad) implies (User.posts' == Ad)
inv4 T: all u: User | (u.posts in Ad) implies (no u.posts in Photo)
inv4 S: some u: User | some (u.posts == Ad) and after no u.posts == Ad
inv4 S: some u: User | some (u.posts == Ad) and after (no u.posts == Ad)
inv4 S: some u: User | some (u.posts == Ad) and after (no (u.posts == Ad))

---
inv3 S: all
inv3 S: all
inv3 S: all
inv3 S: all
inv3 S: all

---
inv3 S: all x,y : User | all p in x.sees | (p in y.posts & x->y in follows) or p in Ad
inv3 T: all x,y : User | all p : Photo in x.sees | (p in y.posts & x->y in follows) or p in Ad
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows) or p in Ad
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows)
inv3 S: all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | some y : User | all p : in x.sees | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : in x.sees | some y : User | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : in x.sees | some y : User | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : Photo | all p in x.sees | some y : User | (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : Photo | some y : User | all p in x.sees & (p in y.posts & x->y in follows) or (p in Ad)
inv3 S: all x : User | all p : Photo | all p in x.sees & (p in x.follows.posts) or (p in Ad)
inv3 S: all x : User | all p : Photo | all p in x.sees & (p in x.follows.posts) or (p in Ad)

---
inv7 S: all x: User | all y: x.follows | p:User in x.suggested implies (p in y.follows) and (p not in x.follows)
inv7 S: all x,y: User | y in x.suggested implies some p:User | (p in (x.follows).follows) and (p not in x.follows)
inv7 S: all x,y: User | y in x.suggested implies some p:User | p in (x.follows).follows and (p not in x.follows)
inv7 S: all x,y: User | y in x.suggested implies some p:User | p in (x.follows).follows and (p not in x.follows)
inv7 S: all x,y: User | y in x.suggested implies some p:User | p in (x.follows).follows - x.follows - x and (p not in x.follows)
inv7 S: all x: User | x.suggested = (x.follows).follows - x.follows - x
inv7 S: all x: User | x.suggested = (x.follows).follows-x.follows-x

---
inv4 S: all x:User| x.posts in Ad implies x.posts==Ad
inv4 S: all x:User| some a:Ad| a in u.posts implies x.posts in Ad
inv1 T: all p : Photo | one post: User.posts | p in posts
inv1 T: all p : Photo | one post: User->posts | p in posts
inv1 T: all p : Photo | one post: User->posts | p in posts
inv1 T: all p : Photo | one post: User->posts | p in posts
inv1 T: all p : Photo | one post: User->posts | p in post

---
inv6 S: all i : Influencer | all d : Date | some p : i.posts | p->d in Day
inv6 T: all i : Influencer | all d : Day | some p : i.posts | p->d in Day
inv6 T: all i : Influencer | all d : Day | some p : i.posts | p->d in Day
inv6 T: all i : Influencer | all d : Day | some p : i.posts | p->d in Day
inv6 T: all i : Influencer | all d : Day | some p : i.posts | p->d in Day
inv6 T: all i : Influencer | all d : Day | some p : i.posts | p.d in Day
inv6 T: all i : Influencer | all d : Day | some p : i.posts | d->p in Day
inv6 T: all i : Influencer | all d : Day | some d->i.posts in Day
inv6 T: all i : Influencer | all d : Day | some d->(i.posts) in Day
inv6 T: all i : Influencer | all d : Day | some d->(i.posts) in Day

---
inv7 S: all u : Users | all s : u.suggested | s not in u.followed and some ufoll in u.followed | s in ufoll.followed
inv7 S: all u : Users | all s : u.suggested | s not in u.followed and some ufoll in u.followed | s in ufoll.followed
inv7 S: all u : Users | all s : u.suggested | s not in u.followed and (some ufoll in u.followed | s in ufoll.followed)
inv7 S: all u : Users | all s : u.suggested | some ufoll in u.followed | s not in u.followed and s in ufoll.followed
inv7 S: all u : Users | all s : u.suggested | some ufoll in u.followed | s not in u.followed and s in ufoll.followed
inv7 S: all u : Users | all s : u.suggested | some ufoll : u.followed | s not in u.followed and s in ufoll.followed
inv7 S: all u : User | all s : u.suggested | some ufoll : u.followed | s not in u.followed and s in ufoll.followed
inv7 S: all u : User | all s : u.suggested | some ufoll : u.follows | s not in u.followed and s in ufoll.follows

---
inv8 T: all u : User | all a : u.sees & Ad | a->User in (u.follows + u.suggested)
inv8 T: all u : User | all a : u.sees & Ad | User.a in (u.follows + u.suggested)
inv8 S: all u : User | all a : u.sees & Ad | all User.a in (u.follows + u.suggested)
inv8 S: all u : User | all a : u.sees & Ad | all User.a in (u.follows + u.suggested)
inv8 T: all u : User | all a : u.sees & Ad | all uad : User.a | uad in (u.follows + u.suggested)
inv8 T: all u : User | all a : u.sees & Ad | all uad : a->User | uad in (u.follows + u.suggested)

---
inv4 T: all u:User | one u.posts in Ad => u.posts in Ad
inv4 T: all u:User | some u.posts in Ad => u.posts in Ad
inv4 T: all u:User| one u.posts in Ad => u.posts in Ad
inv4 T: all u:User| one u.posts in Ad => u.posts in Ad
inv4 T: all u:User| one u.posts in Ad => u.posts in Ad

---
inv6 S: all d:Day , u.Influencer| d in i.posts.date
inv6 S: all d:Day , u.Influencer| d in i.posts.date
inv6 S: all d:Day, i.Influencer| d in i.posts.date
inv6 S: all d:Day, i.Influencer| d in i.posts.date
inv6 S: all d:Day, i.Influencer| d in i.posts.date

---
inv7 S: all u:Users| u.suggested = u.follows.follows - u.follows
inv7 S: all u:Users| u.suggested = u.follows.follows - u.follows - u
inv7 S: all u:Users| u.suggested = u.follows.follows - u.follows - u
inv7 S: all u:Users| u.suggested = u.follows.follows - u.follows - u
inv7 S: all u:Users| u.suggested = u.follows.follows - u.follows - u

---
inv2 S: all x,y : User | x == y implies x no follows.y
inv2 T: all x,y : User | x = y implies x no follows.y
inv2 S: all x,y : User | x == y implies x no follows.y
inv2 S: all x,y : User | x == y implies x not in follows.y
inv2 S: all x,y : User | x == y implies x not in follows.y

---
inv3 T: all u : User | all p : Photo | u.sees.p implies p in u.follows.posts or p in Ad
inv3 T: all u : User | all p : Photo | u.sees.p implies p in u.follows.posts or p in Ad is Ad
inv3 T: all u : User | all p : Photo-Ad | u.sees.p implies p in u.follows.posts
inv3 T: all u : User | all p : Photo-Ad | p in u.sees implies p in u.follows.posts or p is Ad
inv3 T: all u : User | all p : Photo | p in u.sees implies p in u.follows.posts or p is Ad

---
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies	ph2 in Ad
inv4 S: all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad	implies ph2 in Ad
inv4 S: all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)

---
inv4 S: all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |
inv3 S: all u : User |

---
inv5 S: all t : Track | t in Junction iff some disj x,y in t.(~succs)
inv5 S: all t : Track | t in Junction iff some disj x,y | t.(~succs)
inv5 T: all t : Track | t in Junction iff some disj x,y : Track | t.(~succs)
inv5 S: all t : Track | t in Junction iff some disj x,y : t.(~succs)
inv5 S: all t : Track | t in Junction iff (some disj x,y : t.(~succs))
inv5 S: all t : Track | t in Junction iff (some disj x,y : t.(~succs) |)

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv1 T: all t : Track| some e : Entry | some ex: Exit | e&t and	t in Exit and t in Entry
inv3 T: all t : Exit | not t.succs
inv3 T: all t : Track | no t.succs implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 T: all t : Exit | not t.succs
inv3 T: all t : Track | no t.succs implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit

---
inv5 S: all t : Track | t in Junction iff some disj x,y in t.(~succs)
inv5 S: all t : Track | t in Junction iff some disj x,y | t.(~succs)
inv5 T: all t : Track | t in Junction iff some disj x,y : Track | t.(~succs)
inv5 S: all t : Track | t in Junction iff some disj x,y : t.(~succs)
inv5 S: all t : Track | t in Junction iff (some disj x,y : t.(~succs))
inv5 S: all t : Track | t in Junction iff (some disj x,y : t.(~succs) |)

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 T: all t : Exit | not t.succs
inv3 T: all t : Track | no t.succs implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 T: all e : Exit | none e.succs
inv3 T: all e : Exit | none (e.succs)
inv3 T: all e : Exit | none e.succs
inv3 S: all e : Exit iff none e.succs
inv3 T: all e : Track | e in Exit iff none e.succs
inv3 T: all t : Track | t in Exit implies none t.succs
inv3 S: all t : Track | t in Exit implies (none t.succs)
inv3 S: all t : Track | t in Exit iff (none t.succs)
inv3 S: all t : Track | t in Exit iff (none succs.t)
inv3 T: all t : Track | t in Exit iff none t.succs
inv3 T: all t : Track | t in Exit iff none succs.t

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv5 S: Junctions = all t : Track | some succ.t
inv5 S: Junctions = all t : Track | lone succ.t
inv5 S: Junctions = all t : Track | succ.t
inv5 S: Junctions in all t : Track | succ.t
inv5 S: all j : Junction | some succ.j

---
inv5 S: Junction = Track.(Track set -> not lone Track)
inv5 S: Junction = Track.(Track set -> not lone Track)
inv5 S: Junction = Track.{Track set -> not lone Track}
inv5 S: Junction = Track.(succs & Track set -> not lone Track)
inv5 S: Junction = Track.(succs & Track set -> lone Track)

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all exit : univ | exit in Exit implies none track : Track | track->exit in succs
inv3 S: all exit : univ | exit in Exit implies none track : Track | track->exit in succs
inv3 T: all exit : univ | exit in Exit implies none exit.*(succs)
inv3 T: all exit : univ | exit.succs
inv3 T: all exit : univ | exit in Exit implies none exit.succs
inv3 S: all exit : univ | exit in Exit implies none track : Track | track in exit.^(succs)
inv3 S: all exit : univ | exit in Exit implies none track : Track | track in exit.succs

---
inv3 T: all t : Exit | not t.succs
inv3 T: all t : Track | no t.succs implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv1 T: some Exit in Track	some Entry in Track
inv1 S: for t : Track | some t in Entry and some t in Exit
inv1 T: all t : Track | some t in Entry and some t in Exit
inv1 S: all t : Track | some t in Entry
inv1 S: some Exit
inv1 S: some Exit
inv1 S: some Exit

---
inv1 T: all en: Entry, ex: Exit | no en not in Track and no ex not in Track
inv1 T: all en: Entry, ex: Exit | some en in Track
inv1 S: all en: Entry, ex: Exit | some no en not in Track
inv1 T: all en: Entry, ex: Exit | no en not in Track and ex not in Track
inv1 T: all en: Entry, ex: Exit | no en not in Track and ex not in Track
inv1 T: all en: Entry, ex: Exit | no en not in Track and ex not in Track
inv1 T: all en: Entry, ex: Exit | no en not in Track and ex not in Track
inv1 T: all en: Entry, ex: Exit | no en not in Track and ex not in Track
inv1 T: all en: Entry, ex: Exit | no en not in Track and ex not in Track
inv1 T: all en: Entry, ex: Exit | no en not in Track and ex not in Track
inv1 T: all en: Entry, ex: Exit | no en not in Track and ex not in Track

---
inv3 T: all t : Exit | not t.succs
inv3 T: all t : Track | no t.succs implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 T: all e : Exit | none e.succs
inv3 T: all e : Exit | none (e.succs)
inv3 T: all e : Exit | none e.succs
inv3 S: all e : Exit iff none e.succs
inv3 T: all e : Track | e in Exit iff none e.succs
inv3 T: all t : Track | t in Exit implies none t.succs
inv3 S: all t : Track | t in Exit implies (none t.succs)
inv3 S: all t : Track | t in Exit iff (none t.succs)
inv3 S: all t : Track | t in Exit iff (none succs.t)
inv3 T: all t : Track | t in Exit iff none t.succs
inv3 T: all t : Track | t in Exit iff none succs.t

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 T: no succs in Exit
inv3 T: succs not in Exit
inv3 S: succs in Exit no
inv3 S: succs in Exit lone
inv3 T: not some succs in Exit
inv3 S: all e:Exit | not some t:Track | e->t in succ

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 T: all t : Exit | not t.succs
inv3 T: all t : Track | no t.succs implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit

---
inv3 S: all tr : Exit implies (no tr.succs or (tr in Entry and tr in junction and tr in tr.succs)
inv3 S: all tr : Exit implies (no tr.succs or (tr in Entry and tr in junction and tr in tr.succs) )
inv3 S: all tr : Exit implies (no tr.succs or (tr in Entry and tr in junction and tr in tr.succs))
inv3 S: all tr : Exit implies (no tr.succs or (tr in Entry and tr in Junction and tr in tr.succs))
inv3 S: all tr : Exit implies (no tr.succs or tr in Entry )

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 T: all e : Exit | none e.succs
inv3 T: all e : Exit | none (e.succs)
inv3 T: all e : Exit | none e.succs
inv3 S: all e : Exit iff none e.succs
inv3 T: all e : Track | e in Exit iff none e.succs
inv3 T: all t : Track | t in Exit implies none t.succs
inv3 S: all t : Track | t in Exit implies (none t.succs)
inv3 S: all t : Track | t in Exit iff (none t.succs)
inv3 S: all t : Track | t in Exit iff (none succs.t)
inv3 T: all t : Track | t in Exit iff none t.succs
inv3 T: all t : Track | t in Exit iff none succs.t

---
inv9 T: all t : Track | one j : Junction | j in t.succs implies (no s : Semaphore | t.signals)
inv9 T: all t : Track | one j : Junction | j in t.succs implies (no s : Semaphore | t.signals)
inv9 S: all t : Track | one j : Junction | j in t.succs implies (none s : Semaphore | t.signals)
inv9 S: all t : Track, j : Junction | j in t.succs implies (none s : Semaphore | t.signals)
inv9 T: all t : Track, j : Junction | j not in t.succs implies (no Semaphore in t.signals)

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv2 S: one signal -> some Track
inv2 T: Signal one -> some Track
inv2 S: one Signal -> some Track
inv2 T: one Signal in Track
inv2 T: one Signal in Track
inv2 S: one Signal in one Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 T: all t : Exit | not t.succs
inv3 T: all t : Track | no t.succs implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 T: all e : Exit | none e.succs
inv3 T: all e : Exit | none (e.succs)
inv3 T: all e : Exit | none e.succs
inv3 S: all e : Exit iff none e.succs
inv3 T: all e : Track | e in Exit iff none e.succs
inv3 T: all t : Track | t in Exit implies none t.succs
inv3 S: all t : Track | t in Exit implies (none t.succs)
inv3 S: all t : Track | t in Exit iff (none t.succs)
inv3 S: all t : Track | t in Exit iff (none succs.t)
inv3 T: all t : Track | t in Exit iff none t.succs
inv3 T: all t : Track | t in Exit iff none succs.t

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all t,e:Track| t->e in succs t in Entry
inv3 S: all t,e:Track| t->e in succs t in Entry
inv3 S: all t,e:Track| t->e in succs t in Entry
inv3 S: all t,e:Track| t->e in succs t in Entry
inv3 S: all t,e:Track| t->e in succs t in Entry

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv6 S: all s: speed | one signals.s in Entry
inv6 T: all s: Speed | one signals.s in Entry
inv6 S: all s: Speed, all e: Entry | one signals.s in e
inv6 T: all s: Speed | Entry implies one signals.s
inv6 T: all s: Speed | Entry.signals.s
inv6 T: one Entry.signals.Speed
inv6 T: one Entry.signals in Speed
inv6 T: all e: Entry | e implies signals.Speed

---
inv6 T: all e: Entry | e.signals in Signal implies signals.Speed
inv6 T: all e: Entry | one e.signals.Speed
inv6 T: Entry.signals.Speed
inv6 T: one Entry.signals.Speed
inv6 T: one Entry.signals and signals.Speed

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all e : univ | e : Exit iff all t : Track | not e->t in succs
inv3 S: all e : univ | e : Exit iff all t : Track | not (e->t in succs)
inv3 S: all e : univ | e : Exit iff all t : univ | t in Track not (e->t in succs)
inv3 S: all e : univ | e : Exit iff all t : univ | t in Track and not e->t in succs
inv3 S: all e : univ | e : Exit (iff all t : univ | t in Track and not e->t in succs)
inv3 S: all e : univ | e : Exit iff all t : univ | t in Track and not e->t in succs
inv3 S: all e : univ | e : Exit iff all t : univ | t in Track and e->t not in succs
inv3 S: all e : univ | e : Exit iff all t : univ | t in Track and e->t not in succs
inv3 S: all e : univ | e : Exit iff (all t : univ | t in Track and e->t not in succs)
inv3 S: all e : univ | e : Exit

---
inv4 S: e:Entry iff no e in Track.succs
inv4 S: e:Entry iff no e in Track.succs
inv4 S: e:Entry iff no e in Track.succs
inv4 S: e:Entry iff no e in Track.succs
inv4 S: e:Entry iff no e in Track.succs
inv4 S: e:Entry iff no e in Track.succs
inv4 S: e:Entry iff no e in Track.succs
inv4 S: e:Entry iff no e in Track.succs

---
inv3 T: all t : Track | not t.succs implies t = Exit
inv3 T: all t : Track | not t.succs implies t in Exit
inv3 S: all t : Track | no t.succs implies Exit
inv3 T: all t : Track | not t.succs implies t in Exit
inv3 T: all t : Track | not t.succs implies Exit
inv3 T: all t : Track | not t.succs implies t=Exit

---
inv1 S: all x: Track | some x.succs in Entry | some x.succs in Exit
inv1 S: all x: Track | some x.succs in Entry | some x.succs in Exit
inv1 T: all x: Track | one x.Entry
inv1 S: all x: Track | one x.Entry & one x.Exit
inv1 S: all x:Track | some x.succs in Entry | some x.succs in Exit

---
inv1 S: all t : Track, en : Entry, ex : Exit | some en in t && some ex in t
inv1 S: all t : Track, en : Entry, ex : Exit | some en in t.succs && some ex in t.succs
inv1 S: all t : Track| some t.succs in Entry	all t : Track| some t.succs in Exit
inv1 S: all t : Track| some t.succs & Entry	all t : Track| some t.succs & Exit
inv1 S: some t : Track| t in Entry	some t : Track| t in Exit
inv1 S: some t : Track| t in Entry	some t : Track| t in Exit

---
inv1 T: all en: Entry, ex: Exit | no en not in Track and no ex not in Track
inv1 T: all en: Entry, ex: Exit | some en in Track
inv1 S: all en: Entry, ex: Exit | some no en not in Track
inv1 T: all en: Entry, ex: Exit | no en not in Track and ex not in Track
inv1 T: all en: Entry, ex: Exit | no en not in Track and ex not in Track
inv1 T: all en: Entry, ex: Exit | no en not in Track and ex not in Track
inv1 T: all en: Entry, ex: Exit | no en not in Track and ex not in Track
inv1 T: all en: Entry, ex: Exit | no en not in Track and ex not in Track
inv1 T: all en: Entry, ex: Exit | no en not in Track and ex not in Track
inv1 T: all en: Entry, ex: Exit | no en not in Track and ex not in Track
inv1 T: all en: Entry, ex: Exit | no en not in Track and ex not in Track

---
inv3 T: all e : Exit | none e.succs
inv3 T: all e : Exit | none (e.succs)
inv3 T: all e : Exit | none e.succs
inv3 S: all e : Exit iff none e.succs
inv3 T: all e : Track | e in Exit iff none e.succs
inv3 T: all t : Track | t in Exit implies none t.succs
inv3 S: all t : Track | t in Exit implies (none t.succs)
inv3 S: all t : Track | t in Exit iff (none t.succs)
inv3 S: all t : Track | t in Exit iff (none succs.t)
inv3 T: all t : Track | t in Exit iff none t.succs
inv3 T: all t : Track | t in Exit iff none succs.t

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv5 T: all t : Track | t in Junction <=> lone t in Track
inv5 T: all t : Track | t in Junction <=> lone t in Track
inv5 T: all t : Track | t in Junction <=> lone t in Track
inv5 T: all t : Track | t in Junction <=> lone t in Track
inv5 T: all t : Track | t in Junction <=> lone t in Track
inv5 T: all t : Track | t in Junction <=> lone t in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv9 T: all t: Track |  not (some t.^(succs) && Junction)
inv9 S: all t:Track | t in Exit || (t not in succs.Junction) => t.signals in Semaphore	}
inv9 S: all t:Track, j : Junction |  (t not in succs.j) => t.signals in Semaphore	}
inv9 S: all t:Track 1  (t not in succs.j) => t.signals in Semaphore	}
inv9 S: all t:Track|  (t not in succs.j) => t.signals in Semaphore	}
inv9 S: all t:Track |  (t not in succs.j) => t.signals in Semaphore	}
inv9 S: all t:Track | Junction not in t.succs => no Semaphore in t.signals	}
inv9 S: all t:Track | Junction not in t.succs => no Semaphore in t.signals	}
inv9 S: all t1,t2:Track | t1 in Entry && t2 in Exit && t1 != t2 implies t2 in t1.^(succs)	}
inv9 T: all t:Track | Junction not in t.succs => no Semaphore in t.signals
inv9 T: all t:Track | Junction not in t.succs => no Semaphore in t.signals

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv9 S: all t:Tracks, s:Semaphore | t not in succs.Juntion implies no t.Semaphores
inv9 S: all t:Track, s:Semaphore | t not in succs.Juntion implies no t.Semaphores
inv9 S: all t:Track, s:Semaphore | t not in succs.Junction implies no t.Semaphores
inv9 T: all t:Track, s:Semaphore | t not in succs.Junction implies no t.Semaphore
inv9 T: all t:Track | t not in succs.Junction implies no t.Semaphore
inv9 S: all t:Track, s:Semaphore| no (t & succs.Junction) implies s not in t.Signals

---
inv3 T: all t : Exit | not t.succs
inv3 T: all t : Track | no t.succs implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit

---
inv2 S: all s : Signal | lone t
inv2 S: all s : Signal | one t : Track | lone t
inv5 S: all t:Track | #t.~succs > 1 iff in Junction
inv5 S: all t:Track | #t.~succs > #1 iff in Junction
inv5 S: all t:Track | t.~succs > #1 iff in Junction
inv5 S: all t:Track | #(t.~succs) > 1 iff in Junction
inv5 S: all t:Track | no #(t.~succs) iff in Junction
inv5 S: all t:Track | #(t.~succs) iff in Junction

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 T: all e : Exit | none e.succs
inv3 T: all e : Exit | none (e.succs)
inv3 T: all e : Exit | none e.succs
inv3 S: all e : Exit iff none e.succs
inv3 T: all e : Track | e in Exit iff none e.succs
inv3 T: all t : Track | t in Exit implies none t.succs
inv3 S: all t : Track | t in Exit implies (none t.succs)
inv3 S: all t : Track | t in Exit iff (none t.succs)
inv3 S: all t : Track | t in Exit iff (none succs.t)
inv3 T: all t : Track | t in Exit iff none t.succs
inv3 T: all t : Track | t in Exit iff none succs.t

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv5 S: all Junction in Track.succs.succs
inv5 T: Junction in succs.succs
inv5 T: Junction in ^(Track.succs)
inv5 T: Junction in ^(succs)
inv5 S: Junction in Tracks.^(succs)

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 T: all t : Exit | not t.succs
inv3 T: all t : Track | no t.succs implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit
inv3 T: all t : Track | #t.succs=0 implies t & Exit

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv3 S: all ex:Exit | ex.succs.last = ex
inv3 S: all ex:Exit | Track.succs.last = ex
inv3 S: all ex:Exit | Track.last = ex
inv3 S: all ex:Exit | ex.last = ex
inv3 S: all ex:Exit | ex.last
inv3 T: all ex:Exit | no Track.succs[ex+1]
inv3 T: all ex:Exit | no Track.succs[ex]

---
inv4 S: all e:Entry | #prevs[e]=0
inv4 S: all e:Entry | no prevs[e]
inv4 S: all e:Entry | no e.succs.prevs[e]
inv4 S: all e:Entry | first = e
inv4 S: all e:Entry | Track.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = e
inv4 S: all e:Entry, t:Track | t.succs.first = Entry
inv4 S: all e:Entry, t:Track | e in t.succs => t.succs.first = e
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track
inv4 S: some first e:Entry | e in Track

---
inv5 S: Junctions = Track.{t1,t2 : Track | t1->t2 in succs and no (lone succs.t1)}
inv5 S: Junctions = Track.{t1,t2 : Track | t1->t2 in succs and no (lone succs.t1)}
inv5 S: Junctions = Track.{t1,t2 : Track | t1->t2 in succs and no (lone succs.t1)}
inv5 T: Junction = Track.{t1,t2 : Track | t1->t2 in succs and no (lone succs.t1)}
inv5 T: Junction = Track.{t1,t2 : Track | t1->t2 in succs and no (lone succs.t1)}
inv5 T: Junction = Track.{t1,t2 : Track | t1->t2 in succs and (no (lone succs.t1))}
inv5 T: Junction = Track.{t1 : Track, t2 : Track | t1->t2 in succs and (no (lone succs.t1))}

---
inv6 T: some (Entry.signals).Speed
inv6 T: some (Entry.signals).Speed
inv6 T: some (Entry.signals).Speed
inv6 T: some (Entry.signals).Speed
inv6 T: some (Entry.signals).Speed

---
inv1 S: Signal = Red
inv1 S: signal = Red
inv1 S: Track.signal = Red
inv1 S: Track.signal = Red
inv1 S: Track.signal = Red

---
inv9 S: (all t:Train|  no t.pos => eventually ( one t.pos':>Entry)) )
inv9 S: (all t:Train|  no t.pos => after ( one t.pos':>Entry)) )
inv9 S: (all t:Train|  no t.pos  after ( one t.pos':>Entry)) )
inv9 S: (all t:Train|  (no t.pos  after ( one t.pos':>Entry)) )
inv9 S: (all t:Train|  (no t.pos  after  one (t.pos':>Entry)  )
inv9 S: (all t:Train| eventually (no t.pos  after  one (t.pos':>Entry))
inv9 S: (all t:Train| eventually (no t.pos  after  one (t.pos':>Entry)) )
inv9 S: (all t:Train|  (no t.pos  after  one (t.pos':>Entry)) )
inv9 S: always (all t:Train|  (no t.pos  after  one (t.pos':>Entry)) )

---
inv6 S: always (all s:Signal | (s in Green implies s not in Green') )
inv6 S: always (all s:Green | after  s not in Green )
inv6 S: always (all s:Signals |  (s in Green implies always (no (s &  Green'))) or no (s & Green) implies always (some (s &  Green'))  )
inv6 S: always (all s:Signals |  (s in Green implies always (no (s &  Green'))) or no (s & Green) implies always (some (s &  Green')) )
inv6 S: always (all s:Signals |  (s in Green implies always (no (s &  Green'))) )
inv6 S: always (all s:Signals |  (s in Green implies always (no (s &  Green') )
inv6 S: always (all s:Signals |  s in Green implies always (no (s &  Green') ))
inv6 S: always (all s:Signals | s in Green implies  (no (s &  Green') ))
inv6 S: always (all s:Signals | s in Green )
inv6 S: always (all s:Signals |  (s in Green implies always (no (s &  Green'))) or no (s & Green) implies always (some (s &  Green'))) )
inv6 S: always (all s:Signal |  (s in Green implies always (no (s &  Green'))) or no (s & Green) implies always (some (s &  Green'))) )
inv6 S: always (some s:Signal |  (s in Green implies always (no (s &  Green'))) or no (s & Green) implies always (some (s &  Green'))) )

---
inv4 T: Train.pos.~pos in iden
inv4 T: all t : Train, p : t.pos | pos.~p in iden
inv4 T: all t : Train | t.~pos in iden
inv4 T: all t : Train | t.pos.~pos in iden
inv4 T: Train.pos in iden
inv4 T: all t : Train | t.pos in iden
inv4 T: all t : Train | t.~pos in iden

---
inv5 T: all t : Train | some (t.pos & Exit) implies  Train' = (Train - t) else( t.pos' & t.pos.prox)
inv5 S: all t : Train | some (t.pos & Exit) implies  Train' = (Train - t) ( else( t.pos' & t.pos.prox))
inv5 S: all t : Train | some (t.pos & Exit) implies  Train' = (Train - t)  else( t.pos' & t.pos.prox))
inv5 T: all t : Train | some (t.pos & Exit) implies  Train' = (Train - t)  else( t.pos' & t.pos.prox)
inv5 T: all t : Train | some (t.pos & Exit) implies  (Train' = (Train - t) and no t.pos')  else( t.pos' & t.pos.prox)
inv5 T: all t : Train | no (t.pos & Exit) implies (t.pos' & t.pos.prox)

---
inv3 T: always all t: Train | (before t.pos) = t.pos
inv3 T: always all t: Train | (before t.pos) = (after t.pos)
inv3 T: always all t: Train | t.pos implies after t.pos
inv3 S: always all t: Train | {let x = t.pos} after t.pos = x
inv3 T: always all t: Train | {let x = t.pos | Train} after t.pos = x
inv3 T: always all t: Train | {let x = t.pos | t} after t.pos = x
inv3 S: all t: Train | always t.pos = x
inv3 T: all t: Train | always t.pos

---
inv3 T: always pos
inv3 S: always pos = after pos
inv3 S: always pos in after pos
inv3 S: always (pos = after pos)
inv3 S: always all t : Train | (t.pos = after t.pos)
inv3 S: always all t : Train | (t.pos = after t.pos)
inv3 S: always all t : Train | (t.pos in after t.pos)
inv3 S: always all t : Train | t.pos in after t.pos

---
inv3 S: False releases always pos
inv3 S: false releases always pos
inv3 S: no releases always pos
inv3 S: no releases pos
inv3 S: always pos = after pos

---
inv6 S: always (all s : Signal | (s in Green implies eventually s not in Green) or (s not in Green implies s eventually s in Green))
inv6 S: always (all s : Signal | (s in Green implies eventually s not in Green) or (s not in Green implies s eventually s in Green))
inv6 S: always all s : Signal |	(s in Green implies eventually s not in Green) or	(s not in Green implies s eventually s in Green)
inv6 S: always all s : Signal |	(s in Green implies (eventually s not in Green)) or	(s not in Green implies s eventually s in Green)
inv6 S: always (all s : Signal |	(s in Green implies (eventually s not in Green)) or	(s not in Green implies s eventually s in Green)	)
inv6 S: always (all s : Signal |	s in Green implies eventually s not in Green or	s not in Green implies s eventually s in Green	)
inv6 T: always all s : Signal {	s in Green implies eventually s not in Green or	s not in Green implies s eventually s in Green	}
inv6 T: always (all s : Signal {	s in Green implies eventually s not in Green or	s not in Green implies s eventually s in Green	})
inv6 S: always (all s : Signal |	s in Green implies eventually s not in Green or	s not in Green implies s eventually s in Green	)

---
inv6 S: always all s : Signal |	s in Green implies eventually s not in Green or	s not in Green implies s eventually s in Green	)
inv6 T: always all s : Signal |	s in Green implies eventually s not in Green or	s not in Green implies s eventually s in Green
inv6 S: always (all s : Signal | s in Green implies eventually s not in Green or	s not in Green implies s eventually s in Green)
inv6 S: always (all s : Signal | s in Green implies eventually s not in Green or	s not in Green implies s eventually s in Green))
inv6 S: always (all s : Signal | s in Green implies eventually s not in Green or	s not in Green implies eventually s in Green

---
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash

---
inv10 S: all t:Trash, fl:File.links | f1 in Trash implies (no f1 in File)
inv10 S: all t:Trash, fl:File.link | f1 in Trash implies (no f1 in File)
inv10 S: all t:Trash, fl:File.link | f1 in Trash
inv10 S: all t:Trash, fl:File | f1 in Trash
inv10 S: all t:Trash, fl:File.link | f1 in Trash implies (no f1 in File)
inv10 T: all t:Trash, fl:File.link | fl in Trash implies (no fl in File)

---
inv6 S: all f1,f2 : File |
inv6 S: all f1,f2 : File |
inv6 S: all f1,f2 : File |
inv6 T: all f1,f2 : File | f1->f2 in File and f1->f2
inv6 T: all f1,f2,f3 : File | f1->f2 in File and f1->f3 in File implies f2 = f3
inv6 T: all f1,f2,f3 : File | f1 -> f2 in File and f1 -> f3 in File implies f2 = f3

---
inv8 T: all f1, f2 : File | f1->f2
inv8 T: all f1, f2 : File | f1->f2
inv8 T: all f1, f2 : File | f1->f2
inv8 T: all f1, f2 : File | f1->f2
inv8 T: all f1, f2 : File | f1->f2

---
inv6 T: all f1,f2,f3:File | f1->f2 and f1->f3 in link implies f2=f3
inv6 T: all f1,f2,f3:File | f1 -> f2 and f1->f3 in link implies f2=f3
inv6 T: all f1,f2,f3:File | f1 -> f2 and f1 -> f3 in link implies f2=f3
inv6 T: all f1,f2,f3:File | f1->f2 and f1->f3 in link implies f2=f3
inv6 T: all f1,f2,f3:File | f1->f2 and f1->f3 in link implies f2=f3
inv6 T: all a,b,c:File | a->b and a->c in link implies b=c
inv6 S: all a,b,c:File | f1->f2 and f1->f3 in link implies f2=f3
inv6 T: all f1,f2,f3:File | f1->f2 and f1->f3 in link implies f2=f3
inv6 T: all f1,f2,f3:File | f1->f2 and f1->f3 in link implies f2=f3
inv6 T: all f1,f2,f3:File | f1->f2 and f1->f3 in link implies f2=f3
inv6 T: all f1,f2,f3:File | f1->f2 and f1->f3 in link implies f2=f3

---
inv6 T: all l : link , g,f : File | g->l in link and f->l in link implies g=f
inv6 T: all l : link , g,f : File | g->l->f in link and f->l->g in link implies g=f
inv6 T: all f : File, l,t: link | f->l in link and f->t in link implies l=t
inv6 T: all f : File, l,t: link | f->l in File and f->t in File implies l=t
inv6 T: all f,g : File | all l,t : link | f->l->g in File and f->t->g in File implies l=t
inv6 T: all f,g : File | all l,t : link | f->l->g in link and f->t->g in link implies l=t
inv6 T: all f,g : File, l,t : link | f->l->g in link and f->t->g in link implies l=t
inv6 T: all f : File, l,t: link | f->l in link and f->t in link implies l=t

---
inv1 S: all t1->...->tn in File | t1->...->tn not in Trash
inv1 S: all t1->...->tn in File {} | t1->...->tn not in Trash {}
inv1 S: all t1->...->tn not in Trash {}
inv1 S: all t1->...->tn not in Trash {}
inv1 S: all t1->...->tn not in Trash {}
inv1 S: all t1->...->tn not in Trash {}
inv1 S: all t1->...->tn no in Trash {}
inv1 S: t not in Trash

---
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash

---
inv10 S: all t:Trash, fl:File.links | f1 in Trash implies (no f1 in File)
inv10 S: all t:Trash, fl:File.link | f1 in Trash implies (no f1 in File)
inv10 S: all t:Trash, fl:File.link | f1 in Trash
inv10 S: all t:Trash, fl:File | f1 in Trash
inv10 S: all t:Trash, fl:File.link | f1 in Trash implies (no f1 in File)
inv10 T: all t:Trash, fl:File.link | fl in Trash implies (no fl in File)

---
inv7 T: all disj f1,f2 : File |(f1->f2) in link implies (f1->f2) not in Trash
inv7 T: all disj f1,f2 : File | (f1->f2) not in Trash
inv7 T: all disj f1,f2 : File | f1->f2 not in Trash
inv7 T: all  l : link | l not in Trash
inv7 T: no Trash & link

---
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash

---
inv10 S: all t:Trash, fl:File.links | f1 in Trash implies (no f1 in File)
inv10 S: all t:Trash, fl:File.link | f1 in Trash implies (no f1 in File)
inv10 S: all t:Trash, fl:File.link | f1 in Trash
inv10 S: all t:Trash, fl:File | f1 in Trash
inv10 S: all t:Trash, fl:File.link | f1 in Trash implies (no f1 in File)
inv10 T: all t:Trash, fl:File.link | fl in Trash implies (no fl in File)

---
inv1 T: Trash = {}
inv1 T: Trash = {{}}
inv1 S: Trash == {{}}
inv1 S: trash = {}
inv1 S: t = {}
inv1 S: all t in Trash. t = {}
inv1 S: t == Trash implies t = {}
inv1 S: t == Trash implies t = {}
inv1 S: t : Trash implies t = {}
inv1 T: all t : Trash | t = {}

---
inv7 T: all f,t : File | f->t in link implies f->t not in Trash
inv7 T: all f,t : File | f->t in link implies f and t not in Trash
inv7 S: all f,t : File,  | f->t in link implies f and t not in Trash
inv7 S: all f,t : File,  | f->t in link implies f and t not in Trash
inv7 S: all f,t : File,  | f->t in link implies f and t not in Trash
inv7 S: all f,t : File,  | f->t in link implies f and t not in Trash

---
inv7 T: all l : link | l not in Trash
inv7 T: all l : link | l not in Trash
inv7 T: all l : link | l not in Trash
inv7 T: all l : link | l not in Trash
inv7 T: all l : link | l not in Trash
inv7 T: all l : link | l not in Trash

---
inv7 T: all f,t : File | f->t in link implies f->t not in Trash
inv7 T: all f,t : File | f->t in link implies f and t not in Trash
inv7 S: all f,t : File,  | f->t in link implies f and t not in Trash
inv7 S: all f,t : File,  | f->t in link implies f and t not in Trash
inv7 S: all f,t : File,  | f->t in link implies f and t not in Trash
inv7 S: all f,t : File,  | f->t in link implies f and t not in Trash

---
inv6 S: all f1:File, lone f2:File | (f1 -> f2) in link
inv6 S: all f1:File, lone f2:File | f1 -> f2 in link
inv6 T: all f1,f2,f3:File | f1 -> f3 and f2 -> f3 in link implies f1 = f2
inv6 T: all f1,f2,f3:File | (f1 -> f3 and f2 -> f3 in link) implies f1 = f2
inv6 T: all f1,f2,f3:File | ((f1 -> f3 and f2 -> f3) in link) implies f1 = f2
inv6 T: all f1,f2,f3:File | ((f1 -> f3 in link and f2 -> f3) in link) implies f1 = f2

---
inv7 T: no link in Trash
inv7 S: all f1,f2:File | f1 -> f2 in Link
inv7 S: all f1,f2:File | f1 -> f2 in Link implies f1 not in Trash
inv7 S: all f:File | isLinked[f] implies f not in Trash	}		/* There are no links. */		pred isLinked(f1:File){	all f2:File | f1 -> f2 in Link
inv7 S: all f:File | isLinked[f] implies f not in Trash	}		pred isLinked(f1:File){	all f2:File | f1 -> f2 in Link

---
inv7 T: all l:link | l not in Trash
inv7 T: all l:link | l not in l.Trash
inv7 T: all l:link | l not in l->Trash
inv7 T: all l:link | l not in l.Trash
inv7 T: all l:link | l not in Trash.l

---
inv9 T: all f:File | f.link implies no f.*link
inv9 T: all f:File | f in link implies no f.*link
inv9 S: all f:File | f in link implies no f in .*link
inv9 T: all f:File | f in link implies not f.*link
inv9 T: all f:File | f.link implies not f.*link
inv9 T: all f:File | f.link implies not f.*link
inv9 T: all f:File | f.link implies not f.*link

---
inv10 T: all f,g:File | f->g in Trash implies g in Trash
inv10 T: all f,g:File | f->g in link in Trash implies g in Trash
inv10 T: all f,g:File | (f->g in link in Trash) implies g in Trash
inv10 S: all f,g:File | f->g in link | g in Trash
inv10 T: all f,g:File | f->g in link and f->g in Trash implies g in Trash

---
inv7 T: all f:File | f:>link not in Trash
inv7 T: all f:File | no f:>link in Trash
inv7 T: all f:File | no f:>link
inv7 T: all f:File | f:>link not in Trash
inv7 T: all f:File | f in link implies f not in Trash
inv7 T: all f:File | f in link implies f not in Trash
inv7 T: all f:File | f in link implies f not in Trash
inv7 T: all f:File | f in link implies f not in Trash
inv7 T: all f:File | f in link implies f not in Trash
inv7 T: all f:File | f in link implies f not in Trash

---
inv7 S: all f:File |no (f in link and f in Trash)		/* There are no links. */
inv7 S: all f:File |no (f in link and f in Trash)		/* There are no links. */
inv7 S: all f:File |f in link implies f not in Trash		/* There are no links. */
inv7 S: /* There are no links. */
inv7 S: /* There are no links. */
inv7 T: all f:File | f in link implies f not in Trash

---
inv7 T: no link in Trash
inv7 T: no File.link in Trash
inv7 T: no File.link in Trash
inv7 T: all f:File | f:>link not in Trash
inv7 T: all f:File | f in link implies f not in Trash
inv7 T: all f:File | f in link implies f.link not in Trash

---
inv7 T: all f:File | f in link implies f.^link not in Trash
inv7 T: all f:File | f in link and f.link implies f.^link not in Trash
inv7 T: all f:File | (f in link and f.link) implies f.^link not in Trash
inv7 T: all f:File | f in link implies f not in Trash
inv7 T: all f:File | f in link implies f not in Trash
inv7 T: all f:File | f in link implies f not in Trash
inv7 T: all f:File | f in link implies f not in Trash
inv7 T: all f:File | f in link implies f not in Trash
inv7 T: all f:File | f.link implies f not in Trash

---
inv7 T: all l:link | no link in Trash
inv7 T: all l:link | no File.link in Trash
inv7 T: all l:link | no link.File in Trash
inv7 T: all l:link | link.File not in Trash
inv7 T: all l:link | File.link not in Trash

---
inv10 T: all f :File,l:link | f.l in Trash implies l in Trash
inv10 T: all f :File,l:link | l in Trash
inv10 T: all l:link | l in Trash
inv10 T: all l:link | l not in Trash
inv10 T: all l:link |no  l in Trash
inv10 T: all l:link |no l in Trash
inv10 T: all l:link |no File.l in Trash

---
inv7 T: all f1,f2 : File | f1 -> f2 in link not in Trash
inv7 S: all l : Link | l not in Trash
inv7 T: all l : link | l not in Trash
inv7 T: all f1,f2 : File | f1 -> f2 not in Trash
inv7 S: all f1,f2 : File | f1,f2 not in Trash

---
inv6 T: all f : File | (some l : link | l in f)
inv6 T: all f : File | (some l : link | l in f)
inv6 T: all f : File | (some l : link | l in f.l)
inv6 T: all f : File | (some l : link | l in f.l)
inv6 S: all f : File | (some f.l : link | f.l in f)

---
inv6 S: all f : File | (some l : f.link )
inv6 S: all f : File | (some l : f.link | true)
inv6 S: all f : File | (some l : f.link | True)
inv6 S: all f : File | not no f.link )
inv6 S: all f : File | not no f.link )
inv6 S: all f : File | not no f.link )

---
inv7 S: no (File in link & Trass)
inv7 T: no (File in link & Trash)
inv7 S: all f: Files | no f.link in Trash
inv7 S: all f: Files | no f.link in Trash
inv7 T: all f: File | no f.link in Trash
inv7 T: all f: File | no f.link in Trash

---
inv6 T: all f1,f2,f3:File | f1->f2 and f1->f3 in link implies f2=f3
inv6 T: all f1,f2,f3:File | f1 -> f2 and f1->f3 in link implies f2=f3
inv6 T: all f1,f2,f3:File | f1 -> f2 and f1 -> f3 in link implies f2=f3
inv6 T: all f1,f2,f3:File | f1->f2 and f1->f3 in link implies f2=f3
inv6 T: all f1,f2,f3:File | f1->f2 and f1->f3 in link implies f2=f3
inv6 T: all a,b,c:File | a->b and a->c in link implies b=c
inv6 S: all a,b,c:File | f1->f2 and f1->f3 in link implies f2=f3
inv6 T: all f1,f2,f3:File | f1->f2 and f1->f3 in link implies f2=f3
inv6 T: all f1,f2,f3:File | f1->f2 and f1->f3 in link implies f2=f3
inv6 T: all f1,f2,f3:File | f1->f2 and f1->f3 in link implies f2=f3
inv6 T: all f1,f2,f3:File | f1->f2 and f1->f3 in link implies f2=f3

---
inv6 S: links in iden
inv6 S: all f:File | f.~links in iden
inv6 S: all f:File | ~links.f in iden
inv6 T: all f:File | ~link.f in iden
inv6 T: all f:File | ~link.f in iden
inv6 T: all f:File | link.f in iden

---
inv7 S: all link.File
inv7 S: all link.File
inv7 S: all link.File
inv7 S: all link.File
inv7 S: all link.File
inv7 S: all link.File

---
inv10 S: all f,g:File |
inv10 S: all f,g:File |
inv10 S: all f,g:File |
inv10 S: all f,g:File |
inv10 S: all f,g:File |

---
inv7 T: all f1,f2 : File | f1 -> f2 in link not in Trash
inv7 S: all l : Link | l not in Trash
inv7 T: all l : link | l not in Trash
inv7 T: all f1,f2 : File | f1 -> f2 not in Trash
inv7 S: all f1,f2 : File | f1,f2 not in Trash

---
inv7 T: all f,t : File | f->t in link implies f->t not in Trash
inv7 T: all f,t : File | f->t in link implies f and t not in Trash
inv7 S: all f,t : File,  | f->t in link implies f and t not in Trash
inv7 S: all f,t : File,  | f->t in link implies f and t not in Trash
inv7 S: all f,t : File,  | f->t in link implies f and t not in Trash
inv7 S: all f,t : File,  | f->t in link implies f and t not in Trash

---
inv7 S: all f:File | isLink[f] implies f not in Trash	}		pred isLink[f:File]{	g:File | f->g in link
inv7 S: all f:File | isLink[f] implies f not in Trash	}		pred isLink[f:File]{	g:File | f->g in link
inv7 S: all f:File | isLink[f] implies f not in Trash	}		pred isLink[f:File]{	g:File | f->g in link
inv7 S: all f:File | isLink[f] implies f not in Trash	}		pred isLink[f:File]{	g:File | g->f in link
inv7 S: all f:File | isLinked[f] implies f not in Trash	}		pred isLinked[f:File]{	g:File | g->f in link

---
inv6 S: all f,t,u : File
inv6 S: all f,t,u : File
inv1 T: all t: File | no t in Trash
inv1 S: all  File | no File in Trash
inv1 S: all t in File | no File in Trash
inv1 S: all t in File | no t in Trash
inv1 S: no t in Trash
inv1 S: no t1->...->tn in Trash
inv1 S: t1->...->tn not in Trash
inv1 S: t1->...->tn in File | t1->...->tn not in Trash
inv1 S: t not in Trash

---
inv6 T: all f: File | some l: link | f -> l
inv6 T: all f: File | some l: link | f implies some l
inv6 T: all f: File | some l: link | f implies some l
inv6 T: all f: File | some l: link | f implies some l
inv6 T: all f: File | some l: link | l implies some f
inv6 T: all f: File | some l: link | f implies l
inv6 T: all f: File | some l: link | f implies l
inv6 T: all f: File | some l: link | f implies some l

---
inv7 S: all f, f1: File | f->f1 implies f1.link not in Trash		/* There are no links. */
inv7 S: all f, f1: File | f->f1 implies f.link not in Trash		/* There are no links. */
inv7 S: all f, f1: File | f->f1 implies f.link and f1.link not in Trash		/* There are no links. */
inv7 S: all f, f1: File | f->f1 implies not in Trash		/* There are no links. */
inv7 S: all f, f1: File | f->f1 implies f.link and f1.link not in Trash		/* There are no links. */
inv7 S: all f, f1: File | f.links f1 implies f.link and f1.link not in Trash		/* There are no links. */
inv7 S: all f, f1: File | f->f1 implies File not in Trash		/* There are no links. */
inv7 S: all f, f1: File | f->f1 in link implies f1 not in Trash		/* There are no links. */
inv7 S: all f, f1: File | f->f1 in link implies f1 not in Trash		/* There are no links. */
inv7 S: all f, f1: File | f->f1 in link implies f1 not in Trash		/* There are no links. */

---
inv1 S: all f in File -> f not in Trash
inv1 S: all f in File | f not in Trash
inv1 S: all f in File | no f in Trash
inv1 S: not f in Trash
inv1 S: all f in File | not f in Trash

---
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash

---
inv10 S: all t:Trash, fl:File.links | f1 in Trash implies (no f1 in File)
inv10 S: all t:Trash, fl:File.link | f1 in Trash implies (no f1 in File)
inv10 S: all t:Trash, fl:File.link | f1 in Trash
inv10 S: all t:Trash, fl:File | f1 in Trash
inv10 S: all t:Trash, fl:File.link | f1 in Trash implies (no f1 in File)
inv10 T: all t:Trash, fl:File.link | fl in Trash implies (no fl in File)

---
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash

---
inv10 S: all t:Trash, fl:File.links | f1 in Trash implies (no f1 in File)
inv10 S: all t:Trash, fl:File.link | f1 in Trash implies (no f1 in File)
inv10 S: all t:Trash, fl:File.link | f1 in Trash
inv10 S: all t:Trash, fl:File | f1 in Trash
inv10 S: all t:Trash, fl:File.link | f1 in Trash implies (no f1 in File)
inv10 T: all t:Trash, fl:File.link | fl in Trash implies (no fl in File)

---
inv10 S: all g,x:File | f in Trash and
inv10 S: all g,x:File | f in Trash and
inv10 S: all g,x:File | f in Trash and
inv10 S: all g,x:File | f in Trash and
inv10 S: all g,x:File | f in Trash and

---
inv5 T: all f : not Protected | f in Trash
inv5 S: all f : f not Protected | f in Trash
inv5 S: all f : not Prepared | f in Trash
inv5 T: all f : not Protected | f in Trash
inv5 S: all f : File | f not in Prepared && f in Trash

---
inv6 S: all f1:File, some f2:File | f1 -> f2
inv6 S: all f1:File, some f2:File | f1 -> f2
inv6 S: all f1:File, some f2:File | f1.link.f2
inv6 S: all f1:File, some f2:File | f1 -> f2 in link
inv6 S: all f1:File, some f2:File | f1 <- f2 in link
inv6 S: all f1:File, some f2:File | f1 -> f2 in link

---
inv6 S: all f : File | x->y link f
inv6 S: all f : File | f->y link f
inv6 T: all x,y : File | x->y link y
inv6 T: all x,y : File | x->y link x
inv6 S: all (x,y) : File | x->y link y
inv6 S: all x,y : File | x link y		/* There is no deleted link. */
inv6 T: all x,y : File | x link y
inv6 T: all x,y : File | x->y link y

---
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash

---
inv10 S: all t:Trash, fl:File.links | f1 in Trash implies (no f1 in File)
inv10 S: all t:Trash, fl:File.link | f1 in Trash implies (no f1 in File)
inv10 S: all t:Trash, fl:File.link | f1 in Trash
inv10 S: all t:Trash, fl:File | f1 in Trash
inv10 S: all t:Trash, fl:File.link | f1 in Trash implies (no f1 in File)
inv10 T: all t:Trash, fl:File.link | fl in Trash implies (no fl in File)

---
inv1 T: Trash = {}
inv1 T: Trash = {}
inv1 S: Trash = Empty
inv1 S: Trash = empty
inv1 T: Trash t = {}
inv1 T: Trash t = {}
inv1 T: Trash t = {}

---
inv5 S: all x : not in Protected | x in Trash
inv5 S: all x : not in Protected | x in Trash
inv5 S: all x : File | x not in Protected | x in Trash
inv5 S: all x : File | all x not in Protected | x in Trash
inv5 T: all x : File | x not in Protected -> x in Trash

---
inv11 S: all f : File | f not in Protected after f in Protected
inv11 S: all f : File | f not in Protected after f in Protected
inv11 S: all a : File | f not in Protected after f in Protected
inv11 S: all f : File | f not in Protected after f in Protected
inv11 S: all f : File | f not in Protected after (f in Protected)
inv11 S: all f : File | (f not in Protected) after (f in Protected)
inv11 S: all a : File | (a not in Protected) after (f in Protected)
inv11 S: all a : File | (a not in Protected) after (a in Protected)

---
inv2 S: no File	File'= some File
inv2 S: no File	File' = some File
inv2 S: no File;	File' = some File
inv2 T: no File and next some File
inv2 T: no File && next some File
inv2 T: no File implies next some File
inv2 S: no File	File'=some File
inv2 T: no File && next some File

---
inv8 S: always l in link | eventually l in Trash
inv8 S: l in link
inv8 S: all f,f1 in File | f.f1 in link
inv8 S: all f,f1 in File | f->f1 in link
inv8 S: all f,f1: in File | f->f1 in link
inv8 S: all f,f1: in File | no Trash

---
inv9 T: always no Protected && Trash
inv9 T: always no Protected and Trash
inv9 T: Trash & Trash
inv9 T: Trash && Trash
inv9 T: Trash and Trash

---
inv9 T: all f: File | always (no f in Protected or f in Trash)
inv9 T: all f: File | always (no f in Protected or no f in Trash)
inv9 S: all f: File | always (no f in Protected & no f in Trash)
inv9 S: all f: File | always (no f in Protected & no f in Trash)
inv10 T: once Protected always Protected
inv10 T: always Protected since Protected
inv10 T: always Protected once Protected
inv10 T: after Protected always Protected
inv10 T: Protected since Protected
inv10 T: always Protected since Protected
inv10 T: always (Protected since Protected)
inv10 T: all f: File | f always Protected since f in Protected
inv10 S: all f: File | f always in Protected since f in Protected

---
inv14 S: all f: File | eventually f in Protected and in Trash implies after f not in Protected
inv14 S: all f: File | eventually f in Protected & in Trash implies after f not in Protected
inv14 T: all f: File | eventually f in Protected & f in Trash implies after f not in Protected
inv14 T: all f: File | eventually f in Protected & f in Trash implies after f in Trash and f not in Protected
inv14 S: all f: File | onve (f in Protected & f in Trash implies always (after f in Trash and f not in Protected))
inv14 T: all f: File | once (f in Protected & f in Trash implies always (after f in Trash and f not in Protected))

---
inv17 S: all f: File | once f in Trash implies always triggered f' not in File
inv17 S: all f: File | once f in Trash implies always triggered f' in File
inv17 S: all f: File | once f in Trash implies always releases f' in File
inv17 S: all f: File | once f in Trash implies releases f' in File
inv17 S: all f: File | always f in Trash implies releases f' in File

---
inv5 T: eventually some File not in File
inv5 T: eventually File after no File
inv5 S: eventually some f:File after f not in File
inv5 S: eventually (some f:File after f not in File)
inv5 S: eventually some f:File after (f not in File)
inv5 S: eventually some f:File | (f in File) after (f not in File)
inv5 S: eventually (some f:File | (f in File) after (f not in File))
inv5 T: eventually no (File && File')

---
inv9 S: always f:Protected | f not in Trash
inv9 T: no Protected' && Trash
inv9 T: always no Protected && Trash
inv9 T: always (no Protected && Trash)
inv9 T: always (no Protected && Trash)

---
inv12 S: always all f:File | eventually (f not in Trash after f in Trash)
inv12 S: always all f:File | eventually (f not in Trash after f in Trash')
inv12 S: eventually always f:File | f not in Protected after f in Protected'
inv12 S: eventually always f:File | f not in Protected implies f in Protected'
inv12 S: eventually always f:File | f not in Trash after f in Trash'
inv12 S: eventually always f:File | f not in Trash implies f in Trash'

---
inv15 S: eventually f in File implies f in Trash
inv15 S: eventually f:File | f in Trash
inv15 S: eventually f:File | f in Trash
inv15 S: eventually f:File | f not in Trash after f in Trash'
inv15 S: eventually f:File | f not in Trash after f in Trash

---
inv5 T: some f:Trash | eventually File
inv5 T: some f:Trash | eventually File
inv5 T: some f:Trash | eventually File
inv5 T: some f:Trash | eventually File
inv5 T: some f:Trash | eventually File-f

---
inv4 T: eventually some link in Trash
inv4 T: all f:File | eventually some (f.link:> File).Trash
inv4 T: all f:File | eventually some (f.link :> File).Trash
inv4 T: all f:File | eventually some (f.link).Trash
inv4 T: all f:File | eventually some (f.link)in Trash

---
inv4 T: eventually some link in Trash
inv4 T: all f:File | eventually some (f.link:> File).Trash
inv4 T: all f:File | eventually some (f.link :> File).Trash
inv4 T: all f:File | eventually some (f.link).Trash
inv4 T: all f:File | eventually some (f.link)in Trash

---
inv10 T: once Protected always Protected
inv10 T: always Protected since Protected
inv10 T: always Protected once Protected
inv10 T: after Protected always Protected
inv10 T: Protected since Protected
inv10 T: always Protected since Protected
inv10 T: always (Protected since Protected)
inv10 T: all f: File | f always Protected since f in Protected
inv10 S: all f: File | f always in Protected since f in Protected

---
inv14 S: all f: File | eventually f in Protected and in Trash implies after f not in Protected
inv14 S: all f: File | eventually f in Protected & in Trash implies after f not in Protected
inv14 T: all f: File | eventually f in Protected & f in Trash implies after f not in Protected
inv14 T: all f: File | eventually f in Protected & f in Trash implies after f in Trash and f not in Protected
inv14 S: all f: File | onve (f in Protected & f in Trash implies always (after f in Trash and f not in Protected))
inv14 T: all f: File | once (f in Protected & f in Trash implies always (after f in Trash and f not in Protected))

---
inv4 S: some File eventually inTrash
inv4 S: some File eventually in Trash
inv4 S: some File eventually in Trash
inv4 T: eventually some File in Trash
inv4 T: eventually some File in Trash
inv4 T: eventually (some File in Trash)
inv4 T: eventually (some File in Trash)

---
inv5 T: some f: File | eventually (always no f in File)
inv5 T: some f: File | eventually (always no f in Trash)
inv5 T: some f: File | eventually (always no f in Trash implies no f in File)
inv5 T: some f: File | eventually (always no f in Trash implies always no f in File)
inv5 T: some f: File | eventually no f in Trash implies always no f in File
inv5 T: some f: File | eventually no f in Trash and always no f in File
inv5 T: some f: File | always no f in File since eventually no f in Trash
inv5 T: some f: File | always no f in File since eventually f in Trash

---
inv4 T: eventually some link in Trash
inv4 T: all f:File | eventually some (f.link:> File).Trash
inv4 T: all f:File | eventually some (f.link :> File).Trash
inv4 T: all f:File | eventually some (f.link).Trash
inv4 T: all f:File | eventually some (f.link)in Trash

---
inv6 S: all f:File | f in Trash after f in Trash
inv6 S: all f:File | f in Trash after f in Trash
inv6 S: all f:File | f in Trash after f in Trash
inv6 S: all t:File | t in Trash after t in Trash
inv6 S: all f:File | f in Trash after f in Trash
inv6 S: all f:File | f in Trash after f in Trash

---
inv11 S: all File after File in Protected
inv11 T: always File after File in Protected
inv11 T: all f:File | f after f in Protected
inv11 S: all f:File | f in File after f in Protected
inv11 S: f in File after f in Protected

---
inv11 S: eventually all f:File | f not in Protected after f in Protected
inv11 S: eventually all f:File | f not in Protected after f in Protected
inv11 S: eventually all f:File | f not in Protected after f in Protected
inv11 S: eventually all f:File | f not in Protected after f in Protected
inv11 S: eventually all f:File | f not in Protected after f in Protected
inv11 S: eventually all f:File | f not in Protected after f in Protected

---
inv4 T: eventually some link in Trash
inv4 T: all f:File | eventually some (f.link:> File).Trash
inv4 T: all f:File | eventually some (f.link :> File).Trash
inv4 T: all f:File | eventually some (f.link).Trash
inv4 T: all f:File | eventually some (f.link)in Trash

---
inv10 T: once Protected always Protected
inv10 T: always Protected since Protected
inv10 T: always Protected once Protected
inv10 T: after Protected always Protected
inv10 T: Protected since Protected
inv10 T: always Protected since Protected
inv10 T: always (Protected since Protected)
inv10 T: all f: File | f always Protected since f in Protected
inv10 S: all f: File | f always in Protected since f in Protected

---
inv14 S: all f: File | eventually f in Protected and in Trash implies after f not in Protected
inv14 S: all f: File | eventually f in Protected & in Trash implies after f not in Protected
inv14 T: all f: File | eventually f in Protected & f in Trash implies after f not in Protected
inv14 T: all f: File | eventually f in Protected & f in Trash implies after f in Trash and f not in Protected
inv14 S: all f: File | onve (f in Protected & f in Trash implies always (after f in Trash and f not in Protected))
inv14 T: all f: File | once (f in Protected & f in Trash implies always (after f in Trash and f not in Protected))

---
inv4 T: eventually some link in Trash
inv4 T: all f:File | eventually some (f.link:> File).Trash
inv4 T: all f:File | eventually some (f.link :> File).Trash
inv4 T: all f:File | eventually some (f.link).Trash
inv4 T: all f:File | eventually some (f.link)in Trash

---
inv20 S: always (all f :  Trash | f in Trash since f not in Protected)s
inv4 T: eventually some link in Trash
inv4 T: all f:File | eventually some (f.link:> File).Trash
inv4 T: all f:File | eventually some (f.link :> File).Trash
inv4 T: all f:File | eventually some (f.link).Trash
inv4 T: all f:File | eventually some (f.link)in Trash

---
inv5 T: eventually some File not in File
inv5 T: eventually File after no File
inv5 S: eventually some f:File after f not in File
inv5 S: eventually (some f:File after f not in File)
inv5 S: eventually some f:File after (f not in File)
inv5 S: eventually some f:File | (f in File) after (f not in File)
inv5 S: eventually (some f:File | (f in File) after (f not in File))
inv5 T: eventually no (File && File')

---
inv9 S: always f:Protected | f not in Trash
inv9 T: no Protected' && Trash
inv9 T: always no Protected && Trash
inv9 T: always (no Protected && Trash)
inv9 T: always (no Protected && Trash)

---
inv12 S: always all f:File | eventually (f not in Trash after f in Trash)
inv12 S: always all f:File | eventually (f not in Trash after f in Trash')
inv12 S: eventually always f:File | f not in Protected after f in Protected'
inv12 S: eventually always f:File | f not in Protected implies f in Protected'
inv12 S: eventually always f:File | f not in Trash after f in Trash'
inv12 S: eventually always f:File | f not in Trash implies f in Trash'

---
inv15 S: eventually f in File implies f in Trash
inv15 S: eventually f:File | f in Trash
inv15 S: eventually f:File | f in Trash
inv15 S: eventually f:File | f not in Trash after f in Trash'
inv15 S: eventually f:File | f not in Trash after f in Trash

---
inv4 T: eventually some link in Trash
inv4 T: all f:File | eventually some (f.link:> File).Trash
inv4 T: all f:File | eventually some (f.link :> File).Trash
inv4 T: all f:File | eventually some (f.link).Trash
inv4 T: all f:File | eventually some (f.link)in Trash

---
inv5 T: eventually some File not in File
inv5 T: eventually File after no File
inv5 S: eventually some f:File after f not in File
inv5 S: eventually (some f:File after f not in File)
inv5 S: eventually some f:File after (f not in File)
inv5 S: eventually some f:File | (f in File) after (f not in File)
inv5 S: eventually (some f:File | (f in File) after (f not in File))
inv5 T: eventually no (File && File')

---
inv9 S: always f:Protected | f not in Trash
inv9 T: no Protected' && Trash
inv9 T: always no Protected && Trash
inv9 T: always (no Protected && Trash)
inv9 T: always (no Protected && Trash)

---
inv12 S: always all f:File | eventually (f not in Trash after f in Trash)
inv12 S: always all f:File | eventually (f not in Trash after f in Trash')
inv12 S: eventually always f:File | f not in Protected after f in Protected'
inv12 S: eventually always f:File | f not in Protected implies f in Protected'
inv12 S: eventually always f:File | f not in Trash after f in Trash'
inv12 S: eventually always f:File | f not in Trash implies f in Trash'

---
inv15 S: eventually f in File implies f in Trash
inv15 S: eventually f:File | f in Trash
inv15 S: eventually f:File | f in Trash
inv15 S: eventually f:File | f not in Trash after f in Trash'
inv15 S: eventually f:File | f not in Trash after f in Trash

---
inv5 T: eventually some File not in File
inv5 T: eventually File after no File
inv5 S: eventually some f:File after f not in File
inv5 S: eventually (some f:File after f not in File)
inv5 S: eventually some f:File after (f not in File)
inv5 S: eventually some f:File | (f in File) after (f not in File)
inv5 S: eventually (some f:File | (f in File) after (f not in File))
inv5 T: eventually no (File && File')

---
inv9 S: always f:Protected | f not in Trash
inv9 T: no Protected' && Trash
inv9 T: always no Protected && Trash
inv9 T: always (no Protected && Trash)
inv9 T: always (no Protected && Trash)

---
inv12 S: always all f:File | eventually (f not in Trash after f in Trash)
inv12 S: always all f:File | eventually (f not in Trash after f in Trash')
inv12 S: eventually always f:File | f not in Protected after f in Protected'
inv12 S: eventually always f:File | f not in Protected implies f in Protected'
inv12 S: eventually always f:File | f not in Trash after f in Trash'
inv12 S: eventually always f:File | f not in Trash implies f in Trash'

---
inv15 S: eventually f in File implies f in Trash
inv15 S: eventually f:File | f in Trash
inv15 S: eventually f:File | f in Trash
inv15 S: eventually f:File | f not in Trash after f in Trash'
inv15 S: eventually f:File | f not in Trash after f in Trash

---
inv10 T: once Protected always Protected
inv10 T: always Protected since Protected
inv10 T: always Protected once Protected
inv10 T: after Protected always Protected
inv10 T: Protected since Protected
inv10 T: always Protected since Protected
inv10 T: always (Protected since Protected)
inv10 T: all f: File | f always Protected since f in Protected
inv10 S: all f: File | f always in Protected since f in Protected

---
inv14 S: all f: File | eventually f in Protected and in Trash implies after f not in Protected
inv14 S: all f: File | eventually f in Protected & in Trash implies after f not in Protected
inv14 T: all f: File | eventually f in Protected & f in Trash implies after f not in Protected
inv14 T: all f: File | eventually f in Protected & f in Trash implies after f in Trash and f not in Protected
inv14 S: all f: File | onve (f in Protected & f in Trash implies always (after f in Trash and f not in Protected))
inv14 T: all f: File | once (f in Protected & f in Trash implies always (after f in Trash and f not in Protected))

---
inv6 S: some f:File | f in Trash, f always in Trash
inv6 S: some f:File | f in Trash, always f in Trash
inv6 S: eventually some f:File | f in Trash, always f in Trash
inv6 S: eventually (some f:File | f in Trash)	always f in Trash
inv6 S: some f:File | f in Trash	always f in Trash

---
inv8 S: eventually some l:Link | eventually l in Trash
inv8 S: eventually some link eventually l in Trash
inv8 T: always all f,g:File | eventually f->g in link in Trash
inv8 T: always all f,g:File | eventually f->g in Trash
inv8 T: always all f,g:File | eventually f->g in link in Trash
inv8 T: always all f,g:File | eventually f->g in link in Trash

---
inv6 S: all f:File | f in Trash after f in Trash
inv6 S: all f:File | f in Trash after f in Trash
inv6 S: all f:File | f in Trash after f in Trash
inv6 S: all t:File | t in Trash after t in Trash
inv6 S: all f:File | f in Trash after f in Trash
inv6 S: all f:File | f in Trash after f in Trash

---
inv11 S: all File after File in Protected
inv11 T: always File after File in Protected
inv11 T: all f:File | f after f in Protected
inv11 S: all f:File | f in File after f in Protected
inv11 S: f in File after f in Protected

---
inv11 S: eventually all f:File | f not in Protected after f in Protected
inv11 S: eventually all f:File | f not in Protected after f in Protected
inv11 S: eventually all f:File | f not in Protected after f in Protected
inv11 S: eventually all f:File | f not in Protected after f in Protected
inv11 S: eventually all f:File | f not in Protected after f in Protected
inv11 S: eventually all f:File | f not in Protected after f in Protected

---
inv6 S: all f:File | f in Trash after f in Trash
inv6 S: all f:File | f in Trash after f in Trash
inv6 S: all f:File | f in Trash after f in Trash
inv6 S: all t:File | t in Trash after t in Trash
inv6 S: all f:File | f in Trash after f in Trash
inv6 S: all f:File | f in Trash after f in Trash

---
inv11 S: all File after File in Protected
inv11 T: always File after File in Protected
inv11 T: all f:File | f after f in Protected
inv11 S: all f:File | f in File after f in Protected
inv11 S: f in File after f in Protected

---
inv11 S: eventually all f:File | f not in Protected after f in Protected
inv11 S: eventually all f:File | f not in Protected after f in Protected
inv11 S: eventually all f:File | f not in Protected after f in Protected
inv11 S: eventually all f:File | f not in Protected after f in Protected
inv11 S: eventually all f:File | f not in Protected after f in Protected
inv11 S: eventually all f:File | f not in Protected after f in Protected

---
inv5 T: eventually some File not in File
inv5 T: eventually File after no File
inv5 S: eventually some f:File after f not in File
inv5 S: eventually (some f:File after f not in File)
inv5 S: eventually some f:File after (f not in File)
inv5 S: eventually some f:File | (f in File) after (f not in File)
inv5 S: eventually (some f:File | (f in File) after (f not in File))
inv5 T: eventually no (File && File')

---
inv9 S: always f:Protected | f not in Trash
inv9 T: no Protected' && Trash
inv9 T: always no Protected && Trash
inv9 T: always (no Protected && Trash)
inv9 T: always (no Protected && Trash)

---
inv12 S: always all f:File | eventually (f not in Trash after f in Trash)
inv12 S: always all f:File | eventually (f not in Trash after f in Trash')
inv12 S: eventually always f:File | f not in Protected after f in Protected'
inv12 S: eventually always f:File | f not in Protected implies f in Protected'
inv12 S: eventually always f:File | f not in Trash after f in Trash'
inv12 S: eventually always f:File | f not in Trash implies f in Trash'

---
inv15 S: eventually f in File implies f in Trash
inv15 S: eventually f:File | f in Trash
inv15 S: eventually f:File | f in Trash
inv15 S: eventually f:File | f not in Trash after f in Trash'
inv15 S: eventually f:File | f not in Trash after f in Trash

---
inv5 T: eventually some File not in File
inv5 T: eventually File after no File
inv5 S: eventually some f:File after f not in File
inv5 S: eventually (some f:File after f not in File)
inv5 S: eventually some f:File after (f not in File)
inv5 S: eventually some f:File | (f in File) after (f not in File)
inv5 S: eventually (some f:File | (f in File) after (f not in File))
inv5 T: eventually no (File && File')

---
inv9 S: always f:Protected | f not in Trash
inv9 T: no Protected' && Trash
inv9 T: always no Protected && Trash
inv9 T: always (no Protected && Trash)
inv9 T: always (no Protected && Trash)

---
inv12 S: always all f:File | eventually (f not in Trash after f in Trash)
inv12 S: always all f:File | eventually (f not in Trash after f in Trash')
inv12 S: eventually always f:File | f not in Protected after f in Protected'
inv12 S: eventually always f:File | f not in Protected implies f in Protected'
inv12 S: eventually always f:File | f not in Trash after f in Trash'
inv12 S: eventually always f:File | f not in Trash implies f in Trash'

---
inv15 S: eventually f in File implies f in Trash
inv15 S: eventually f:File | f in Trash
inv15 S: eventually f:File | f in Trash
inv15 S: eventually f:File | f not in Trash after f in Trash'
inv15 S: eventually f:File | f not in Trash after f in Trash

---
inv5 T: eventually some File not in File
inv5 T: eventually File after no File
inv5 S: eventually some f:File after f not in File
inv5 S: eventually (some f:File after f not in File)
inv5 S: eventually some f:File after (f not in File)
inv5 S: eventually some f:File | (f in File) after (f not in File)
inv5 S: eventually (some f:File | (f in File) after (f not in File))
inv5 T: eventually no (File && File')

---
inv9 S: always f:Protected | f not in Trash
inv9 T: no Protected' && Trash
inv9 T: always no Protected && Trash
inv9 T: always (no Protected && Trash)
inv9 T: always (no Protected && Trash)

---
inv12 S: always all f:File | eventually (f not in Trash after f in Trash)
inv12 S: always all f:File | eventually (f not in Trash after f in Trash')
inv12 S: eventually always f:File | f not in Protected after f in Protected'
inv12 S: eventually always f:File | f not in Protected implies f in Protected'
inv12 S: eventually always f:File | f not in Trash after f in Trash'
inv12 S: eventually always f:File | f not in Trash implies f in Trash'

---
inv15 S: eventually f in File implies f in Trash
inv15 S: eventually f:File | f in Trash
inv15 S: eventually f:File | f in Trash
inv15 S: eventually f:File | f not in Trash after f in Trash'
inv15 S: eventually f:File | f not in Trash after f in Trash

---
inv5 S: f in File	File' = File - f	Trash' = Trash +f
inv5 S: f in File	Trash' = Trash + f
inv5 S: some f in File	Trash' = Trash + f
inv5 S: some f: File	Trash' = Trash + f
inv5 S: some f:File	Trash' = Trash + f
inv5 S: some f:File and eventually Trash' = Trash + f

---
inv3 T: File = Trash + Protected	no Protected in Trash
inv3 T: File = Trash + Protected	no Protected in Trash
inv3 T: File = Trash + Protected	no Protected in Trash
inv3 T: File = Trash + Protected	no Protected or Trash
inv3 T: File = Trash + Protected	no Trash and Protected

---
inv3 T: File = Trash + Protected	no Protected in Trash
inv3 T: File = Trash + Protected	no Protected in Trash
inv3 T: File = Trash + Protected	no Protected in Trash
inv3 T: File = Trash + Protected	no Protected or Trash
inv3 T: File = Trash + Protected	no Trash and Protected

---
inv7 S: all f1 -> f2 : link | f1 not in Trash
inv7 T: all f : link | f not in Trash
inv7 T: all f1, f2 : link | f1 not in Trash
inv7 S: all f1 -> f2 : link | f1 not in Trash
inv7 S: all f1 -> f2 : link | f1 not in Trash

---
inv4 T: no Protected in Trash
inv4 T: no Protected in Trash
inv4 S: never Protected in Trash
inv4 S: i in Protected	i not in Trash
inv4 S: i = Protected	i in Protected	i not in Trash
inv4 S: i in Protected -> i not in Trash
inv4 S: some i in Protected
inv4 T: some File in Protected

---
inv5 T: always Trash&(not Protected)
inv5 T: not Protected
inv5 T: (not Protected) in Trash
inv5 T: always (not Protected) in Trash
inv5 S: (not in Protected) in Trash

---
inv5 S: all f:not in Protected | f in Trash
inv5 S: File/Unprotected in Trash
inv5 S: all f:File/Unprotected | f in Trash
inv5 S: all f:File\Unprotected | f in Trash
inv5 S: File\Unprotect in Trash
inv5 S: File-Unprotect in Trash

---
inv6 S: link.-link in iden
inv6 S: -link.link in iden
inv6 S: -link . link in iden
inv6 S: -link . link in iden
inv6 S: -link . link in iden
inv6 S: -link . link in iden

---
inv10 S: link.Trash & File.link,Trash
inv10 T: link.Trash & File.link.Trash
inv10 T: Trash.link & Trash.File.link
inv10 T: link & File.link.Trash
inv10 T: link & Trash.link
inv10 T: Trash.link & ~Trash.link
inv10 T: Trash.link & Trash .~link
inv10 T: Trash.link & Trash . ~ link

---
inv7 T: all f: File | no f.link in Trash
inv7 T: no File.link in Trash
inv7 T: no File.link in Trash
inv7 T: no File.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | some f.link implies no f.link in Trash
inv7 T: all f:File | no f.link in Trash

---
inv2 T: no File.Trash
inv2 S: all File.Trash
inv2 T: no Trash.File
inv2 S: all Trash
inv2 S: all Trash.File

---
inv4 S: Protected no in Trash
inv4 S: Protected no in Trash
inv4 T: Trash - Protected
inv4 T: Protected implies no Trash
inv4 T: Protected no Trash

---
inv1 S: f in File | ~(f in Trash)
inv1 S: f in File | f not in Trash
inv1 S: f in File iff f not in Trash
inv1 S: f in File -> f not in Trash
inv1 S: all f in File -> f not in Trash
inv1 S: f in File

---
inv6 S: all file in File : lone file.link
inv6 S: file in File : lone file.link
inv6 S: File : lone file.link
inv6 S: file.link -> lone file
inv6 S: file in File | file.link -> lone file
inv6 S: link: File.link, file:File |.link -> lone file

---
inv6 S: all file : File. | lone file.link
inv6 S: all file : File. | file.link -> lone file
inv6 S: all file : File. | file - file.link  lone file
inv6 S: all file : File. | file.^link -> lone file
inv6 S: all file : File. | lone file.^link
inv6 S: all link in File.link | link
inv6 T: all link : File.link | link

---
inv9 S: all disj f,f':File |  f.link & f'.link = none
inv9 S: no disj f,f':File |  f.link = f'.link
inv9 S: all disj f,f':File |  f.link != f'.link
inv9 S: all disj f,f':File |  f.link = f'.link
inv9 S: all disj f,f': File | f.link = f'.link
inv9 S: all disj f,f': File | f.link == f'.link
inv9 S: all disj f,f' | disj [f.link,f'.link]
inv9 S: all disj f1,f2 | disj [f1.link,f2.link]
inv9 S: all disj f1,f2 | disj[f1.link,f2.link]

---
inv9 S: all disj f1,f2:File | f1.link & f2.link = none	all f1,f2:File | disj[f1,f1.link] | disj[f1.link,f2.link]
inv9 S: all disj f1,f2:File | f1.link & f2.link = none	all f1,f2:File | disj[f1,f1.link] | disj[f2,f2.link]| disj[f1.link,f2.link]
inv9 S: all f1,f2:File | disj[f1,f1.link] | disj[f2,f2.link]| disj[f1.link,f2.link]
inv9 S: all disj f1,f2:File | disj[f1,f1.link] and disj[f2,f2.link] | f1.link & f2.link = none
inv9 S: all disj f1,f2:File | disj[f1,f1.link] and disj[f2,f2.link] | f1.link & f2.link = none
inv9 S: all disj f1,f2:File | disj[f1,f1.link] && disj[f2,f2.link] | f1.link & f2.link = none

---
inv4 S: Protected no in Trash
inv4 S: Protected no in Trash
inv4 T: Trash - Protected
inv4 T: Protected implies no Trash
inv4 T: Protected no Trash

---
inv4 S: Protected = no Trash
inv4 T: Protected = (no Trash)
inv4 T: Protected =  ~ Trash
inv4 S: all Protected | not Trash
inv4 T: no Protected in Trash
inv4 T: no Protected in Trash

---
inv9 T: all f : File | link.f in (File - link)
inv9 T: all f : File | link.f in (File - link)
inv9 T: all f : File | link.f in link
inv9 T: all f : File | f.link implies no link.f.link
inv9 T: all f : File | f.link implies no f.link
inv9 T: all f : File | f.link implies no link.(f.link)
inv9 T: all f : File | f.link implies no f.link.link
inv9 S: all f : File | f.link		/* If a link is deleted, so is the file it links to. */
inv9 S: all f : File | some f.link		/* If a link is deleted, so is the file it links to. */
inv9 S: all f : File | lone f.link		/* If a link is deleted, so is the file it links to. */

---
inv3 T: all t: File | some t.Trash
inv3 T: all t : File | some t.Trash
inv3 T: all t : File  | some t in Trash
inv3 T: all t : File  | some t in Trash
inv3 T: all t : File  | some t.link in Trash
inv3 T: all t : File  | some t.link.Trash
inv3 S: all t : File  | some t.link_Trash

---
inv4 S: Protected no in Trash
inv4 S: Protected not in Trash		/* All unprotected files are deleted.. */
inv4 T: not Protected & Trash
inv4 T: not Protected & Trash
inv4 T: not Protected & Trash

---
inv5 S: (File & no Preotected) in Trash
inv5 S: (File & not Preotected) in Trash
inv5 S: (File / Pretected) in Trash
inv5 S: (File / Protected) in Trash
inv5 S: (File \ Protected) in Trash
inv5 S: (File & no Protected) in Trash
inv5 T: (no Protected) in Trash
inv5 S: (File / Protected) in Trash
inv5 S: (File \ Protected) in Trash
inv5 S: (File \ Protected) in Trash
inv5 S: (File & no Protected) in Trash
inv5 S: (File & no Protected)

---
inv5 S: File \ not Protected in Trash
inv5 S: File / not Protected in Trash
inv5 S: File \ not Protected in Trash
inv5 S: File & not Protected in Trash
inv5 T: File and not Protected in Trash

---
inv5 S: (File & not Protected)
inv5 S: (File & no Protected)
inv5 T: (File & Protected)
inv5 T: File
inv5 T: File & Protected

---
inv5 T: (not Protected) & Trash
inv5 S: (File \ Protected) & Trash
inv5 S: (File / Protected) & Trash
inv5 T: (File not in Protected) & Trash
inv5 S: /not Protected & File in Trash
inv5 S: }
inv5 S: }
inv5 S: }

---
inv3 T: some File in Trash
inv3 T: File & Trash
inv3 T: some File in Trash
inv3 T: some File in Trash
inv3 T: some File in Trash

---
inv6 S: all file in File : lone file.link
inv6 S: file in File : lone file.link
inv6 S: File : lone file.link
inv6 S: file.link -> lone file
inv6 S: file in File | file.link -> lone file
inv6 S: link: File.link, file:File |.link -> lone file

---
inv6 S: all file : File. | lone file.link
inv6 S: all file : File. | file.link -> lone file
inv6 S: all file : File. | file - file.link  lone file
inv6 S: all file : File. | file.^link -> lone file
inv6 S: all file : File. | lone file.^link
inv6 S: all link in File.link | link
inv6 T: all link : File.link | link

---
inv9 S: all disj f,f':File |  f.link & f'.link = none
inv9 S: no disj f,f':File |  f.link = f'.link
inv9 S: all disj f,f':File |  f.link != f'.link
inv9 S: all disj f,f':File |  f.link = f'.link
inv9 S: all disj f,f': File | f.link = f'.link
inv9 S: all disj f,f': File | f.link == f'.link
inv9 S: all disj f,f' | disj [f.link,f'.link]
inv9 S: all disj f1,f2 | disj [f1.link,f2.link]
inv9 S: all disj f1,f2 | disj[f1.link,f2.link]

---
inv9 S: all disj f1,f2:File | f1.link & f2.link = none	all f1,f2:File | disj[f1,f1.link] | disj[f1.link,f2.link]
inv9 S: all disj f1,f2:File | f1.link & f2.link = none	all f1,f2:File | disj[f1,f1.link] | disj[f2,f2.link]| disj[f1.link,f2.link]
inv9 S: all f1,f2:File | disj[f1,f1.link] | disj[f2,f2.link]| disj[f1.link,f2.link]
inv9 S: all disj f1,f2:File | disj[f1,f1.link] and disj[f2,f2.link] | f1.link & f2.link = none
inv9 S: all disj f1,f2:File | disj[f1,f1.link] and disj[f2,f2.link] | f1.link & f2.link = none
inv9 S: all disj f1,f2:File | disj[f1,f1.link] && disj[f2,f2.link] | f1.link & f2.link = none

---
inv5 T: always Trash&(not Protected)
inv5 T: not Protected
inv5 T: (not Protected) in Trash
inv5 T: always (not Protected) in Trash
inv5 S: (not in Protected) in Trash

---
inv5 S: all f:not in Protected | f in Trash
inv5 S: File/Unprotected in Trash
inv5 S: all f:File/Unprotected | f in Trash
inv5 S: all f:File\Unprotected | f in Trash
inv5 S: File\Unprotect in Trash
inv5 S: File-Unprotect in Trash

---
inv7 T: all f : File | f->link not in Trash
inv7 T: all f : File | lone f->link not in Trash
inv7 T: all f : File | f->link not in Trash
inv7 T: all f : File | (f->link) not in Trash
inv7 T: all f : File | f->link not in Trash
inv7 T: all f : File | f->link not in Trash

---
inv7 T: no (File . File.link)
inv7 T: no (File . File.link)
inv7 T: no (File.link . File)
inv7 T: no (File . File.link)
inv7 T: no (File . File.link)

---
inv10 T: link -> Trash implies File.link -> Trash
inv10 T: link -> Trash implies File.link -> link.Trash
inv10 T: link -> Trash implies File -> Trash
inv10 T: link.File -> Trash
inv10 T: link.File -> File.Trash
inv10 T: link -> Trash
inv10 T: File.link -> Trash
inv10 T: File.link -> Trash implies File -> Trash

---
inv9 S: all f: File | not f^.link
inv9 T: all f: File | not f.^link
inv9 T: all f: File | not f.*link
inv9 S: all f: File |
inv9 S: all f: File |
inv9 S: all f: File |
inv9 S: all f: File |

---
inv10 S: all f: File | f.link in Trash implies all f.^link in Trash
inv10 S: all f: File | f.link in Trash implies all f.^link in Trash
inv10 S: all f: File |
inv10 S: all f: File |
inv10 S: all f: File |

---
inv6 S: all file in File : lone file.link
inv6 S: file in File : lone file.link
inv6 S: File : lone file.link
inv6 S: file.link -> lone file
inv6 S: file in File | file.link -> lone file
inv6 S: link: File.link, file:File |.link -> lone file

---
inv6 S: all file : File. | lone file.link
inv6 S: all file : File. | file.link -> lone file
inv6 S: all file : File. | file - file.link  lone file
inv6 S: all file : File. | file.^link -> lone file
inv6 S: all file : File. | lone file.^link
inv6 S: all link in File.link | link
inv6 T: all link : File.link | link

---
inv9 S: all disj f,f':File |  f.link & f'.link = none
inv9 S: no disj f,f':File |  f.link = f'.link
inv9 S: all disj f,f':File |  f.link != f'.link
inv9 S: all disj f,f':File |  f.link = f'.link
inv9 S: all disj f,f': File | f.link = f'.link
inv9 S: all disj f,f': File | f.link == f'.link
inv9 S: all disj f,f' | disj [f.link,f'.link]
inv9 S: all disj f1,f2 | disj [f1.link,f2.link]
inv9 S: all disj f1,f2 | disj[f1.link,f2.link]

---
inv9 S: all disj f1,f2:File | f1.link & f2.link = none	all f1,f2:File | disj[f1,f1.link] | disj[f1.link,f2.link]
inv9 S: all disj f1,f2:File | f1.link & f2.link = none	all f1,f2:File | disj[f1,f1.link] | disj[f2,f2.link]| disj[f1.link,f2.link]
inv9 S: all f1,f2:File | disj[f1,f1.link] | disj[f2,f2.link]| disj[f1.link,f2.link]
inv9 S: all disj f1,f2:File | disj[f1,f1.link] and disj[f2,f2.link] | f1.link & f2.link = none
inv9 S: all disj f1,f2:File | disj[f1,f1.link] and disj[f2,f2.link] | f1.link & f2.link = none
inv9 S: all disj f1,f2:File | disj[f1,f1.link] && disj[f2,f2.link] | f1.link & f2.link = none

---
inv3 T: File = Trash + Protected	no Protected in Trash
inv3 T: File = Trash + Protected	no Protected in Trash
inv3 T: File = Trash + Protected	no Protected in Trash
inv3 T: File = Trash + Protected	no Protected or Trash
inv3 T: File = Trash + Protected	no Trash and Protected

---
inv7 T: no t:Trash{ t.link not none}
inv7 T: no t:Trash{link not none}
inv7 T: no t:Trash{Trash.link not none}
inv7 S: all t:Trash | t.link = none}
inv7 S: all t:Trash | t.link = none}

---
inv10 T: Trash . link :> Trash
inv10 T: (Trash . link) :> Trash
inv10 T: link.Trash :> Trash
inv10 T: link.link & Trash = link.link
inv10 T: (link.link) & Trash = link.link
inv10 T: Trash <: link => link :> Trash
inv10 T: (Trash <: link) => (link :> Trash)

---
inv3 T: File = Trash + Protected	no Protected in Trash
inv3 T: File = Trash + Protected	no Protected in Trash
inv3 T: File = Trash + Protected	no Protected in Trash
inv3 T: File = Trash + Protected	no Protected or Trash
inv3 T: File = Trash + Protected	no Trash and Protected

---
inv7 T: all f: File | no f.link in Trash
inv7 T: no File.link in Trash
inv7 T: no File.link in Trash
inv7 T: no File.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | no f.link in Trash
inv7 T: all f:File | some f.link implies no f.link in Trash
inv7 T: all f:File | no f.link in Trash

---
inv4 S: Protected no in Trash
inv4 S: Protected no in Trash
inv4 T: Trash - Protected
inv4 T: Protected implies no Trash
inv4 T: Protected no Trash

---
inv7 T: all f,x:File | f->x in link implies x-Trash
inv7 T: all f,x:File | f.link = x in link implies x not in Trash
inv7 T: all f,x:File | f.link x in link
inv7 T: all f,x:File | f.link x
inv7 T: all x:File | x.link implies  x not in Trash
inv7 T: all x:File | link.x implies  x not in Trash

---
inv7 T: all f:File |  link.f  implies f not in Trash
inv7 T: all f:File |  link.f  implies f not in Trash
inv7 T: all f:File |  link.f  implies f not in Trash
inv7 T: all f:File |  link.f  implies f not in Trash
inv7 T: all f:File |  link.f  implies f not in Trash
inv7 T: all f:File |  link.f  implies f not in Trash

---
inv9 T: all f:File | f.link implies no((f.link).link)
inv9 T: all f:File | f.link implies not((f.link).link)
inv9 T: all f:File | f.link implies no (f.link.link)
inv9 T: all f:File | f.link implies  (f.link.link) not in link
inv9 T: all f:File |  f.link implies f.link.link
inv9 T: all f:File |  f.link implies f.(link.link)
inv9 T: all f:File |  f.link implies ((f.link).link)
inv9 T: all f:File |  f.link implies ((f.link).link) in Trash
inv9 T: all f:File |  f.link

---
inv1 T: all files : univ | no files in Trash implies none Trash
inv1 T: all files : univ | no files in Trash implies none in Trash
inv1 T: all files : univ | no files in Trash implies none file in Trash
inv1 T: all files : univ | files in Trash implies none file
inv1 S: all files : univ | files in Trash implies no file

---
inv2 T: File & Trash
inv2 T: File - Trash
inv2 S: Trash - Files
inv2 S: Trash & Files
inv2 S: no Trash & Files

---
inv9 S: all f1 : File | not in f1.link
inv9 S: all f1 : File | not in f1.^link
inv9 S: all f1 : File | not in f1^link
inv9 T: all f1, f2, f3 : File |  f1.link implies no f2.link
inv9 T: all f1, f2, f3 : File | f1.link - f2.link
inv9 T: all f1, f2 : File | f1.link - f2.link
inv9 S: all f1, f2 : File | f1.link & no f2.link
inv9 T: all f1, f2 : File | f1.link - f2.link
inv9 S: all f1.link - f2.link
inv9 T: all f1, f2 : File | f1.link - f2.link
inv9 T: all f1, f2 : File | f1.link -> f2.link

---
inv10 T: all f1, f2 : File | f1.link in Trash & f1 in Trash
inv10 T: all f : File | f.link in Trash & f in Trash
inv10 T: all f : File | no f.link in Trash & f in Trash
inv10 T: all f : File | no f.link in Trash + f in Trash
inv10 T: all f : File | no f.link in Trash & f in Trash
inv10 T: all f : File | f.link in Trash & f in Trash
inv10 T: all f : File | f.link in Trash -> f in Trash
inv10 T: all f : File | no f.link in Trash & f in Trash
inv10 T: all f : File | no (f.link & f) in Trash
inv10 T: all f : File | no (f.link & f) in Trash
inv10 T: all f : File | no (f.link & f) in Trash
inv10 T: all f : File | no (f.link & f) in Trash
inv10 T: all f : File | no (f.link & f) in Trash
inv10 T: all f : File | no (f.link & f) in Trash
inv10 T: all f : File | no (f.link & f) in Trash

---
inv9 T: all f1, f2 : File |	f1 != f2 implies f1.link and f2.link = {}
inv9 T: all f1, f2 : File |	f1 != f2 implies f1.link * f2.link = {}
inv9 S: all f1, f2 : File |	f1 != f2 implies (f1.link * f2.link) = {}
inv9 T: all f1, f2 : File |	f1 != f2 implies (f1.link & f2.link) = {}
inv9 T: all f1, f2 : File |	f1 != f2 implies f1.link & f2.link = {}
inv9 T: all f1, f2 : File |	f1 != f2 implies f1.link & f2.link in {}
inv9 T: all f1, f2 : File |	f1 != f2 implies none f1.link & f2.link
inv9 S: all f1, f2 : File |	f1 != f2 implies (none f1.link & f2.link)
inv9 S: all f1, f2 : File |	f1 != f2 implies (none (f1.link & f2.link))

---
inv3 T: File & Trash
inv3 T: File and Trash
inv3 T: File & (Trash -> univ)
inv3 T: File & (Trash and univ)
inv3 S: File & (Trash x univ)
inv3 S: File & (Trash * univ)
inv3 T: Trash <: File

---
inv4 S: Protected no in Trash
inv4 S: Protected no in Trash
inv4 T: Trash - Protected
inv4 T: Protected implies no Trash
inv4 T: Protected no Trash

---
inv5 T: not Protected & Trash
inv6 S: link.-link in iden
inv6 S: -link.link in iden
inv6 S: -link . link in iden
inv6 S: -link . link in iden
inv6 S: -link . link in iden
inv6 S: -link . link in iden

---
inv10 S: link.Trash & File.link,Trash
inv10 T: link.Trash & File.link.Trash
inv10 T: Trash.link & Trash.File.link
inv10 T: link & File.link.Trash
inv10 T: link & Trash.link
inv10 T: Trash.link & ~Trash.link
inv10 T: Trash.link & Trash .~link
inv10 T: Trash.link & Trash . ~ link

---
inv6 T: all f : File | lone f.link	-link.link in iden
inv6 S: -link.link in iden
inv6 S: -link .link in iden
inv6 S: -link . link in iden
inv6 S: -link . link in iden
inv6 S: -link . link in iden
inv6 S: - link . link in iden
inv6 S: -link . link in iden
inv6 S: -link . link in iden
inv6 S: -link . link in iden
inv6 S: -link . link in iden

---
inv7 T: link no Trash
inv7 T: link & Trash
inv7 S: link & no Trash
inv7 S: all f,g | f->g in link & no Trash
inv7 S: all f,g : File | f->g in link & no Trash

---
inv10 T: link.Trash & link.link.Trash
inv10 T: link.Trash & link.link
inv10 T: Trash.link & (link.link in Trash)
inv10 T: link.Trash & (Trash.link in Trash)
inv10 T: link.Trash & (Trash.link in Trash)

---
inv5 T: always Trash&(not Protected)
inv5 T: not Protected
inv5 T: (not Protected) in Trash
inv5 T: always (not Protected) in Trash
inv5 S: (not in Protected) in Trash

---
inv5 S: all f:not in Protected | f in Trash
inv5 S: File/Unprotected in Trash
inv5 S: all f:File/Unprotected | f in Trash
inv5 S: all f:File\Unprotected | f in Trash
inv5 S: File\Unprotect in Trash
inv5 S: File-Unprotect in Trash

---
inv10 S: link.Trash implies Trash.linkÂº
inv10 S: link.Trash implies Trash.link~
inv10 T: link.Trash implies Trash.~link
inv10 T: link.Trash:>Trash
inv10 T: link.Trash implies ^link in Trash

---
inv4 S: Protected no in Trash
inv4 S: Protected no in Trash
inv4 T: Trash - Protected
inv4 T: Protected implies no Trash
inv4 T: Protected no Trash

---
inv6 S: link.-link in iden
inv6 S: -link.link in iden
inv6 S: -link . link in iden
inv6 S: -link . link in iden
inv6 S: -link . link in iden
inv6 S: -link . link in iden

---
inv10 S: link.Trash & File.link,Trash
inv10 T: link.Trash & File.link.Trash
inv10 T: Trash.link & Trash.File.link
inv10 T: link & File.link.Trash
inv10 T: link & Trash.link
inv10 T: Trash.link & ~Trash.link
inv10 T: Trash.link & Trash .~link
inv10 T: Trash.link & Trash . ~ link

---

