-- equiv pair start,1
all c : Course | one last[c.grades]
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | c.grades.last in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | no c.grades.first & Person
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | c.grades.last.enrolled in c
-- div,1
-- equiv pair end
-- equiv pair start,3
all c : Course | last[c.grades] in enrolled.c
-- div,2
all c : Course, s : c.grades.last | c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all s: Student, c: Course | s in c.grades.last
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Course, s : c.grades.last | one  s.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Course| c.projects in c.grades.first.projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all c:Course | c.grades.first in c.projects.~projects
-- div,1
-- equiv pair end
-- equiv pair start,8
all c : Course | c in c.grades.last.projects.~projects
-- div,2
all c: Course | some c.grades.last.projects&c.projects
-- div,1
all c: Course | some c.projects&c.grades.last.projects
-- div,4
all c : Course | some s : c.grades.last | some s.projects & c.projects
-- div,1
-- equiv pair end
-- equiv pair start,5
all s:Student,c:Course | some (s.projects & c.projects)
-- div,3
all c1 : Course | all g1,g2 : Grade | all s1,s2 : Student | 
   	(
  		(c1->s1->g1 in grades) implies 
    	(c1->s2->g2 in grades and g2=max[g1])
  	)
		implies (some p1 : Project | c1->p1 in projects and s2->p1 in projects)
-- div,1
all c1 : Course | all g1 : Grade | all s1,s2 : Student | 
   	(
  		(c1->s1->g1 in grades) implies 
    	(some g2 : Grade | some s2 : Student | c1->s2->g2 in grades and g2=max[g1])
  	)
		implies (some p1 : Project | c1->p1 in projects and s2->p1 in projects)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Course | some c.projects&c.grades.first.projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all c: Course | lone c.projects&c.grades.first.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | (last[c.grades]).projects in enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Course | (last[c.grades]).projects in c.projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Course, s : c.grades.last | some s.projects - c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course, s: Student | c.projects in c.grades.first.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course | s in c.grades.last implies c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | some s : c.grades.last | some s.projects - c.projects
