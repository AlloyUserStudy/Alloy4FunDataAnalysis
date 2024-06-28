-- equiv pair start,4
all x, y:Student | one x.projects & y.projects
-- div,1
all s1,s2: Student | one s1.projects&s2.projects
-- div,2
all s1, s2 : Student | one p : Project | p in s1.projects and p in s2.projects
-- div,1
-- equiv pair end
-- equiv pair start,32
all s1,s2 : Student | no s1.projects & s2.projects
-- div,1
all s : Student, p : s.projects | ((Person<:projects).p)-s not in Person
-- div,1
all s1, s2 : Student | no p : Project | s1 in projects.p and s2 in projects.p
-- div,1
all s: Student | all p: s.projects | Person :> ((projects.p)-s) not in projects.(s.projects)
-- div,1
all s1, s2 : Student | all p : Project | p in s1.projects and p in s2.projects  implies s1!=s2
-- div,1
all s1,s2 : Student | all p1,p2 : Project |
  	(s1->p1 in projects and s2->p1 in projects) implies
  	(s1->p2 not in projects)
-- div,1
all s1,s2: Student, p1,p2: Project | p1 in s1.projects and p2 in s1.projects and p1 in s2.projects implies p2 not in s2.projects
-- div,3
all s1,s2: Student, p1,p2: Project | p1 in s1.projects and p1 in s1.projects and p1 in s2.projects implies p2 not in s2.projects
-- div,1
all s1, s2 : Student, p1,p2 : Project | p1 in s1.projects and p1 in s2.projects and p1 in s2.projects implies p2 not in s2.projects
-- div,1
all s1,s2 : Student , p1,p2: Project | p1 in s1.projects and p1 in s2.projects implies (p2 not in s1.projects) or (p2 not in s2.projects)
-- div,1
all s1, s2 : Student | all p1, p2 : Project | p1 in s1.projects&s2.projects and p2 in s1.projects implies p2 not in s2.projects
-- div,1
all s1, s2 : Student | all p1, p2 : Project | (p1+p2) in s1.projects and (p1+p2) in s2.projects implies p1!=p2 and s1!=s2
-- div,1
all s1,s2:Student, p1,p2:Project | s1->p1 in projects and s2->p1 in projects and s1->p2 in projects implies s2->p2 not in projects
-- div,1
all p1, p2 : Project, s1, s2: Student | not (s1->p1 in projects and s1->p2 in projects and s2->p1 in projects and s2->p2 in projects)
-- div,1
all s1,s2: Student, p1,p2:Project | s1->p1 in projects and s2->p1 in projects implies not (s1->p2 in projects and s2->p2 in projects)
-- div,1
all s1, s2 : Student | all p1, p2 : Project | p1 in s1.projects and p1 in s2.projects and p2 in s1.projects implies p2 not in s2.projects
-- div,1
all p1,p2 : Project | all s1,s2 : Student | p1 in s1.projects and p1 in s2.projects implies p2 not in s1.projects or p2 not in s2.projects
-- div,1
all p1,p2 : Project | all s1,s2 : Student | (p1 in s1.projects and p1 in s2.projects) implies (p2 not in s1.projects or p2 not in s2.projects)
-- div,3
not some s1, s2: Student | some p1, p2: Project| s1->p1 in projects and s2->p1 in projects and s1->p2 in projects and s2->p2 in projects
-- div,1
all s1,s2 : Student | all p1,p2 : Project |
  	(s1->p1 in projects and s2->p1 in projects) implies
  	(s1->p2 not in projects or s2->p2 not in projects)
-- div,2
all s1,s2,s3 : Student | all p1,p2 : Project | p1 in s1.projects and p1 in s2.projects and p2 in s1.projects and p2 in s3.projects implies s2!=s3
-- div,1
all s1, s2 : Student | all p1 : Project | p1 in s1.projects and p1 in s2.projects implies (some p2 : Project | p2 in s1.projects and p2 not in s2.projects)
-- div,1
all s1,s2 : Person , p1,p2: Project |s1 in Student and s2 in Student and p1 in s1.projects and p1 in s2.projects implies (p2 not in s1.projects) or (p2 not in s2.projects)
-- div,1
all s1,s2,p,p1 : univ | s1 in Student and s2 in Student and p in Project and p1 in Project and s1->p in Person <: projects and s2->p in Person <: projects and s1->p1 in Person <: projects implies not s2->p1 in Person <:projects
-- div,1
all s1,s2,p,p1,p2 : univ | s1 in Student and s2 in Student and p in Project and p1 in Project and p2 in Project and s1->p in Person <: projects and s2->p in Person <:projects and s1->p1 in Person <: projects and s2->p2 in Person <:projects implies p1!=p2
-- div,1
all s1:Student,s2:Student, p1:Project | s1->p1 in projects and s2->p1 in projects implies all p2:Project | (s1->p2 in projects implies s2->p2 not in projects) and (s2->p2 in projects implies s1->p2 not in projects)
-- div,1
all s1:Student,s2:Student, p1:Project | s1->p1 in projects and s2->p1 in projects implies all p2:Project | s1->p2 in projects implies s2->p2 not in projects
  	all s1:Student,s2:Student, p1:Project | s1->p1 in projects and s2->p1 in projects implies all p2:Project | s2->p2 in projects implies s1->p2 not in projects
