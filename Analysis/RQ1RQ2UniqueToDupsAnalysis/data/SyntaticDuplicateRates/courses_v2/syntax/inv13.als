all
-- div,2
all c : Course | gt(c.grades)
-- div,1
all x,y : Person | all z : Course |
-- div,4
all c: Courses | c.grades.(max[Grade]) in c.projects
-- div,1
all c : Course | some (c.grades.last).Grades.Person <: projects
-- div,1
all c: Course, st: Student, g : Grade | max[g | st->g in c.grades]
-- div,2
all s : Student | all c : Course | c->s->Grade in grades implies c in
-- div,1
all c: Course, one u : last[c.grades] |  some (u.projects & c.projects)
-- div,1
all c: Course | u = last[c.grades] implies some (u.projects & c.projects)
-- div,1
all c: Course, s: Student, g : Grade | max[st->g in c.grades]  s in c.projects
-- div,1
all s:Student, c:Course, g: Grades | s in (c.grades).g.max implies s in c.projects
-- div,1
all c:Course, p:Student | (p in c.projects.Student) => (c.grades[p] = max c.grades)
-- div,3
all c: Course | one u : User | u = last[c.grades] and some (u.projects & c.projects)
-- div,1
all c:Course, p:Student | (p in c.projects.Student) => (c.grades[p] = max (c.grades))
-- div,1
all c : Course | (some s : Student | c.grades[s] = max c.grades) => s.projects != none
-- div,4
all c : Course | (some s : Student | c.grades[s] = max(c.grades)) => s.projects != none
-- div,1
all c:Course, p:Student | (p in c.projects.Student) => (c.grades[p] = max[Grade] c.grades)
-- div,1
all c: Course | some s: Student | c.grades[s] = max[g | g in c.grades[s]] => s in c.projects
-- div,1
all c: Course | some s: Student | s.grades[c] = max[g | g in c.grades[s]] => s in c.projects
-- div,2
all pM : Student | all p : Student | pM.(c.grades) = last implies some pM.projects & c.projects
-- div,1
all c:Course, p:Student | (p in c.projects.Student) => (c.grades[p] = max[Grade] (c.grades.ran))
-- div,2
all c: Course | some s: Student | s.grades[c] = max[g | g in c.grades[Person]] => s in c.projects
-- div,2
all c : Course | ({p : Person, g : Grade | some c.grades}.last).g in Person <: projects.(c.projects)
-- div,1
all c : Course | (some s : Student | c.grades[s] = max c.grades) => (s.projects & c.projects) != none
-- div,1
all c:Course, p:Student | (some p1: Student | c.grades[p1] = max c.grades) => p in c.projects.Student
-- div,2
all c : Course | all p : Person | (p in c.grades(max[Grade])) implies (p.projects & c.projects != none)
-- div,1
all c : Course | some p : Person | (p in c.grades(max[Grade]) implies (p.projects & c.projects != none)
-- div,2
all c : Course | some p : Person | (p in c.grades(max[Grade])) implies (p.projects & c.projects != none)
-- div,4
all c : Course | some p : Person | (p in c.grades(max[Grade]))) implies (p.projects & c.projects != none)
-- div,1
all c: Course, s: Student, g: Grade| s->g in c.grades && g = c.grades.max => one (c.projects & u.projects)
-- div,1
all s:Student, c:Course | s in c.grades.last implies (some proj:Project | proj in c.projects and p in s.projects)
-- div,1
all c : course | all nerd : enrolled.c | (all dummy : enrolled.c | gte[nerd.(c.grade), nerd.(c.grade)])
    => 1 = 1
-- div,1
all c : Course | all nerd : enrolled.c | (all dummy : enrolled.c | gte[nerd.(c.grade), nerd.(c.grade)])
    => 1 = 1