-- div,1
-- equiv pair end
-- equiv pair start,5
all c : Course | c.grades.(max[Person.(c.grades)]).projects in c.projects
-- div,3
all c : Course, g : max[Person.(c.grades)] | c.grades.g.projects in c.projects
-- div,1
all c : Course, g : Grade| g in max[Person.(c.grades)] implies c.grades.g.projects in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | (last[c.grades]).projects & Student.projects in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course |one s : c.grades.last | some p : c.projects | p in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Course, s: Student | c.grades.first = s implies s.projects in c.projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all c: Course, s: Student | s in c.grades.first implies s.projects in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,3
all s:Student, c:Course | s in c.grades.last implies one s.projects & c.projects
-- div,2
all s: Student | all c: Course | s in c.grades.last implies (one p: Project | p in c.projects and p in s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course, s: Student | s in c.grades.first implies c.projects in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Course | some (c.grades.(max[Person.(c.grades)])) & projects.(c.projects)
-- div,1
all c : Course | some proj : c.grades.(max[Person.(c.grades)]).projects | proj in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course | s in c.grades.last implies lone s.projects & c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | lone (c.grades.(max[Person.(c.grades)])) & projects.(c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,6
all s : Student, c : Course | s.(c.grades) = last => one (s.projects & c.projects)
-- div,6
-- equiv pair end
-- equiv pair start,1
all c: Course, s: Student | s in c.grades.first implies c.projects in first.projects
-- div,1
-- equiv pair end
-- equiv pair start,3
all c : Course, s : c.grades.(max[Student.(c.grades)]) | one (c.projects & s.projects)
-- div,3
-- equiv pair end
-- equiv pair start,5
all s : Student | all c : Course | s in c.grades.last implies c.projects in s.projects
-- div,1
all s: Student, c: Course, proj: Project | s in c.grades.last and proj in c.projects implies proj in s.projects
-- div,1
all s : Student | all c : Course | all p : Project | s in c.grades.last and p in c.projects implies p in s.projects
-- div,1
all s: Student, c: Course, g: Grade, proj: Project | s in c.grades.last and proj in c.projects implies proj in s.projects
-- div,1
all c : Course | all s : Student | all p : c.projects | s in c.grades.last and p in c.projects implies p in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, s : c.grades.(max[Student.(c.grades)]) | some (c.projects & s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | all s : Person |  no s.(c.grades).prev implies s.projects in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | one s : Student |  no s.(c.grades).prev implies s.projects in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : s.enrolled | s in c.grades.last implies one (s.projects & c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course | s in Course.grades.last implies one s.projects & Course.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Course | some s : Student |  no s.(c.grades).prev implies s.projects in c.projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Course | one s : first[c.grades] | c in s.enrolled implies c.projects in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | some s : Student | no (s.(c.grades)).next implies s.projects in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | one proj : c.grades.(max[Person.(c.grades)]).projects | proj in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | lone s : c.grades.(max[Student.(c.grades)]) | one (c.projects & s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | one proj : c.grades.(max[Student.(c.grades)]).projects | proj in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | some proj : c.grades.(max[Student.(c.grades)]).projects | proj in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | some (c.projects) => (c.grades.(max[Person.(c.grades)])).projects in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | lone (c.projects) => (c.grades.(max[Person.(c.grades)])).projects in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,3
all c : Course | some c.projects => (c.grades.(max[Person.(c.grades)])) in projects.(c.projects)
-- div,3
-- equiv pair end
-- equiv pair start,2
all c : Course | lone (c.projects) => (c.grades.(max[Person.(c.grades)])) in projects.(c.projects)
-- div,2
-- equiv pair end
-- equiv pair start,1
all s: Student, c: Course, g: Grade | c->s->g in grades implies (one p: Project | c->p in projects)
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Student, c : Course | s = c.grades.(max[Student.(c.grades)]) => one (s.projects & c.projects)
-- div,3
-- equiv pair end
-- equiv pair start,2
all s : Student | all c : s.enrolled | all p : c.projects | s in c.grades.last implies p in s.projects
-- div,1
all s:Student, c:Course, p: Project | s in c.grades.last and p in c.projects and c in s.enrolled implies p in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : Course | s = c.grades.(max[Student.(c.grades)]) => lone (s.projects & c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course, g:Grade | c->s->g in grades and no g.prev => some p:Project | s->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,10
all s:Student, c:Course| some p: Project | s in c.grades.last implies p in c.projects and p in s.projects
-- div,3
all s: Student, c: Course | some p: Project | s in c.grades.last implies (p in s.projects and p in c.projects)
-- div,5
all s: Student, c: Course | some p: Project | s in c.grades.last implies (s in (Person<:projects).p and p in c.projects)
-- div,1
all s : Student | all c : Course| some p : Project | s in c.grades.last implies p in c.projects and p in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,4
all c : Course, s : Student | s.(c.grades) = max[Student.(c.grades)] implies one (c.projects & s.projects)
-- div,3
all s : Student, c : Course | s.(c.grades) = (max[Student.(c.grades)]) => one (s.projects & c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,4
all c : Course, s : Student | s.(c.grades) = max[Student.(c.grades)] implies some (c.projects & s.projects)
-- div,3
all c : Course, s : Student | s.(c.grades) = max[Student.(c.grades)] implies some x : s.projects| x in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, s : Student | s.(c.grades) = max[Student.(c.grades)] implies lone (c.projects & s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | some proj : c.grades.(max[(Student - Professor).(c.grades)]).projects | proj in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,3
all c : Course, p : Project, s: Student, g : Grade | g in c.grades[s] and p in c.projects => p in s.projects
-- div,3
-- equiv pair end
-- equiv pair start,2
all c : Course, p : Project, s: Student, g : Grade | g in c.grades[s] => p in s.projects and p in c.projects
-- div,1
all student: Student | all grade: Grade | all course: Course | all proj: Project | student->grade in course.grades implies(proj in course.projects and proj in student.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | lone s : Student | s.(c.grades) = max[Student.(c.grades)] iff some (c.projects & s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,4
all c : Course, s : enrolled.c | s.(c.grades) = max[Student.(c.grades)] implies some (c.projects & s.projects)
-- div,1
all c: Course, s: (c.~enrolled) | 
  	 (s.(c.grades)) = max[Student.(c.grades)] implies
  		some (c.projects & s.projects)
-- div,2
all c : Course, s: (c.~enrolled) | 
  	 max[Student.(c.grades)] = (s.(c.grades)) implies
  		some (c.projects & s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : Course | one p : Project | s in c.grades.last implies p in s.projects and p in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Student, c : Course | one p : Project | s in c.grades.last and p in c.projects implies p in s.projects
-- div,3
-- equiv pair end
-- equiv pair start,1
all s: Student, c: Course, proj: Project | s in c.grades.last and proj in s.projects implies proj in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, s : enrolled.c | s.(c.grades) in max[Student.(c.grades)] implies some (c.projects & s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Student, c : Course | some p : Project | s in c.grades.last and p in c.projects implies p in s.projects
-- div,3
-- equiv pair end
-- equiv pair start,1
all c: Course, s: Student | 
  	 (s.(c.grades)) = max[Student.(c.grades)] and
  		some (c.projects & s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Course | lone s : Student | s.(c.grades) = max[Student.(c.grades)] implies some (c.projects & s.projects)
-- div,2
-- equiv pair end
-- equiv pair start,3
all s: Student, c: Course, p: Project | s in c.grades.last implies (s in (Person<:projects).p and p in c.projects)
-- div,1
all s : Student, c : Course, p : Project | s in c.grades.last implies p in s.projects and p in c.projects
-- div,1
all s: Student | all c: Course | s in c.grades.last implies (all p: Project | p in c.projects and p in s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | some Person<:projects.(c.projects) => (c.grades.(max[Person.(c.grades)])) in projects.(c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course, s: (c.~enrolled) | 
  	 (s.(c.grades)) = max[Student.(c.grades)] &&
  		some (c.projects & s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, p : Project, disj s,s2 : Student, g : Grade | g in c.grades[s] => p in s.projects and p in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course, s: (c.~enrolled) | 
  	 (s.(c.grades)) = max[Student.(c.grades)] iff
  		some (c.projects & s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, s : Student | c in s.enrolled and s.(c.grades) = max[s.(c.grades)] implies some c.projects & s.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student, c: Course, g: Grade | c->s->g in grades implies (one p: Project | c->p in projects and s->c in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Course | some s : Student | no (s.(c.grades)).next implies some p : Project | p in s.projects and p in c.projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Course, s : c.grades.Grade | s.(c.grades) = max[Person.(c.grades)] implies c in (Course <: projects).(s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,7
all c: Course, s: Student | c in s.enrolled and s.(c.grades) = max[Student.(c.grades)] implies some c.projects & s.projects
-- div,7
-- equiv pair end
-- equiv pair start,3
all s : Student | all c : Course | 
  	s in c.grades.Grade implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all s : Student | all c : Course | some g1 : Grade |   
  	s in c.grades.Grade implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all c1 : Course | all g1 : Grade | all s1 : Student |
  	c1->s1->g1 in grades and (one g2 : Grade|g2=max[g1]) implies (some p1 : Project | c1->p1 in projects and s1->p1 in projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, s : (Student & enrolled.c) | s.(c.grades) in max[Student.(c.grades)] implies some (c.projects & s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Course, s : Student | c in s.enrolled and s.(c.grades) = max[Student.(c.grades)] implies one c.projects & s.projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course| one p: Project | s in c.grades.last and p in c.projects and c in s.enrolled implies p in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, s: (c.~enrolled) | 
  	 max[Person.(c.grades)] = (s.(c.grades)) implies
  	some (c . projects & s . projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, s : Student | s.enrolled = c and s.(c.grades) = max[Student.(c.grades)] implies one (c.projects & s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, s : Student | c in s.enrolled and s.(c.grades) = min[Student.(c.grades)] implies some c.projects & s.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course| some p: Project | s in c.grades.last and c in s.enrolled implies p in c.projects and p in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course| some p: Project | s in c.grades.last and p in c.projects and c in s.enrolled implies p in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course| one s : (Student & enrolled.c) | s.(c.grades) in max[Student.(c.grades)] implies some (c.projects & s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, s : Student | s.(c.grades) = max[(Student - Professor).(c.grades)] implies some x : s.projects| x in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,4
all c : Course | some s : (c . ~enrolled) |
  max[c . grades . Person] = s . (c . grades) and some (c . projects & s . projects)
-- div,4
-- equiv pair end
-- equiv pair start,3
all c : Course | some s : (c . ~enrolled) |
  max[Person . (c . grades)] = (s . (c . grades)) and some (c . projects & s . projects)
-- div,3
-- equiv pair end
-- equiv pair start,1
all c : Course | some s : (c.~enrolled) | 
  	 max[Person.(c.grades)] = (s.(c . grades)) implies
  	some (c . projects & s . projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course, s: Student | 
  	 (s.(c.grades)) = max[Student.(c.grades)] implies
  		some (c.projects & s.projects) && c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course, s: Student | 
  	 (s.(c.grades)) = max[Student.(c.grades)] implies
  		some (c.projects & s.projects) && s in c.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Course, g : max[Person.(c.grades)] | c.grades.g.projects in c.projects
  	all c : Course | some c.grades implies some c.projects
-- div,1
all c : Course, g : Grade | g in max[Person.(c.grades)] implies c.grades.g.projects in c.projects
  	all c : Course | some c.grades implies some c.projects
-- div,1
-- equiv pair end
-- equiv pair start,4
all s : Student | all c : Course | some g1 : Grade |   
  	g1 in Person.(c.grades) implies (some p : Project | p in c.projects and p in s.projects)
-- div,4
-- equiv pair end
-- equiv pair start,1
all c : Course | all s : Student | s->Grade in c.grades
	all c : Course | some s : Student | no (s.(c.grades)).next implies s.projects in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | some s : Student | s->Grade in c.grades
	all c : Course | some s : Student | no (s.(c.grades)).next implies s.projects in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, s : c.grades.Grade | 
  (all x : c.grades.Grade | ordering/lte[s.(c.grades),x.(c.grades)]) 
  implies 
  c in (Course <: projects).(s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, s : c.grades.Grade | 
  (all x : c.grades.Grade | ordering/gte[s.(c.grades),x.(c.grades)]) 
  implies 
  c in (Course <: projects).(s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | all c : Course | some g1 : Grade |   
  	s in c.grades.(max[Person.(c.grades)]) implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,3
all c : Course | some s : enrolled.c
  | (all s2 : enrolled.c - s | gt[s.(c.grades), s2.(c.grades)])
  and some (s.(this/Person <: projects) & c.(this/Course <: projects))
-- div,2
all c : Course | some s : c . ~enrolled |
  (s in c . (this/Course <: projects) . ~(this/Person <: projects))
  and (all s2 : c . ~enrolled - s | gt[s . (c . grades), s2 . (c . grades)])
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | some s : enrolled.c
  | (all s2 : enrolled.c - s | lt[s.(c.grades), s2.(c.grades)])
  and some (s.(this/Person <: projects) & c.(this/Course <: projects))
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Course | all g : Grade | g in Student.(c.grades) implies Student->g in c.grades
	all c : Course | some s : Student | no (s.(c.grades)).next implies s.projects in c.projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Course, s : enrolled.c | s in c.grades.Grade and (all e : enrolled.c | e in c.grades.Grade implies ordering/gte[c.grades.s,c.grades.e]) implies c in (Course <: projects).(s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c1 : Course | all g1 : Grade | all s1 : Student | one g2 : Grade | one s2 : Student |
  	c1->s1->g1 in grades and c1->s2->g2 in grades and g2=max[g1]
  
	implies (some p1 : Project | c1->p1 in projects and s2->p1 in projects)
-- div,2
-- equiv pair end
-- equiv pair start,5
all c1 : Course | all g1 : Grade | all s1 : Student | 
  		
  	c1->s1->g1 in grades implies 
  	(
      some p1:Project | some g2 : Grade | some s2 : Student | 
      	c1->s2->g2 in grades and g2=max[g1]
  	   	and c1->p1 in projects and s2->p1 in projects 
	)
-- div,5
-- equiv pair end