-- div,1
-- equiv pair end
-- equiv pair start,63
all s,t : Student | lone (s.projects & t.projects)
-- div,1
all s, s2 : Student | lone s.projects & s2.projects
-- div,1
all s,s1 : Student | lone (s.projects & s1.projects)
-- div,2
all s1,s2: Student | lone s1.projects&s2.projects
-- div,22
all c1,c2 : Student | lone c1.projects & c2.projects
-- div,1
all s1: Student | lone s1.projects&(Student).projects
-- div,1
all s1 : Student, s2 : s1.projects.~(this/Person <: projects) |
  lone (s1.projects & s2.projects)
-- div,1
all s1, s2 : Student | lone p : Project | s1 in projects.p and s2 in projects.p
-- div,2
all s1,s2:Student | lone p:Project | s1->p in projects and s2->p in projects
-- div,5
all s : Student | all disj p1,p2 : s.projects | one (Person.projects & p1) & (Person.projects & p2)
-- div,1
all s : Student | all disj p1,p2 : s.projects | one (projects & Person->p1) & (projects & Person->p2)
-- div,1
all s1,s2: Student, p: Project |p in s1.projects and p in s2.projects implies  s2 not in projects.(Project-p)
-- div,1
all s1, s2: Student | all p1, p2: Project| (p1+p2) in s1.projects and (p1+p2) in s2.projects implies p1=p2
-- div,3
all s1,s2: Student, p: Project | p in s1.projects and p in s2.projects implies no s1.projects-p&s2.projects-p
-- div,2
all s1,s2:Student,p,p1:Project | p in s1.projects and p in s2.projects and p1 in s1.projects and p1 in s2.projects implies p=p1
-- div,1
all p1, p2:Project, s1, s2: Student | p1 in s1.projects && p1 in s2.projects && p2 in s1.projects && p2 in s2.projects => p1=p2
-- div,2
all s1,s2:Student,p1,p2:Project | s1->p1 in projects and s2->p1 in projects and s1->p2 in projects and s2->p2 in projects implies p1=p2
-- div,1
all s1,s2:Student | all p1,p2:Project | p1 in s1.projects and p2 in s1.projects and p1 in s2.projects and p2 in s2.projects implies p1 = p2
-- div,2
all s1, s2: Student | all p1, p2: Project| p1 in s1.projects and p1 in s2.projects and p2 in s1.projects and p2 in s2.projects implies p1=p2
-- div,2
all x,y:Student, p:Project | (x->p in projects and y->p in projects) implies all p1:Project-p | x->p1 not in projects or y->p1 not in projects
-- div,4
all x,y:Student, p:Project | (x->p in projects and y->p in projects) implies (all p1:Project-p | x->p1 not in projects and y->p1 not in projects)
-- div,1
all s1, s2 : Student, p : Project | (p in s1.projects and p in s2.projects) => all p1 : (Project - p) | p1 not in s1.projects or p1 not in s2.projects
-- div,1
all s1, s2: Student, p: Project | s1->p in projects and s2->p in projects
  implies (not some p2: Project| s1->p2 in projects and s2->p2 in projects and p!=p2)
