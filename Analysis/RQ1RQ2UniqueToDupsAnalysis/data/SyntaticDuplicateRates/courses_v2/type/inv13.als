all g1, g2:Grade | g1 < g2
-- div,2
all c: Course | last[c.grades]
-- div,1
grades.(max[Grade]) in projects
-- div,2
grades.(max[Grade]) in ~projects
-- div,1
grades.max[Grade] in projects.~projects
-- div,1
grades.(max[Grade]) in projects.projects
-- div,1
all s : Student, c :Course | c.grades[0]
-- div,1
all c : Course | some c.grades.last.Grade
-- div,1
grades.(max[Grade]) in Person <: projects
-- div,1
all c : Course | some c.grades.Grade.last
-- div,2
grades.(max[Grade]) in (Person <: projects)
-- div,1
grades.(max[Grade]) in (Course <: projects)
-- div,1
all s : Student, c :Course | s in c.grades{0}
-- div,1
all c: Course | c.grades.(max[Grade]) in projects.c
-- div,1
all c: Course | c.grades.(max[Grade]) in c.projects
-- div,2
all s : Student, c :Course | s in Person implies c.grades[0]
-- div,1
all c : Course | some c.grades.last.Grade.(Person <: projects)
-- div,1
all c : Course | some (c.grades.last).Grade.Person <: projects
-- div,1
all c: Course, st: Student, g : Grade | max[st->g in c.grades]
-- div,1
all c: Course, s: Student | c.grades.(max[Grade]) in s.projects
-- div,2
all s:Student, c:Course | s in c.grades.max implies s in c.projects
-- div,2
all s: Student | all c: Course| s in c.grades.last implies c in s.projects
-- div,1
all s : Student, c :Course | s in c.grades implies #s.projects&c.projects>0
-- div,1
all c: Course, s: Student, g : Grade | max (st->g in c.grades)  s in c.projects
-- div,1
all c:Course, p:Student | (p in c.projects.Student) => (c.grades[p] = maxgrade)
-- div,1
all c:Course, p:Student | (p in c.projects.Student) => (c.grades[p] = maxGrade)
-- div,4
all c:Course, p:Student | (p in c.projects.Student) && (c.grades[p] = maxGrade)
-- div,1
all s : Student, c :Course | s in c.first.grades implies #s.projects&c.projects>0
-- div,1
all s : Student, c :Course | s in first.c.grades implies #s.projects&c.projects>0
-- div,1
all s:Student, c:Course, g: Grade | s in (c.grades).g.max implies s in c.projects
-- div,1
all c:Course, p:Student | (p in c.projects.Student) => (c.grades[p] = (maxGrade))
-- div,1
all s:Student, c:Course, g: Grade | s in ((c.grades).g).max implies s in c.projects
-- div,1
all x,y : Person | all z : Course | x.(z.grades) > y.(z.grades) implies x in enrolled.z
-- div,1
all s:Student,c:Course| one s1:Student |( s1->Grade >= s->Grade) implies #s1.projects>0
-- div,1
all c: Course, st: Student, g : Grade | max[st->g in c.grades] implies  st in c.projects
-- div,2
all x,y : Person | all z : Course | (x.(z.grades) > y.(z.grades)) implies x in enrolled.z
-- div,1
all c:Course, g1:Grade | some g2:Grade | g2 > g1 implies (c.grades.g2).projects in c.projects
-- div,1
all c:Course | one s1:Student | (no s2:Student-s1 | (c.grades[s2] > c.grades[s1])) => one c.grades[s1]
-- div,1
all s:Student | all c:Course , g:Grade | s->g in c.grades.last implies(some p:Project | p in c.projects)
-- div,1
all c : Course | ({p : Person, g : Grade | some c.grades}.last).Grade in Person <: projects.(c.projects)
-- div,3
all x,y : Person | all z : Course | x.(z.grades) > y.(z.grades) implies one k : Project | x in projects.k
-- div,1
all s:Student | all c:Course , g:Grade | s->g in c.grades.grades implies(some p:Project | p in c.projects)
-- div,1
all x,y : Person | all z : Course | x.(z.grades) > y.(z.grades) implies (one k : Project | x in projects.k)
-- div,2
all x:Student, c:Course | some x1:Student | x1.(c.grades) > x.(c.grades) implies some x1.projects & c.projects
-- div,3
all c: Course, s: Student, g: Grade| s->g in c.grades && s->g = c.grades.max => some (c.projects & s.projects)
-- div,1
all x:Student, c:Course | some x1:Student | x1.(c.grades) > x.(c.grades) implies some (x1.projects & c.projects)
-- div,2
all s : Student, c : Course | s.(c.grades) = last implies (some p : Project | p in c.projects and c in s.projects)
-- div,3
all p1:Student, c:Course | some p2:Student | p2.(c.grades) > p1.(c.grades) implies some (p2.projects & c.projects)
-- div,1
all s : Student | all c : Course | s in c.grades.last implies (some p : Project | c in s.projects and c in s.enrolled)
-- div,1
all s : Student, c: Course, g: Grade | s->g = max(c.grades) implies (some p: Project | p in s.projects && p in c.projects)
-- div,1
all s:Student | all c:Course, g:Grade | s->g in c.grades.last implies(some p:Project | p in c.projects and p in s.projects)
-- div,2
all s : Student | all g : Grade | all c : s.enrolled | s.projects & c.projects = none implies s->g in c.grades and first[g]
-- div,1
all s : Student, c : Course, p : Project , g : Grade| max(c.grades) in c.grades[s] && p in c.projects implies p in s.projects
-- div,2
one pM : Student | all p : Student | all c : Course | all g : c.grades |  gte[g.pM, g.p] implies some pM.projects & c.projects
-- div,1
all s : Student |
  		all c : s.enrolled |
  			(max[Student.(c.grades)] & s.(c.grades)) implies (some s.projects & c.projects)