-- div,1
all s : Student, c: Course, g: Grade | s->g == max(c.grades) implies (some p: Project | p in s.projects && p in c.projects)
-- div,1
all c : Course | (some s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
-- div,5
all c : Course | (sone s : c.enrolled & Student | (s.grades.c = max(c.enrolled.grades.c)) => s.projects & c.projects != none)
-- div,1
all c : Course | (some s : c.enrolled & Student | (s.grades.c = max (c.enrolled.grades.c)) => s.projects & c.projects != none)
-- div,2
all c : Course, all pM : Student | (all p : Student |  gte[pM.(c.grades), p.(c.grades)]) implies some pM.projects & c.projects
-- div,1
all p : Student | lone pM : Student | all c : Course | all g : c.grades
  		pM->g >= p->g implies some pM.projects & c.projects
-- div,1
all s : Student | all g : Grades | all c : s.enrolled | s.projects & c.projects = none implies s->g in c.grades and not first[g]
-- div,1
all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(c.grades) => some p: Project | p in project.c && p in s.projects
-- div,1
all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(c.grades) => some p: Project | p in c.projects && p in s.projects
-- div,1
all s : Student | all c : s.enrolled | no p in c.projects implies some sm : Student | c in sm.enrolled and s->c.grade < sm->c.grade
-- div,1
all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(c.grades.g) => some p: Project | p in project.c && p in s.projects
-- div,3
all s : Students | all c : s.enrolled | no p in c.projects implies some sm : Student | c in sm.enrolled and s->c.grade < sm->c.grade
-- div,1
all s : Student | all c : s.enrolled | p not in c.projects implies some sm : Student | c in sm.enrolled and s->c.grade < sm->c.grade
-- div,1
all s : Students | all c in s.enrolled | no p : c.projects implies some sm : Student | c in sm.enrolled and s->c.grade < sm->c.grade
-- div,2
all s : Students | all c in s.enrolled | no p : c.projects implies some sm : Student | c in sm.enrolled and c.s->Grade < c.sm->Grade
-- div,1
all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(c.grades.g) => some p: Project | p in c.projects && p in s.projects
-- div,2
all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(grades.c) => some p: Project | p in 	  c.projects && p in s.projects
-- div,1
all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(c.grades) => some p: Project | p in 	  c.projects && p in s.projects
-- div,1
all c: Course, s: Student, g: Grade | s->g in c.grades && g = max(c.grades[g]) => some p: Project | p in c.projects && p in s.projects
-- div,2
all c : course | all nerd : enrolled.course | (all dummy : enrolled.course | gte[nerd.(course.grade), nerd.(course.grade)])
    => 1 = 1
-- div,1
lone pM : Student | all p : Student - pM  | all c : Course | all g : c.grades |
  		gt[pM->g, p->g] implies some pM.projects & c.projects
-- div,1
lone pM : Student | all p : Student - pM  | all c : Course | all g : c.grades |
  		gte[pM->g, p->g] implies some pM.projects & c.projects
-- div,1
lone pM : Student | all p : Student - pM  | all c : Course | all g : c.grades |
  		gte[g->pM, g->p] implies some pM.projects & c.projects
-- div,1
all c : Course | all nerd : enrolled.c | (all dummy : enrolled.c | gte[nerd.(c.grades), dummy.(c.grades)])
    => some n.projects & c.projects
-- div,1
all s : Student | all c : s.enrolled | s.projects & c.projects = none implies some sm : Student | c in sm.enrolled and s->c.grade < sm->c.grade
-- div,1
all c: Course, s: Student, g: Grade | s->g in c.grades && g = lone Int { es - es.^prev } => some p: Project | p in c.projects && p in s.projects
-- div,1
lone pM : Student | all p : Student - pM  | all c : Course | all g : c.grades |
  		ordering.gt[g.pM, g.p] implies some pM.projects & c.projects
-- div,1
all s: Student | all c:Course| all g1: Grade|
  	c->s->g in grades and  g in c.grades.last => some p:Project s->p in projects and c->p in projects
-- div,1
all s: Student | all c:Course| all g1: Grade|
  	c->s->g in grades and  g in c.grades.last => some p:Project | s->p in projects and c->p in projects
-- div,1
all disj s1, s2 : Student |
  		all c : s1.enrolled & s2.enrolled |
  			(s1.(c.grades).larger( s2.(c.grades))) implies some s1.projects & c.projects
-- div,1
all c: Course |
    all s: Student |
      let highestMark = max[Grade](s.^(grades.c)) |
        highestMark in s.grades.c => (s.projects & c) != none
-- div,2
all x,y : Student | all g,h : Grade | all c : Course | all p: x.project| x->g in c.grades and y->h in c.grades and x->g > y->h implies p in c.projects
-- div,1
all c: Course |
    let highestMark = max[Grade](grades.c) |
      all s: Student |
        (s.grades.c = highestMark) implies (s.projects & c) != none
-- div,1
all c: Course, s: Student, g: Grade | s->g in c.grades && g = lone Int { c.grades - c.grades.^prev } => some p: Project | p in c.projects && p in s.projects
-- div,1
all c: Course, s: Student, g: Grade | s->g in c.grades && (not ( g2 : Grade | s->g2 in c.grades 	&& g2 > g)) => some p: Project | p in c.projects && p in s.projects
-- div,1
all c: Course, s: Student, g: Grade | s->g in c.grades && (forall g2 : Grade | s->g2 in c.grades => g >= g2) => some p: Project | p in c.projects && p in s.projects
-- div,1
all c: Course | let m = max[g in c.grades | c.grades[g]] |
some s: Student | s in c.enrolled && c.grades[s] = m =>
some p: Project | p in c.projects && p in s.projects
-- div,1
all c: Course, s: Student, g: Grade | s->g in c.grades && (not (exists g2 : Grade | s->g2 in c.grades && g2 > g)) => some p: Project | p in c.projects && p in s.projects
-- div,1
all c: Course | let m = max[g in c.grades | c.grades[g]] |
    some s: Student | s in c.enrolled && c.grades[s] = m =>
    some p: Project | p in c.projects && p in s.projects
-- div,2
all c: Course | let m = max[g in c.grades | c.grades[g]] |
    some s: Student | c in s.enrolled && c.grades[s] = m =>
    some p: Project | p in c.projects && p in s.projects
-- div,1
all x,w :Student| all g1,g2:Grade| all z: Course | one q : project |(z in x.enrolled and z in w.enrolled and x->g1 in z.grades and w.g2 in z.grades and g1>g2 and g1!=g2 and w!=x) implies (q in z.projects and q in x.projects)
-- div,1
all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and x->g1 in z.grades and w->g2 in z.grades and (univ g1)>(univ g2) and g1!=g2 and w!=x) implies (q in z.projects and q in x.projects)
-- div,3
all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and
      x->g1 in z.grades and w->g2 in z.grades and (univ g1)>(univ g2) and g1!=g2 and w!=x) implies
