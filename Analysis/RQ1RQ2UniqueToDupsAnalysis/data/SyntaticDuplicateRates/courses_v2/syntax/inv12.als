all s : Stuswnrt
-- div,1
lone ~~grades.Grade)
-- div,1
all s : Student | all c : s.enrolled |
-- div,2
all s : Student, g : Grade, c : Course |
-- div,1
all c: Course, s:Person| lone p.(c.grades)
-- div,1
all x: Person | all y: Course | one y.grades(x)
-- div,1
all x: Student | all y: Course | one y.grades(x)
-- div,1
all s : Student, c : s.enrolled  | lone c.Grades
-- div,1
all s: Student | all y: Course | one y.grades(s)
-- div,2
all s : Student, all c : Course | lone s.c.grades
-- div,1
all x : Person | all y : Course | one x(y.course)
-- div,1
all x : Person | all y : Course | one x.(y.course)
-- div,1
all p : Student , c : p.enrolled | lone p.c.grades
-- div,1
all s : Student, c: s.enrolled | lone p.(c.grades)
-- div,1
all s:Student | all c:Course | lone p-g in c.grades
-- div,1
all s:Student | all c:Course | lone s->g in c.grades
-- div,1
all s : Student | c : s.enrolled | #(s.grades.c) <= 1
-- div,1
all p:Person, c:Course| one g:grade| c->p->g in grades
-- div,1
all p : Student | lone Courses.grades.Grade in Course.p
-- div,1
all s:Students,g:Grade,c:Course | lone s->g in c.grades
-- div,1
all s:Student| lone s.enrolled.grades
-- div,2
all s:Student| lone s.enrolled.grades.s
-- div,1
all p:Person | lone g:Grade | p->g in person.enrolled.grades
-- div,1
all s:Student, c:s:enrolled | lone g:Grade | s->g in c.grades
-- div,1
all s : Student, c : Course, lone g : Grade | s->g in c.grades
-- div,1
all c: Course, all p: Person| lone g: Grade | p->g in c.grades
-- div,1
all x: Person | all y: Course | one y.grades(x) && x in Student
-- div,1
all c: Course, s: Student | one s.(c.grades)
-- div,1
all x:Student | all y:Course | lone g:Grade | p-> g in y.grades
-- div,1
all c: Course, all p: Person| lone g: Grade | p->g in c.grades)
-- div,1
all s : Student, c : course | lone g : Grade | c->g in c.grades
-- div,1
all s : Student, c : Course | lone g : Grade | p -> g in c.grades
-- div,1
all c: Course | (all p: Person, lone g: Grade | p->g in c.grades)
-- div,1
all c: Course | all p: Person, g: Grade | p->g in c.grades and g >
-- div,5
all s : Student | all c : Course | lone g : Grade | p->g in c.grades
-- div,1
all c : Course | (all p : Person, lone g : Grade | p->g in c.grades)
-- div,2
all p : Student, c : p.enrolled | lone p.(c.grades)
-- div,5
all s : Student | (all c : Course| lone g1 : Grade | s->g in c.grades)
-- div,1
all c : Course | (all p : Person, all g : Grade | one p->g in c.grades)
-- div,1
all s : Student | all g : Grades | all c : Course | lone s->g & c.grades
-- div,1
all s : Sudent | all c : Course | all g : Grade | lone (s->g in c.grades)
-- div,1
all course:Course | all student:Person | lone g:Grade | p->g in course.grades
-- div,1
all p : Person | all g : Grande | all c : Course | c in p.enrolled implies lone p->g
-- div,2
all s: Student| all c: Course | c in s.enrolled implies (lone g: Grade| s in c.grade.g)
-- div,1
all s : Student |  all c : Course | all g : c.grades |all g2 : Grades | lone s->g2 & c.grades
-- div,1
all c : Course | all P : Person | some g : Grade | #(p->g in c.grades)=0 or #(p->g in c.grades)=1
-- div,1
all s: Student | all c: Course | (s.courses.grades[s] in Grade) => (s.courses.grades[s].cardinality() <= 1)
-- div,1
all g1,g2:Grades | all s:Student | all c1,c2:Course | (s->g1 in c1.grades and s->g2 in c2.grades) implies c1!=c2
-- div,1
all s: Student |
    all c: Course |
      (s.courses.grades[s] in Grade) => (s.courses.grades[s].cardinality() <= 1)
-- div,1
all c1,c2 : Course | all p : Person | all g1,g2 : Grade | 
  ((p->g1 in c1.grades) and p->g2 in c2.grades)) implies c1!=c2
-- div,2
all g1,g2:Grade | all s:Student | all c1,c2:Course | (c1 in s.enrolled and c2 in s.enrolled and s->g1 in c1.grades and s->g2 in c2.grades and ) implies c1!=c2
-- div,1
all g1,g2:Grade | all s:Student | all c1,c2:Course | (c1 in s.enrolled and c2 in s.enrolled and s->g1 in c1.grades and s->g2 in c2.grades and ) implies c1!=c2
  all x:Student | all y:Grade | all z:Course |
-- div,1