-- div,1
all s : Student | all g : Grade | all c : s.enrolled | s.projects & c.projects = none implies s->g in c.grades and not first[g]
-- div,4
all s : Student |
  		all c : s.enrolled |
  			((max[Student.(c.grades)]) & s.(c.grades)) implies (some s.projects & c.projects)
-- div,1
all p : Student | lone pM : Student | all c : Course | all g : c.grades |
  		pM->g >= p->g implies some pM.projects & c.projects
-- div,1
all s : Student |
  		all c : s.enrolled |
  			max[Student.(c.grades)] = (s -> s.(c.grades)) implies some s.projects & c.projects
-- div,1
all c: Course | some s1: Student | all s2: Student, g: Grade | some p: Project| s1->g > s2->g implies some(s.projects & c.projects)
-- div,1
all x : Student, g : Grade | all p : x.projects | all c : Course | x->g in c.grades and x->g = max(c.grades) implies p in c.projects
-- div,1
all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(grades) => some p: Project | p in 	  c.projects && p in s.projects
-- div,3
all s : Student |
  		all c : s.enrolled |
  			(some max[Student.(c.grades)] & s.(c.grades)) implies (s.projects & Course.projects)
-- div,2
lone pM : Student | all p : Student - pM  | all c : Course | all g : c.grades |
  		pM->g > p->g implies some pM.projects & c.projects
-- div,1
lone pM : Student | all p : Student - pM  | all c : Course | all g : c.grades |
  		gt[g.pM, g.p] implies some pM.projects & c.projects
-- div,3
one pM : Student | all p : Student | all c : Course | all g : c.grades |
          gte[g.pM, g.p] implies some pM.projects & c.projects
-- div,1
lone pM : Student | all p : Student - pM  | all c : Course | all g : c.grades |
  		gte[g.pM, g.p] implies some pM.projects & c.projects
-- div,2
all c: Course | some s1: Student | all s2: Student - s1, g: Grade | some p: Project| s1->g > s2->g implies some(s.projects & c.projects)
-- div,1
all disj s1, s2 : Student |
  		all c : s1.enrolled & s2.enrolled |
  			(s1.(c.grades) > s2.(c.grades)) implies some s1.projects & c.projects
-- div,1
all s : Student | all c : s.enrolled | s.projects & c.projects = none implies some sm : Student | c in sm.enrolled and s->c.grades < sm->c.grades
-- div,1
all disj s1, s2 : Student |
  		all c : s1.enrolled & s2.enrolled |
  			(s1.(c.grades).larger[s2.(c.grades)]) implies some s1.projects & c.projects
-- div,1
all x,y : Student | all g,h : Grade | all c : Course | all p: x.projects| x->g in c.grades and y->h in c.grades and x->g > y->h implies p in c.projects
-- div,1
all p1,p2:Person| all c:(p1.enrolled & p2.enrolled)| all g1,g2:Grade| g1>g2 and p1->g1 in c.grades and p2->g2 in c.grades implies p1.projects in c.projects
-- div,2
all c: Course | some p1: Person - Professor | all p2: Person - Professor - p1, g: Grade | some p: Project| p1->g > p2->g implies some(s.projects & c.projects)
-- div,1
all c: Course | let m = max[g in c.grades] |
    some s: Student | c in s.enrolled && c.grades[s] = m =>
    some p: Project | p in c.projects && p in s.projects
-- div,1
one x : Student | all y : Student - x | all g,h : Grade | all c:Course | all p: x.projects| x->g in c.grades and y->h in c.grades and g > h implies p in c.projects
-- div,1
all x,w :Student| all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and x->g1 in z.grades and w.g2 in z.grades and g1>g2 and g1!=g2 and w!=x) implies (q in z.projects and q in x.projects)
-- div,1
all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and x->g1 in z.grades and w.g2 in z.grades and g1>g2 and g1!=g2 and w!=x) implies (q in z.projects and q in x.projects)
-- div,2
all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and x->g1 in z.grades and w->g2 in z.grades and g1>g2 and g1!=g2 and w!=x) implies (q in z.projects and q in x.projects)
-- div,2
all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and
      x->g1 in z.grades and w->g2 in z.grades and
      univ[g1]>univ[g2] and g1!=g2 and w!=x) implies
(q in z.projects and q in x.projects)
-- div,2
all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and
      x->g1 in z.grades and w->g2 in z.grades and
      (univ[g1])>(univ[g2]) and g1!=g2 and w!=x) implies
(q in z.projects and q in x.projects)
-- div,1
all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and
      x->g1 in z.grades and w->g2 in z.grades and
      (univ[g1])=(univ[g2]) and g1!=g2 and w!=x) implies
(q in z.projects and q in x.projects)
-- div,1