(q in z.projects and q in x.projects)
-- div,1
all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and
      x->g1 in z.grades and w->g2 in z.grades and
      univ(g1)>univ(g2) and g1!=g2 and w!=x) implies
(q in z.projects and q in x.projects)
-- div,1
all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and
      x->g1 in z.grades and w->g2 in z.grades and
      univ(g1)>univ (g2) and g1!=g2 and w!=x) implies
(q in z.projects and q in x.projects)
-- div,1
all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and
      x->g1 in z.grades and w->g2 in z.grades and
      (univ g1)>(univ g2) and g1!=g2 and w!=x) implies
(q in z.projects and q in x.projects)
-- div,1
all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and
      x->g1 in z.grades and w->g2 in z.grades and
      ((univ g1)>(univ g2)) and g1!=g2 and w!=x) implies
(q in z.projects and q in x.projects)
-- div,1
all x,w : Student | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and
      x->g1 in z.grades and w->g2 in z.grades and
      (univ(g1))>(univ (g2)) and g1!=g2 and w!=x) implies
(q in z.projects and q in x.projects)
-- div,1
one a:Student |all x : Student-a | all g1,g2:Grade| all z: Course | one q : Project |(z in x.enrolled and z in w.enrolled and
      x->g1 in z.grades and w->g2 in z.grades and
      (univ[g1])>(univ[g2]) and g1!=g2 and w!=x) implies
(q in z.projects and q in x.projects)
-- div,1