-- div,1
all student1, student2 : Student | all project1, project2: Project |((project1 + project2 ) in student1.projects and (project1 + project2 ) in student2.projects)implies project1 = project2
-- div,2
all s1,s2,p : univ | s1 in Student and s2 in Student and p in Project and s1->p in Person <: projects and s2->p in Person <: projects implies all p1 : Project | p1!=p and s1->p1 in Person <: projects implies not s2->p1 in Person <: projects
-- div,1
all s1, s2: Student, p: Project | s1->p in Student <: projects and s2->p in Student <: projects
  implies (not some p2: Project| s1->p2 in Student <: projects and s2->p2 in Student <: projects and p!=p2)
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj x, y : Student | one x.projects & y.projects
-- div,1
all s1,s2:Student | s1!=s2 implies one s1.projects & s2.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student , p,p1:Project | (p+p1) in s.projects
-- div,2
-- equiv pair end
-- equiv pair start,2
some s1, s2: Student | lone (s1.projects & s2.projects)
-- div,1
some s1,s2:Student | all p1,p2:Project | p1 in s1.projects and p2 in s1.projects and p1 in s2.projects and p2 in s2.projects implies p1 = p2
-- div,1
-- equiv pair end
-- equiv pair start,1
all s1: Student | lone s1.projects&(Person-s1).projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all s1: Student | lone s1.projects&(Student-s1).projects
-- div,2
-- equiv pair end
-- equiv pair start,15
all x, y:Student | one x.projects & y.projects and x != y
-- div,1
all x, y:Student | lone x.projects & y.projects and x != y
-- div,1
all x, y:Student | x!=y and lone x.projects & y.projects
-- div,1
all s,s1 : Student | s!=s1 and one (s.projects & s1.projects)
-- div,1
all s,s1 : Student | s!=s1 and lone (s.projects & s1.projects)
-- div,3
all s,s1 : Student | s!=s1 and some (s.projects & s1.projects)
-- div,1
all s1,s2:Student | s1!=s2 and  one s1.projects & s2.projects
-- div,2
all s1,s2:Student | lone s1.projects & s2.projects and s1 != s2
-- div,3
all s1,s2: Student | s1 != s2 and lone s1.projects&s2.projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all s1,s2: Person-Professor | lone s1.projects&s2.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all s1,s2: Student-Professor | lone s1.projects&s2.projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all s,s1 : Student | s!=s1 iff lone (s.projects & s1.projects)
-- div,1
-- equiv pair end
-- equiv pair start,6
all s : Student , p1,p2 : Project| p1!=p2 and p1 in s.projects
-- div,1
all s : Student , p1,p2 : Project| p1!=p2 and (p1+p2) in s.projects
-- div,2
all p1, p2 : Project | all s1, s2: Student | p1 != p2 and s1 != s2 and  (s1->p1 in projects and s1->p2 in projects and s2->p1 in projects and s2->p2 in projects)
-- div,1
all s:Student, p:Project | p in s.projects and some s2:Student-s | p in s2.projects implies all ps:Project | ps in s.projects implies ps not in s2.projects
-- div,1
all s:Student, p:Project | p in s.projects and some s2:Student-s | p in s2.projects implies all ps:Project | ps in s.projects and ps not in s2.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student , u : Student - s | lone u.projects & u.projects
-- div,2
-- equiv pair end
-- equiv pair start,2
all s1: Student | some s2: Student | lone s1.projects&s2.projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all s,s1 : Student | lone (s.projects & s1.projects) implies s!=s1
-- div,1
-- equiv pair end
-- equiv pair start,1
some s1, s2: (Person - Professor) | lone (s1.projects & s2.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s1,s2: Student | s1 != s2 implies one (s1.projects + s2.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s1,s2: Student | s1 != s2 implies lone (s1.projects + s2.projects)
-- div,1
-- equiv pair end
-- equiv pair start,21
all disj s1, s2: Student, pj: Project | pj in s1.projects implies pj not in s2.projects
-- div,1
all disj s1, s2 : Student, p1, p2 : Project | (s1 in projects.p1 and s2 in projects.p1) implies p1 != p2
-- div,1
all s1, s2 : Student, p1, p2 : Project | 
  		s1 != s2 && s1->p1 in projects && s2->p2 in projects => p1 != p2
-- div,1
all disj s1, s2 : Student, p1, p2 : Project | (s1 in projects.p1 and s2 in projects.p1) implies (s2 not in projects.p2)
-- div,1
all disj s1, s2: Student, pj: Project | (pj in s1.projects implies pj not in s2.projects) && (pj in s2.projects implies pj not in s1.projects)
-- div,1
all s1, s2 : Student | all p1, p2 : Project | p1+p2 in s1.projects and p1 in s2.projects and s1!=s2 implies p2 not in s2.projects
-- div,1
all disj s1, s2 : Student, p1, p2 : Project | (p1 in s1.projects and p2 in s2.projects) implies (s1 not in projects.p2 or s2 not in projects.p2)
-- div,1
all disj s1, s2 : Student, p1, p2 : Project | (s1 in projects.p1 and s2 in projects.p1) implies (s1 not in projects.p2 or s2 not in projects.p2)
-- div,1
all disj s1, s2 : Student, p1, p2 : Project | (p1 in s1.projects and p2 in s2.projects) implies (p2 not in s1.projects or p2 not in s2.projects)
-- div,1
all disj s1,s2 : Student, p1,p2 : Project | (s1->p1 in projects and s2->p1 in projects) implies ( (s1->p2 not in projects) or (s2->p2 not in projects) )
-- div,1
all s1, s2: Student | all p1, p2: Project| p1 in s1.projects and p1 in s2.projects and p2 in s1.projects and p2 in s2.projects implies s1=s2
-- div,1
all s1,s2 : Student | all p1,p2 : Project | s1!=s2 and s1->p1 in projects and s2->p1 in projects and s1->p2 in projects implies s2->p2 not in projects
-- div,1
not some s1, s2: Student | some p1, p2: Project| s1->p1 in projects and s2->p1 in projects and s1->p2 in projects and s2->p2 in projects and s1 != s2
-- div,6
all s1, s2: Student | all p1, p2: Project | (s1->p1 in projects and s2->p1 in projects and s1!=s2) implies
  		( (s1->p2 not in projects) or (s2->p2 not in projects) )
-- div,2
all s1,s2 : Student | all p1,p2 : Project |
  	(s1->p1 in projects and s2->p1 in projects and s1!=s2) implies
  	( (s1->p2 not in projects) or (s2->p2 not in projects) and s1!=s2)
-- div,1
-- equiv pair end
-- equiv pair start,2
all s1,s2:Student | one s1.projects & s2.projects implies one s1.projects + s2.projects
-- div,1
all s1,s2:Student | s1!=s2 and  one s1.projects & s2.projects implies one s1.projects + s2.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all s1,s2:Student | lone s1.projects & s2.projects implies lone s1.projects + s2.projects
-- div,1
all s1,s2:Student | s1!=s2 and  lone s1.projects & s2.projects implies lone s1.projects + s2.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s1,s2:Student | s1.projects & s2.projects = s1.projects + s2.projects implies s1 = s2
-- div,1
-- equiv pair end
-- equiv pair start,1
all s,t : Student | one p : Project | s != t implies s->p in projects and t->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all s,t : Student | lone p : Project | s != t implies s->p in projects and t->p in projects
-- div,1
all s,t : Student | lone p : Project | s != t implies s->p in Student <: projects and t->p in Student <: projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, disj p1,p2 : s.projects | Person <: p1.~projects != Person <: p2.~projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, p : s.projects | ((Person<:projects).p)-s not in ((s.(Person<:projects))-p)
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj s1, s2 : Student | lone s1.projects & s2.projects implies no s1.projects & s2.projects
-- div,1
-- equiv pair end
-- equiv pair start,7
all s : Student , p:s.projects | (Person :> (p.~projects)) not in (((s.projects)-{p}).~projects)
-- div,3
all s : Student, disj p1,p2: s.projects | Person <: projects.p1 not in Person <: projects.p2
-- div,1
all s: Student | all p: s.projects | Person :> projects.p not in projects.(s.projects-p)
-- div,2
all s: Student | all p: s.projects | Person :> ((projects.p)-p) not in projects.(s.projects-p)
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj s1, s2 : Student | lone s1.projects & s2.projects implies one s1.projects & s2.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c: Course, g1,g2: Grade | c->s->g1 in grades and c->s->g2 in grades implies g1=g2
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, p1,p2 : Project, s1,s2: Student | p1 in s1.projects and p2 in s2.projects => p1=p2
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Student, p : s.projects | ((Person<:projects).p)-s&(Person<:projects).((s.projects)-p)=none
-- div,3
-- equiv pair end
-- equiv pair start,15
all s : Student, p : s.projects | ((Person<:projects).p)-s not in (Person<:projects).((s.projects)-p)
-- div,4
all s: Student | all p: s.projects | Person :> ((projects.p)-s) not in projects.(s.projects-p)
-- div,7
all s: Student | all p: s.projects | Person <: ((projects.p)-s) not in projects.((s.projects)-p)
-- div,2
all s : Student , p:s.projects | (Person :> (p.~projects)-{s}) not in (((s.projects)-{p}).~projects)-{s}
-- div,2
-- equiv pair end
-- equiv pair start,2
all s : Student, p : s.projects | ((Student<:projects).p)-s not in (Person<:projects).((s.projects)-p)
-- div,1
all s : Student, p : s.projects | ((Student<:projects).p)-s not in (Student<:projects).((s.projects)-p)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Person-Professor, p : s.projects | ((Person<:projects).p)-s&(Person<:projects).((s.projects)-p)=none
-- div,1
-- equiv pair end
-- equiv pair start,4
all s : Student, disj p,p1,p2 : s.projects |   Person <: projects.p1 & Person<: projects.p2 not in Person <: projects.p
-- div,1
all s : Student, disj p,p1,p2 : s.projects | Person <: projects.p1 in Person<: projects.p2 implies no Person <: projects.p & Person <: projects.p1
-- div,1
all s : Student, disj p,p1,p2 : s.projects | some Person <: projects.p1 & Person<: projects.p2 implies no Person <: projects.p & Person <: projects.p1
-- div,1
all s : Student, disj p,p1,p2 : s.projects | some Person <: projects.p1 & Person<: projects.p2 implies  Person <: projects.p1 & Person<: projects.p2 not in Person <: projects.p
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj s1,s2 : Student, p : Project | p in s1.projects and p in s2.projects implies no Project-p & (s1.projects+s2.projects)
-- div,1
all disj p1,p2 : Project, disj s1,s2: Student | p1 in s1.projects and p1 in s2.projects => p2 in s1.projects and p2 not in s2.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj p1,p2 : Project, disj s1,s2: Student | p1 in s1.projects and p1 in s2.projects => p2 in s1.projects or p2 in s2.projects
-- div,1
all s : Student , u : Student - s, p :Project, r : Project-p | p in s.projects and p in u.projects implies r in s.projects or r in u.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
not some s1, s2: Student | all p1, p2: Project| s1->p1 in projects and s2->p1 in projects and s1->p2 in projects and s2->p2 in projects
-- div,1
all s1:Student,s2:Student | some p1:Project | s1->p1 in projects and s2->p1 in projects implies all p2:Project | s1->p2 in projects implies s2->p2 not in projects
  	all s1:Student,s2:Student | some p1:Project | s1->p1 in projects and s2->p1 in projects implies all p2:Project | s2->p2 in projects implies s1->p2 not in projects
-- div,1
-- equiv pair end
-- equiv pair start,4
all disj p1,p2 : Project, disj s1,s2: Student | p1 in s1.projects and p2 in s2.projects => p1 not in s2.projects and p2 not in s1.projects
-- div,1
all disj s1, s2 : Student, disj p1, p2 : Project | (p1 in s1.projects and p2 in s2.projects) implies (p2 not in s1.projects or p2 not in s2.projects)
-- div,2
all s1, s2 : Student | all p1,p2 : Project | p1 in s1.projects and p1 in s2.projects and s1 != s2 and p1 != p2 implies ( p2 not in s1.projects and p2 not in s2.projects)
-- div,1
-- equiv pair end
-- equiv pair start,6
all s1,s2:Student | one p:Project | p in s1.projects and p in s2.projects implies all ps:Project-p | ps in s1.projects or ps in s2.projects
-- div,3
all s1,s2:Student | one p:Project | p in s1.projects and p in s2.projects implies all ps:Project-p | ps in s1.projects and ps not in s2.projects
  	all s1,s2:Student | one p:Project | p in s1.projects and p in s2.projects implies all ps:Project-p | ps in s2.projects and ps not in s1.projects
-- div,1
all s1,s2:Student | one p:Project | s1->p in projects and s2->p in projects implies all ps:Project-p | s1->ps in projects and s2->ps not in projects
  	all s1,s2:Student | one p:Project | s1->p in projects and s2->p in projects implies all ps:Project-p | s2->ps in projects and s1->ps not in projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all s1,s2:Student | some p1,p2:Project | p1 in s1.projects and p2 in s1.projects and p1 in s2.projects and p2 in s2.projects implies p1 = p2
-- div,1
-- equiv pair end
-- equiv pair start,1
some s1,s2:Student | some p1,p2:Project | p1 in s1.projects and p2 in s1.projects and p1 in s2.projects and p2 in s2.projects implies p1 = p2
-- div,1
-- equiv pair end
-- equiv pair start,3
all s1,s2 : Student | all p1,p2 : Project |
  	(s1->p1 in projects and s2->p1 in projects) implies
  	(s1->p2 not in projects or s2->p2 in projects)
-- div,1
all s1, s2 : Student | all p1,p2 : Project | p1!=p2 and s1!=s2 and p1 in s1.projects and p1 in s2.projects implies p2 not in s1.projects implies p2 not in s2.projects
-- div,1
all s1, s2 : Student | all p1 : Project | s1 != s2 and p1 in s1.projects and p1 in s2.projects implies (all p2 : Project | p1 != p2 and p2 not in s1.projects implies p2 not in s2.projects)
-- div,1
-- equiv pair end
-- equiv pair start,2
not some s1, s2: Student | all p1, p2: Project| s1->p1 in projects and s2->p1 in projects and s1->p2 in projects and s2->p2 in projects and s1 != s2
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Course, disj p1,p2 : Project, disj s1,s2: Student | p1 in s1.projects and p2 in s2.projects => p1 not in s2.projects and p2 not in s1.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s1, s2: Student | all p1, p2: Project| p1 in s1.projects and p1 in s2.projects and p2 in s1.projects and p2 in s2.projects implies s1=s2 and p1=p2
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2 : Project | all s1, s2: Student | p1 != p2 and s1 != s2 => (s1->p1 in projects and s1->p2 in projects and s2->p1 in projects and s2->p2 in projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s1, s2 : Student | all p1 : Project | p1 in s1.projects and p1 in s2.projects implies (some p2 : Project | p2 in s1.projects implies p2 not in s2.projects)
-- div,1
-- equiv pair end
-- equiv pair start,2
not some s: Student | some c: Course| s->c in teaches
  
  
  
  all s1, s2: Student, p: Project | s1->p in Person <: projects and s2->p in Person <: projects
  implies (not some p2: Project| s1->p2 in Person <: projects and s2->p2 in Person <: projects and p!=p2)
-- div,1
not some s: Student | some c: Course| s->c in teaches
  
  
  
  all s1, s2: Student, p: Project | s1->p in Student <: projects and s2->p in Student <: projects
  implies (not some p2: Project| s1->p2 in Student <: projects and s2->p2 in Student <: projects and p!=p2)
-- div,1
-- equiv pair end
-- equiv pair start,2
all s1,s2:Student, p:Project | p in s1.projects and p in s2.projects implies all ps:Project-p | ps in s1.projects and ps not in s2.projects
  	all s1,s2:Student, p:Project | p in s1.projects and p in s2.projects implies all ps:Project-p | ps not in s1.projects and ps in s2.projects
-- div,1
all s1,s2:Student, p:Project | p in s1.projects and p in s2.projects implies all ps:Project-p | ps in s1.projects and ps not in s2.projects
  	all s1,s2:Student, p:Project | p in s1.projects and p in s2.projects implies all ps:Project-p | ps in s2.projects and ps not in s1.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s1,s2:Student | one p:Project | p in s1.projects and p in s2.projects implies all ps:Project-p | ps in s1.projects implies ps not in s2.projects
  	all s1,s2:Student | one p:Project | p in s1.projects and p in s2.projects implies all ps:Project-p | ps in s2.projects implies ps not in s1.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s1:Student,s2:Student | one p1:Project | s1->p1 in projects and s2->p1 in projects implies all p2:Project | s1->p2 in projects implies s2->p2 not in projects
  	all s1:Student,s2:Student | one p1:Project | s1->p1 in projects and s2->p1 in projects implies all p2:Project | s2->p2 in projects implies s1->p2 not in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
not some s1, s2: Student | all p1, p2: Project| s1->p1 in  Person <: projects and s2->p1 in  Person <: projects and s1->p2 in  Person <: projects and s2->p2 in  Person <: projects and s1 != s2 
  
  all s1, s2: Student, p: Project | s1->p in Person <: projects and s2->p in Person <: projects
  implies (not some p2: Project| s1->p2 in Person <: projects and s2->p2 in Person <: projects and p!=p2)
-- div,1
-- equiv pair end
-- equiv pair start,1
not some s: Student | some c: Course| s->c in teaches
  
  not some s1, s2: Student | all p1, p2: Project| s1->p1 in  Person <: projects and s2->p1 in  Person <: projects and s1->p2 in  Person <: projects and s2->p2 in  Person <: projects and s1 != s2 
  
  all s1, s2: Student, p: Project | s1->p in Person <: projects and s2->p in Person <: projects
  implies (not some p2: Project| s1->p2 in Person <: projects and s2->p2 in Person <: projects and p!=p2)
-- div,1
-- equiv pair end
