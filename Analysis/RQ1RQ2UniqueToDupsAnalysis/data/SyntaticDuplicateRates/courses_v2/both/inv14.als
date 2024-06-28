all s1,s2 : Student | lone (s1+s2).(Person <: projects)
-- div,1
all s1,s2 : Student | lone (s1+s2).enrolled
-- div,1
all a,b:Student | one ( a.projects & b.projects )
-- div,1
all s,x: Student | lone(s.projects & x.projects)
-- div,1
all a,b:Student | lone ( a.projects & b.projects )
-- div,2
all s1,s2:Student| lone (s1.projects & s2.projects)
-- div,4
all s1,s2 : Student | lone s2.projects & s1.projects
-- div,1
all s1,s2 : Student | lone s1.projects - s2.projects
-- div,2
all disj s,ss:Student | no s.projects & ss.projects
-- div,1
all s1, s2 : Student | (s1.projects in s2.projects) => s1 = s2
-- div,1
all s1,s2: Student | s1!=s2 implies s1.projects not in s2.projects
-- div,1
all s1, s2 : Student | (#(s1.projects & s2.projects) > 0) => s1 = s2
-- div,1
all s1, s2 : Student | (s1 != s2) => (#(s1.projects & s2.projects) = 1)
-- div,1
all s1, s2 : Student | (s1 != s2) => (s1.projects & s2.projects = none)
-- div,1
all s1 : Student |all s2 : Student-s1 | no s1.projects & s2.projects
-- div,1
all x,y:Student | lone z:Project | z in x.projects and z in y.projects
-- div,1
all x,y:Student | lone w:Project | w in x.projects and w in y.projects
-- div,1
all x,y:Student | all z:Project | z in x.projects and z in y.projects and x!=y
-- div,1
all s1, s2: Student| all p1, p2: Project| (s1!=s2 and p1!=p2 and p1 in s1.projects and p2 in s2.projects)
-- div,1
all x,y,z:Student, p,g:Project| x->p in projects and y->p in projects implies z->g in projects and x->g in projects
-- div,1
all s1,s2:Student, p1,p2:Project| p1 in s1.projects and p1 in s2.projects and p2 in s1.projects implies p2 not in s2.projects
-- div,1
all disj s1,s2 : Student | all p : Project | s1->p in projects and s2->p in projects => no s2.projects - p & s1.projects
-- div,3
all s1,s2 : Student | all p1,p2 : Project | p1 in s1.projects and p1 in s2.projects and p2 in s1.projects and p2 not in s2.projects
-- div,1
all x,y,z:Student, p,g:Project| x->p in projects and y->p in projects implies z->g in projects and x->g in projects implies z!=y
-- div,1
all p1,p2 : Person | some c1,c2 : Project | (c1 in p1.projects and c1 in p2.projects and c2 in p1.projects) implies (c2 in p2.projects)
-- div,2
all p1,p2 : Person | some c1,c2 : Project | (c1 in p1.projects and c1 in p2.projects and c2 in p1.projects) implies ( c2 not in p2.projects)
-- div,1
all s1,s2 : Student | all p1,p2 : Project | s1 in projects.p1 and s2 in projects.p1 and s1 in projects.p2 implies s2 not in projects.p2
-- div,1
all s1,s2:Student | all p1,p2:Project | p1 in s1.projects and p1 in s2.projects and p2 in s1.projects implies p2 not in s2.projects
-- div,1
all p1,p2 : Person | some c1,c2 : Project | (c1 in p1.projects and c1 in p2.projects) implies ( c2 in p1.projects implies c2 in p2.projects)
-- div,1
all s1,s2:Student | all p1,p2:Project | p1 in s1.projects and p1 in s2.projects implies( (p2 in s1.projects) or (p2 not in s2.projects) )
-- div,1
all p1,p2 : Person | some c1,c2 : Project | (c1 in p1.projects and c1 in p2.projects) implies (c2 in p1.projects implies c2 not in p2.projects)
-- div,1
all s1,s2 : Student | all p1,p2 : Project | p1 in s1.projects and p1 in s2.projects implies p2 in s1.projects and p2 not in s2.projects
-- div,1
all s1, s2 : Student, p1, p2 : Project | (s1 in projects.p1 and s1 in projects.p2 and s2 in projects.p1 and s2 in projects.p2) implies p1 = p2
-- div,2
all s1,s2: Student | all p1,p2: Project | s1->p1 in projects and s2->p1 in projects and s1->p2 in projects =>
  	s2 not in projects.p2
-- div,1
all s1,s2:Student | all p1,p2:Project | p1 in s1.projects and p1 in s2.projects implies( (p2 not in s1.projects) or (p2 not in s2.projects) )
-- div,1
all s1,s2:Student, p1,p2:Project| s1 != s2 and p1 in s1.projects and p1 in s2.projects and p2 in s1.projects implies p2 not in s2.projects
-- div,1
all p1,p2 : Person | some c1,c2 : Project | (c1 in p1.projects and c1 in p2.projects and c2 in p1.projects and p1!=p2) implies (c2 not in p2.projects)
-- div,1
all s1,s2: Student | all p1,p2: Project | s1->p1 in projects and s2->p1 in projects and s1->p2 in projects and s2->p2 in projects => s1 = s2
-- div,1
all s:Student, ss: Student-s , p:Project, pp:Project-p | (p in s.projects && p in ss.projects) => (pp in s.projects && pp in pp.projects)
-- div,1
all x,y:Person, p,k:Project| x in Student and y in Student and x->p in projects and x->p in projects implies x->k in projects and x->p not in projects
-- div,1
all x,y:Person, p,k:Project| x in Student and y in Student and x->p in projects and y->p in projects implies x->k in projects and y->k not in projects
-- div,1
all x,y:Person, p,k:Project| x in Student and y in Student and x->p in projects and y->p in projects implies x->k in projects and x->p not in projects
-- div,1
all s1,s2 : Student, p1,p2 : Project | p1 in s1.projects and p1 in s2.projects and s1!=s2 and p1!=p2 implies (p2 not in s1.projects) or (p1 not in s2.projects)
-- div,1
all s1:Student, s2:Student, p1:Project, p2:Project | p1 in s1.projects and p1 in s2.projects implies ( p2 not in s1.projects) or (p2 not in s2.projects)
-- div,2
all s:Student, ss: Student-s , p:Project, pp:Project-p | (p in s.projects && p in ss.projects) => (pp in s.projects && pp in ss.projects)
-- div,1
all p1,p2 : Person | some c1,c2 : Project | (c1 in p1.projects and c1 in p2.projects and c2 in p1.projects and p1!=p2 and c1!=c2) implies (c2 not in p2.projects)
-- div,1
all s:Student, ss: Student-s , p:Project, pp:Project-p | (p in s.projects && p in ss.projects) => (pp not in s.projects && pp not in ss.projects)
-- div,1
all s1,s2:Student | all p1,p2:Project | p1 in s1.projects and p1 in s2.projects and s1 != s2 and p1 != p2 implies( (p2 in s1.projects) or (p2 not in s2.projects) )
-- div,1
all s1,s2 : Student | all p1,p2 : Project | p1 in s1.projects and p1 in s2.projects and s1!=s2 and p1!=p2 implies (p2 not in s1.projects) or (p1 not in s2.projects)
-- div,1
all x,y:Person, p:Project, i:Project| x-> p in projects and y-> p in projects and x in Student and y in Student implies x-> i in projects and y -> i not in projects
-- div,1
all s:Student, s2:Student, proj1:Project, proj2:Project | proj1 in s.projects and proj1 in s2.projects implies proj2 in s.projects implies proj2 not in s2.projects
-- div,2
all x,y:Person, p:Project, i:Project-p| x-> p in projects and y-> p in projects and x in Student and y in Student and x-> i in projects implies y -> i not in projects
-- div,6
all x,y:Person, p:Project, i:Project-p| x-> p in projects and y-> p in projects and x in Student and y in Student implies x-> i in projects and y -> i not in projects
-- div,2
all x:Person, y:Person, p:Project, i:Project| x-> p in projects and y-> p in projects and x in Student and y in Student implies x-> i in projects and y -> i not in projects
-- div,1
all s:Student, s2:Student, proj1:Project, proj2:Project | proj1 in s.projects and proj1 in s2.projects and s!=s2 implies (proj2 in s.projects implies (proj2 not in s2.projects))
-- div,1
all u:Person, k:Person-u, c:Course, x:Project|one p:Project-x| u->p in projects and k->p in projects implies u->x in projects and k->x not in projects
-- div,1
all s1:Student, s2:Student, p1:Project, p2:Project | p1 in s1.projects and p2 in s1.projects and s1!=s2 and p1!=p2 implies (p2 not in s1.projects) or (p1 not in s2.projects)
-- div,1
all s:Student, s2:Student, proj1:Project, proj2:Project | proj1 in s.projects and proj1 in s2.projects and s!=s2 implies ( proj2 not in s.projects) or (proj2 not in s2.projects)
-- div,1
all x:Person, y:Person-x, p:Project, i:Project-p| x-> p in projects and y-> p in projects and x in Student and y in Student implies x-> i in projects and y -> i not in projects
-- div,1
all s1:Student, s2:Student, c1:Project, c2:Project | c1 in s1.projects and c1 in s2.projects implies ((c2 in s1.projects and c2 not in s2.projects) or (c2 not in s1.projects and c2 in s2.projects))
-- div,1
all u:Person, k:Person-u, c:Course, x:Project|one p:Project-x| u->p in projects and k->p in projects and u in Student and k in Student implies u->x in projects and k->x not in projects
-- div,1
all s1, s2 : Student, proj:Project | proj in s1.projects and proj in s2.projects implies (some proj2 : Project | (proj2 in s1.projects and proj2 not in s2.projects) or (proj2 in s2.projects and proj2 not in s1.projects))
-- div,1
all s1, s2 : Student, proj:Project | proj in s1.projects and proj in s2.projects and s1!=s2 implies (some proj2 : Project | (proj2 in s1.projects and proj2 not in s2.projects) or (proj2 in s2.projects and proj2 not in s1.projects))
-- div,1
