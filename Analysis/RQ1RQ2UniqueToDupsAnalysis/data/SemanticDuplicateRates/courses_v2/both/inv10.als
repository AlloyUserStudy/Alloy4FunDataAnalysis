-- equiv pair start,9
no Professor.(Course.grades)
-- div,1
no Course.grades.Grade & Professor
-- div,1
no Course.grades &Professor->Grade
-- div,2
Course.grades.Grade in (Person-Professor)
-- div,1
all p: Professor | all c: Course | no p.(c.grades)
-- div,2
all p : Person , g : Grade, c : Course | p->g in c.grades implies p not in Professor
-- div,1
all x:Person | all z:Course | all y:Grade | x->y in z.grades implies x not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,5
all s: Student| some grades.s
-- div,1
all s: Student | some (s.enrolled).grades.s
-- div,1
all p: Person | p in Student => p in Course.grades.Person
-- div,1
all g:Grade, s:Student | g in s.enrolled.grades.Grade
-- div,1
all g:Grade, s:Student | g in s.enrolled.grades.Person
-- div,1
-- equiv pair end
-- equiv pair start,3
Student in Course.grades.Grade
-- div,1
all s: Student | some c: Course | some c.grades[s]
-- div,1
all s: Student | some c: Course | c.grades[s] != none
-- div,1
-- equiv pair end
-- equiv pair start,1
(Person-Student) not in Course.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,3
Course.grades.Grade not in (Person-Student)
-- div,3
-- equiv pair end
-- equiv pair start,1
all c:Course | c.grades[Student] in Student
-- div,1
-- equiv pair end
-- equiv pair start,2
all s: Student | some (s.enrolled).grades[s]
-- div,1
all s: Student | (s.enrolled).grades[s] != none
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person-Student | no p.enrolled->grades
-- div,1
-- equiv pair end
-- equiv pair start,1
all st:Student, c : st.enrolled| some c.grades
-- div,1
-- equiv pair end
-- equiv pair start,6
all x : Person - Student | no x.enrolled.grades
-- div,1
all p:Person-Student | no p.enrolled.grades
-- div,1
all p : Person - Student| all c : p.enrolled | no c.grades
-- div,1
all x : Person - Student | all c : x.enrolled | no c.grades
-- div,2
all x : Person - Student | all c : x.enrolled | no x -> c.grades
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Professor | all c:s.enrolled | no c.grades
-- div,1
-- equiv pair end
-- equiv pair start,1
all g:Grade, p:Person | g in p.(p.enrolled.grades)
-- div,1
-- equiv pair end
-- equiv pair start,2
all g:Grade, s:Student | g in s.(s.enrolled.grades)
-- div,2
-- equiv pair end
-- equiv pair start,1
all p:Person-Professor, c : p.enrolled| some c.grades
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | all p : Person-Professor| no p.(c.grades)
-- div,1
-- equiv pair end
-- equiv pair start,3
Course.{c : Course, p : Person | some c.grades} in Professor
-- div,2
{p : Person | some ({c : Course, p : Person | some c.grades}.p)} in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person-Student | some pro : p.projects | no pro.grades
-- div,1
-- equiv pair end
-- equiv pair start,1
no Course.{c : Course, p : Person | some c.grades} & Student
-- div,1
-- equiv pair end
-- equiv pair start,4
no Course.{c : Course, p : Person | some c.grades} & Professor
-- div,4
-- equiv pair end
-- equiv pair start,1
one Course.{c : Course, p : Person | some c.grades} & Professor
-- div,1
-- equiv pair end
-- equiv pair start,3
Course.{c : Course, p : Person | some c.grades} not in Professor
-- div,3
-- equiv pair end
-- equiv pair start,1
all p : Person , g : Grade | some p->g implies p not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Professor | (all c : Course | (all g : Grade | no c->p->g))
-- div,1
all c : Course | (all p : Professor | all grades : Grade | no c->p->grades)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | (all c : p.enrolled | (all g : Grade | no c->p->g))
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Course | all g : Grade | all p : Person - Professor | p->g in c.grades
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Course | all p : Person, g : Grade | p -> g in c.grades implies c in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | all p : Person | (c in p.enrolled and #(grades)>0) implies p in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | all p : Person | (c in p.enrolled and #(grades)>0) implies c in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Person | all z:Course | some y:Grade | x->y in z.grades implies x not in Professor
-- div,1
-- equiv pair end
