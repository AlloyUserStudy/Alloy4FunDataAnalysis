lone Student.enrolled.projects
-- div,2
(Person <: projects) in Student lone -> Project
-- div,1
all s:Student | no s.projects
-- div,1
all s:Student | one s.projects
-- div,3
all s:Student | lone s.projects
-- div,10
lone Student.projects&Course.projects
-- div,4
all s : Student | #s.projects < 2
-- div,1
all s : Student | #(s.projects)=1
-- div,2
all s:Student | some (Course<:projects).Project
-- div,1
all proj: Project | lone (Course <: projects).proj
-- div,1
all p:Person | one p.enrolled.(Course <: projects)
-- div,1
all s:Student | one s.teaches.projects
-- div,1
all c: Course | lone enrolled.c.projects
-- div,1
all p:Project | one enrolled.projects.p
-- div,1
all s : Student | one (Course<:projects).(s.projects)
-- div,1
all s:Student | one s.enrolled.(Course <: projects)
-- div,1
all s:Student | lone s.teaches.projects
-- div,1
all s:Student | some s.enrolled.projects
-- div,1
all s : Student | lone (Course <: projects).(s.projects)
-- div,2
all s:Student | lone s.enrolled.projects
-- div,18
all p:Project | one projects.p <: Student
-- div,1
all p: Project | one (Student <: projects).p
-- div,1
all p: Project | some (Student <: projects).p
-- div,1
all p: Project | lone (Student <: projects).p
-- div,1
all s : Student | lone (s.(Person<:projects).~(Course<:projects))
-- div,1
all s : Student | lone (s.enrolled.^(projects))
-- div,1
all s : Student | lone (s.^(enrolled.projects))
-- div,1
all s1 : Student |one s1.projects.~(Course<:projects)
-- div,1
all s : Student, c : Course | one s.(Person<:projects)
-- div,1
all s : Student, c : Course | lone s.(Person<:projects)
-- div,1
all p:Project, c:Course | lone (Person<: projects).p
-- div,1
all s1 : Student |lone s1.projects.~(Course<:projects)
-- div,3
all p:Project | one p.~projects.~enrolled
-- div,2
all s1 : Student, c : Course | lone c.projects
-- div,1
all s : Student, p : Project | lone s.projects
-- div,1
all p:Project | lone p.~projects.~enrolled
-- div,1
all s1 : Student, c : Course | lone s1.projects
-- div,1
all s: Student | one (s & s.projects.~projects)
-- div,2
all c:Course | no (Student.projects) & (c.projects)
-- div,1
all p : Student, c : Course | one ~(c.grades).p
-- div,1
all s: Student, p: s.projects | one (Course<:projects).p
-- div,1
all s : Person | s in Student => #s.projects = 1
-- div,1
all p:Person | p.projects in p.enrolled.projects
-- div,5
all p : Student, c : Course | lone ~(c.grades).p
-- div,1
all s: Student, c: s.enrolled | one c.(Course<:projects)
-- div,1
all s: Student, c: s.enrolled | one (Course<:projects).c
-- div,3
all s: Student | one (s.projects & Course.projects)
-- div,1
all s : Person | s in Student => #s.projects <= 1
-- div,1
all y : Student | lone y.projects & Course.projects
-- div,1
all p:Project | one (enrolled.projects.p)&Student
-- div,2
all x : Student | lone x.projects & Course.projects
-- div,1
all s: Student | lone s.projects&Course.projects
-- div,5
all c : Course | lone (projects.(c.projects) <: Person)
-- div,1
all s : Student, c : s.enrolled | lone c.projects
-- div,2
all c:Course | lone (Student.projects) & (c.projects)
-- div,2
all student: Student | lone student.enrolled.projects
-- div,2
all s:Student, p:Project | one s <: projects.p
-- div,1
all s : Student | lone projects.(s.projects) <: Course
-- div,2
all s : Student, p : s.projects | lone p.~(Course<:projects)
-- div,2
all s : Student | no s.projects - s.enrolled.projects
-- div,1
all p : Person | lone p.projects & p.enrolled.projects
-- div,1
all c: Course | lone enrolled.c.projects&c.projects
-- div,1
all c : Course | lone s : Student | c in s.enrolled
-- div,1
all s:Student | one s.projects & s.enrolled.projects
-- div,4
all s : Student | one p : Project | p in s.projects
-- div,1
all s: Student | lone c: Course | c in s.enrolled
-- div,1
all x : Student | one x.projects & x.enrolled.projects
-- div,1
all s:Student | lone s.enrolled.projects & s.projects
-- div,8
all disj s1, s2 : Student | lone s1.projects & s2.projects
-- div,2
all s:Student | some s.enrolled.projects & s.projects
-- div,2
all p:Project | one p.~projects.~enrolled&Student
-- div,1
all s: Student | lone p: Project | p in s.projects
-- div,2
all s: Student | lone s.projects&s.enrolled.projects
-- div,12
all s:Student, p:Project | one Course <: projects.p
-- div,1
all p : Student | lone p.projects & p.enrolled.projects
-- div,1
all x : Student | lone x.projects & x.enrolled.projects
-- div,2
all s : Student | lone p : Project | s->p in projects
-- div,2
all s : Student | some p : Project | s->p in projects
-- div,1
all s : Student |lone pr : Project | pr in s.projects
-- div,1
all s : Student | all c : s.enrolled | one c.projects
-- div,2
all s: Student, c: Course | one (s.projects & c.projects)
-- div,2
all c:Course, s:Student | one s.projects & c.projects
-- div,1
all s : Student, p : Project, c : Course | lone s.projects
-- div,1
all s : Student, p : s.projects | lone (s.enrolled.projects)
-- div,1
all s: Student, p: Project | lone (s.enrolled & projects.p)
-- div,1
all s : Student | all p : s.projects | one p.~(Course <: projects)
-- div,1
all s : Student, c : Course | one c.(Course<:projects).~(Person<:projects) & s
-- div,2
all s : Student, c : Course | one s.(Person<:projects).~(Course<:projects) & c
-- div,1
all s : Student | one p : Project | p in s.enrolled.projects
-- div,1
all s: Student | some c: Course | c.projects in s.projects
-- div,1
all s : Student, c : s.enrolled |
  one (s.(this/Person <: projects) & s.(this/Course <: projects))
-- div,2
all s : Student, c : s.enrolled | one (c.projects & s.projects)
-- div,1
all s : Student, c : s.enrolled |
  one (s.(this/Person <: projects) & c.(this/Course <: projects))
-- div,1
all s: Student | some c: Course | s.projects in c.projects
-- div,1
all s: Student, disj x,y : s.projects | (Course <: projects).x = (Course <: projects).y
-- div,2
all s1,s2: Student | s1!=s2 implies lone s1.projects&s2.projects
-- div,5
all s: Student, disj x,y : s.projects | (Course <: projects).x != (Course <: projects).y
-- div,4
all c: Course, s: Student | c in s.enrolled implies one c.projects
-- div,1
all p:Project, c:Course | lone (Person<: projects).p and c in projects.p
-- div,1
all c: Course, s: Student | c in s.enrolled implies lone c.projects
-- div,1
all p:Project, s:Student | p in s.projects implies one (Course <: projects).p
-- div,1
all c: Course, s: Student | c in s.enrolled <=> one c.projects
-- div,1
all s : Person - Professor | lone p : Project | p in s.projects
-- div,1
all s : Student, c : Course | c in s.enrolled implies lone c.projects
-- div,1
all s:Student , c:Course| s.enrolled in c implies lone c.projects
-- div,1
all s : Student | all c : Course | one (s.projects & c.projects)
-- div,1
all p:Project, s:Student | p in s.projects implies lone (Course <: projects).p
-- div,2
all s : Student, p : s.projects | lone p.~(Course<:projects) & s.enrolled
-- div,1
all p:Project, c:Course | lone (Person<: projects).p and c->p in projects
-- div,1
all c: Course, s: Student | c in s.enrolled <=> lone c.projects
-- div,1
all s:Student,c:Course | one p:Project | p in s.projects
-- div,2
all studi: Student | #{studi.projects & studi.enrolled.projects} <= 1
-- div,1
all s: Student, p: Project | one (s.projects & s.enrolled.projects)
-- div,1
all s: Student, c:Course| lone p:Project | s in projects.p
-- div,1
all s:Student | some c:Course | lone (s.projects & c.projects)
-- div,1
all s: Student, c: Course | lone s.projects&s.enrolled.projects
-- div,2
all p:Project, s:Student | one s.enrolled.projects & s.projects
-- div,1
all disj s1,s2: Student | s1!=s2 implies lone s1.projects&s2.projects
-- div,2
all s:Student | lone c:Course , p:Project | s->p in projects
-- div,1
all s : Person | s in Student && s not in Professor => #s.projects <= 1
-- div,1
all s: Student, c: Course | c in s.enrolled implies one c.grades.Grade
-- div,1
all s: Student, c: Course | c in s.enrolled implies lone c.grades.Grade
-- div,2
all x : Course, y : Student | one y.projects & (y.enrolled & x).projects
-- div,1
all s: Student, c: Course | c in s.enrolled implies one c.^(grades.Grade)
-- div,1
all s : Student, c : s.enrolled, p : c.projects | one p & s.projects
-- div,2
all y : Student, x : Course | one y.projects & (y.enrolled & x).projects
-- div,1
all s : Student, c : s.enrolled | lone s.projects & s.enrolled.projects
-- div,1
all s:Student | all c:Course | c in s.enrolled implies lone s.projects
-- div,1
all s : Student | all c : Course | c in s.enrolled implies some c.projects
-- div,1
all s:Student | (some c:Course | c in s.enrolled) implies one s.projects
-- div,1
all s : Student | all c : Course | c in s.enrolled implies lone c.projects
-- div,1
all s:Student | (some c:Course | c in s.enrolled) implies lone s.projects
-- div,3
all s:Student | some c:Course | c in s.enrolled implies lone s.projects
-- div,1
all s : Student, p : Project | p in s.projects => p in s.enrolled.projects
-- div,1
all s: Student, p: Project | (p in s.projects and p in s.enrolled.projects)
-- div,1
all s : Student | all p1,p2:Project | (p1+p2) in s.projects implies p1=p2
-- div,1
all s:Student,c:Course | one p:Project | p in s.projects implies p in c
-- div,1
all s:Student, c:Course | c in s.enrolled implies one s.projects & c.projects
-- div,3
all s:Student, c:Course , p:Project| p in s.projects implies one (Course <: projects).p
-- div,1
all s: Student, p: Project, c: Course | s in enrolled.c implies lone c.projects
-- div,1
all per : Person | per in Student => lone pro : Project | per->pro in projects
-- div,1
all s : Student, p : Project, c : Course | (p in c.projects) implies p in s.projects
-- div,1
all s:Student, c:Course , p:Project| p in s.projects implies p in c.projects
-- div,1
all s: Student, c : Course | c in s.enrolled => #(s.projects & c.projects) = 1
-- div,5
all c:Course, s:Student | s->c in enrolled => (this/Person <: projects) in Student -> lone Project
-- div,1
all s: Student | one c: Course | c in s.enrolled and s.projects in c.projects
-- div,1
all s : Student | one p : Project | p in s.enrolled.projects and p in s.projects
-- div,1
all s: Student | some c: Course | c in s.enrolled and c.projects in s.projects
-- div,1
all s:Student,p1,p2:Project | p1 in s.projects and p2 in s.projects implies p1=p2
-- div,4
all s: Student | one p: Project | p in s.projects and p in s.enrolled.projects
-- div,1
all s : Student | all c : Course | one p : Project | s in projects.(c.projects)
-- div,1
all s : Student | lone p : Project | p in s.projects and p in s.enrolled.projects
-- div,1
all s : Student | lone p : Project | p in s.projects implies p in s.enrolled.projects
-- div,1
all s : Student | lone p : Project | p in s.enrolled.projects and p in s.projects
-- div,1
all s: Student, proj: Project, c: Course | proj in s.projects implies one (Course <: projects).proj
-- div,1
all s: Student, c:Course | some p: Project | (s.enrolled).projects in s.projects
-- div,1
all s : Student |lone pr : Project | pr in s.projects and pr in s.enrolled.projects
-- div,1
all s : Student | all c : Course | c in s.enrolled implies one s.projects - c.projects
-- div,3
all s: Student, proj: Project, c: Course | proj in s.projects implies lone (Course <: projects).proj
-- div,1
all s : Student | all c : Course | c in s.enrolled implies s.projects - c.projects = 1
-- div,1
all s:Student,c:Course | one p:Project | p in s.projects implies p in c.projects
-- div,2
all s : Student | all c : Course | c in s.enrolled implies lone s.projects - c.projects
-- div,1
all s : Student, c : Course | lone p : Project | p in c.projects => p in s.projects
-- div,1
all s: Student, c: Course | c in s.enrolled implies lone p: Project | p in s.projects
-- div,1
all s:Student, c:Course | lone p:Project | c in s.enrolled implies p in s.projects
-- div,1
all  s : Student, c : Course, p : Project | 
    lone p_act : Project | p_act in s.projects
-- div,1
all s:Student, p:Project| p in s.projects implies p = s.projects & s.enrolled.projects
-- div,1
all s : Student, c : Course | lone p : Project | p in s.projects => p in c.projects
-- div,1
all s : Student, c : Course | one p : Project | s->p in projects and c->p in projects
-- div,1
all s: Student, c: Course | one p: Project | s->p in projects and s->c in enrolled
-- div,1
all s:Student, c:Course | s->c in enrolled => lone p:Project | c->p in projects
-- div,2
all st:Student, c:Course | c in st.enrolled implies one c.projects &  st.enrolled.projects
-- div,1
all s:Student | lone c:Course , p:Project | s->p in projects and c->p in projects
-- div,1
all s: Student, c: Course | lone p: Project | (s -> c in enrolled and c -> p in projects)
-- div,1
all s : Student | one proj : Project | proj in s.projects implies proj in s.enrolled.projects
-- div,1
all st:Student, c:Course | c in st.enrolled implies lone c.projects &  st.enrolled.projects
-- div,1
all s : Student | all p1, p2 : Project | (p1 in s.projects and p2 in s.projects) implies (p1 = p2)
-- div,1
all s : Student, c : Course | lone p : Project | some (c & s.enrolled) implies p in s.projects
-- div,1
all s : Person | all p : Project | p in s.projects implies one c : Course | p in c.projects
-- div,1
all s : Student | all p : Project | p in s.projects implies one c : Course | p in c.projects
-- div,1
all s : Student| one c : Course | one p : Project | p in s.projects => p in c.projects
-- div,1
all s : Student | all p : Project | all c : Course | p in s.projects and p in c.projects
-- div,1
all s : Student, c : Course | one p : Project | p in s.projects => p in s.enrolled.projects
-- div,1
all s:Student, c:Course, p1,p2:Project | p1 in s.projects and p2 in s.projects implies p1=p2
-- div,1
all s : Student| one c : Course | lone p : Project | p in s.projects => p in c.projects
-- div,2
all p1,p2: Project, s: Student, c: Course | ((s in (Person<:projects).p1) and (s in (Person<:projects).p2)) implies p1=p2
-- div,1
all s : Student | all p : Project | p in s.projects implies lone c : Course | p in c.projects
-- div,1
all p1,p2: Project, s: Student, c: Course | (p1 in c.projects) and (p2 in c.projects)implies p1=p2
-- div,1
all s : Person | one p : Project | one c : Course | c->p in projects and s->p in projects
-- div,1
all s : Student | lone p: Project | all c : Course | p in s.projects and p in c.projects
-- div,2
all s : Student | lone p : Project | all c : Course | p in c.projects and p in s.projects
-- div,1
all s:Student | all c:Course | s->c in enrolled implies one p:Project | s->p in projects
-- div,1
all s:Student | all c:Course | one p:Project | s->c in enrolled and s->p in projects
-- div,1
all s:Student | all c:Course | s->c in enrolled implies (lone p:Project| s->p in projects )
-- div,1
all s:Student | some c:Course | s->c in enrolled implies one p:Project | s->p in projects
-- div,1
all s:Student | one c:Course | s->c in enrolled implies ( lone p:Project | s->p in projects)
-- div,1
all s : Student | one  c : Course | lone p : Project | c->p in projects implies s->p in projects
-- div,1
all s:Student | some c:Course | one p:Project | s->c in enrolled and s->p in projects
-- div,1
all s:Student | all c:Course | s->c in enrolled implies (lone p:Project| c->p in projects )
-- div,1
all s : Student | one  c : Course | lone p : Project | s->p in projects implies c->p in projects
-- div,2
all s:Student | lone p:Project | s->p in projects implies (some c:Course| s->c in enrolled)
-- div,2
all s:Student | some c:Course | s->c in enrolled implies lone p:Project | s->p in projects
-- div,1
all s: Student, c:Course,p:Project | s in enrolled.c and c in projects.p implies lone (Person <:projects).p
-- div,1
all s:Student, c:Course , p:Project| p in s.projects implies p = s.projects & s.enrolled.projects
-- div,1
all p1, p2: Project, s: Student | p1 in s.enrolled.projects and p2 in s.enrolled.projects implies p1 = p2
-- div,1
all s : Student, c : Course | lone p : Project | c in s.enrolled and p in s.projects+c.projects
-- div,1
all s: Student| all p : Project | all c : Course | p in c.projects implies s.projects-p = none
-- div,1
all s:Student, c:Course, p:Project | (s->c in enrolled and c->p in projects) implies s->p in projects
-- div,1
all s: Student, p1,p2: Project | p1 in s.projects and p2 in s.projects implies (Course<:projects).p1 != (Course<:projects).p2
-- div,1
all s: Student, c:Course | s->c in enrolled implies (some p: Project | p in c.(Course <: projects)&s.(Person <: projects))
-- div,1
all s : Student, c : Course | lone p : Project | s->c in enrolled and p in s.projects+c.projects
-- div,1
all s1: Student | lone p1: Project | s1->p1 in projects implies (some c1: Course | c1->p1 in projects)
-- div,1
all s : Student | all c : Course | lone p : Project| p in s.projects and p in s.enrolled.projects
-- div,1
all s : Student | all p1,p2:Project | (p1+p2) in s.projects and (p1+p2 in Course.projects) implies p1=p2
-- div,1
all s:Student, c1,c2:Course, p:Project | (s->c1 in enrolled and c1->p in projects) implies s->p in projects
-- div,1
all s: Student, c:Course | one p:Project | s in enrolled.c and c in projects.p implies s in projects.p
-- div,1
all s : Student, c : Course | c in s.enrolled implies one p : Project | p in s.projects and p in c.projects
-- div,1
all s : Student, disj c,c2 : Course, p : Project | p in s.projects => p in c.projects and p not in c2.projects
-- div,1
all s: Student, c: Course, p1, p2: Project | p1&p2 in s.projects && p1&p2 in c.projects => p1 = p2
-- div,1
all s : Person | all c : Course | c in s.enrolled implies one p : Project | p in s.projects & c.projects
-- div,1
all s:Student, c:Course | lone p:Project | p in c.projects and p in s.projects implies c in s.enrolled
-- div,1
all s: Student, c:Course | lone p:Project | s in enrolled.c and c in projects.p implies s in projects.p
-- div,2
all s: Student, c:Course | s->c in enrolled implies (one p: Project | p in c.projects and p in s.projects)
-- div,1
all s : Person | all c : Course | c in s.enrolled implies one p : Project | p in s.projects - c.projects
-- div,1
all s:Student, c:Course | lone p:Project | c in s.enrolled and p in c.projects implies p in s.projects
-- div,1
all s: Student, c:Course | s->c in enrolled implies (some p: Project | p in c.projects and p in s.projects)
-- div,1
all s:Student | all p1,p2:Project | p1 in s.enrolled.projects and p2 in s.enrolled.projects implies p1=p2
-- div,1
all s : Student | all c : Course | c in s.enrolled implies one p : Project | p in s.projects & c.projects
-- div,2
all s : Student | all c : Course | c in s.enrolled implies one p : Project | p in s.projects - c.projects
-- div,1
all s: Student, proj1: Project, proj2: Project | proj1 in s.projects and proj2 in s.projects implies proj1 = proj2
-- div,1
all c : Course | lone (projects.(c.projects) <: Person)
  	all s : Student | lone projects.(s.projects) <: Course
-- div,1
all s: Student, c: Course | lone p: Project | s -> c in enrolled and c -> p in projects implies s -> p in projects
-- div,2
all c : Course, s : Student | lone p : Project | s -> c in enrolled implies s -> p in projects and c -> p in projects
-- div,1
all x : Student, y : Course, z, w : Project | x->z in projects and x->w in projects and x->y in enrolled implies w = z
-- div,1
all s : Student | all p1,p2 : s.projects | p1 in s.enrolled.projects and p2 in s.enrolled.projects implies p1=p2
-- div,1
all s : Student | all c : Course | one p : Project | p in s.projects and p in c.projects and c in s.enrolled
-- div,1
all s : Student | lone p : Project | all c : Course | p in c.projects and p in s.projects and c in s.enrolled
-- div,1
all p1, p2: Project, s: Student, c: Course | c in s.enrolled and p1 in c.projects and p2 in c.projects implies p1 = p2
-- div,1
all s:Student, c:Course, p1,p2:Project | p1 in s.projects and p2 in s.projects and c in s.enrolled implies p1=p2
-- div,1
all s : Student, p1, p2 : Project, c : Course | c in s.enrolled and p1 in c.projects and p2 in c.projects implies p1 = p2
-- div,1
all s : Student | all c : Course | c in s.enrolled implies one p : Project | p in s.projects and p in c.projects
-- div,2
all s : Student | all c : Course | all w : Project | c in s.enrolled and w in s.projects implies lone c.projects
-- div,1
all s : Student | all c : Course | all w : Project | c in s.enrolled and w in s.projects implies lone s.projects
-- div,1
all s : Person | all c : Course | all p : Project | s->c in enrolled and c->p in projects and s->p in projects
-- div,1
all s:Student | all c:Course | c in s.enrolled implies some p:Project | p in s.projects and p in c.projects
-- div,2
all s:Student | one c:Course | lone p:Project | c in s.enrolled and p in c.projects implies p in s.projects
-- div,1
all s : Student | lone p : Project | all c : Course | p in c.projects and c in s.enrolled implies p in s.projects
-- div,1
all s:Student, p1,p2:Project, c:Course | s->c in enrolled and c->p1 in projects and c->p2 in projects implies p1=p2
-- div,1
all s : Person | all c : Course | some p : Project | s->c in enrolled and c->p in projects implies (s->p in projects)
-- div,1
all s: Student | one p: Project | s->p in projects implies (all c: Course | c->p in projects and s->c in enrolled)
-- div,1
all s : Student, c : Course | lone p : Project | ( some (c & s.enrolled) and some (p & c.projects) ) implies p in s.projects
-- div,1
all s : Student, c : Course | lone p : Project | p in s.projects iff some (c & s.enrolled) and  some (p & c.projects)
-- div,1
all s: Student | lone p: Project | s->p in projects implies (all c: Course | c->p in projects and s->c in enrolled)
-- div,1
all s:Student | all p:Project | s->p in projects implies (lone c:Course| s->c in enrolled and c->p in projects)
-- div,1
all s:Student | some c:Course | s->c in enrolled implies lone p:Project | s->p in projects and c->p in projects
-- div,2
all s : Student | one p,p1 : Project | all c : Course | (p+p1) in c.projects and (p + p1) in s.projects implies p = p1
-- div,1
all s : Student, p : Project, c : Course | no (p & c.projects & s.projects) or no (c & s.enrolled) implies p not in s.projects
-- div,1
all p:Person | one pr:Project | p->pr in projects implies (some c:Course|p->c in enrolled and c->pr in projects)
-- div,1
all p:Student | one pr:Project | p->pr in projects implies (some c:Course|p->c in enrolled and c->pr in projects)
-- div,1
all s: Student| all p : Project | all c : Course | p in c.projects and p in s.projects implies s.projects-p = none
-- div,1
all s : Student, p1, p2 : Project | one c : Course | c in s.enrolled and p1 in c.projects and p2 in c.projects implies p1 = p2
-- div,2
all s : Student, c : Course, p1,p2 : Project | p1 in s.projects and p1 in c.projects and p2 in c.projects => p2 not in s.projects
-- div,1
all person : Student | lone project : Project | all course : Course | project in person.projects implies project in course.projects
-- div,1
all person : Student | lone project : Project | all course : Course | project in person.projects and project in course.projects
-- div,1
all s : Student | all p1,p2 : Project | p1 in s.projects and p2 in s.projects implies Course <: projects.p1 != Course <: projects.p2
-- div,1
all studi: Student | all kursPro: studi.enrolled.projects | #{studi.projects & kursPro} <= 1
  
    	#(Person-Student).projects = 0
-- div,1
all s : Student | all p : Project | all c1, c2 : Course | p in c1.projects and p in c2.projects and p in s.projects implies c1 = c2
-- div,1
all s : Student, c : Course, pr : Project | lone p : Project | ( some (c & s.enrolled) and some (pr & c.projects) ) implies p in s.projects
-- div,1
all s:Student | lone p:Project | all c1,c2:Course | s->p in projects and c1->p in projects and c2->p in projects implies c1=c2
-- div,1
all  s : Student, c : Course, p : Project | 
    lone p_act : Project | 
    ( some (c & s.enrolled) and some (p & c.projects) ) implies p_act in s.projects
-- div,1
not some s:Student | some p1, p2:Project, c:Course | s->p1 in projects and s->p2 in projects and c->p1 in projects and c->p2 in projects
-- div,1
all  s : Student, c : Course, p : Project | 
    lone p_act : Project | 
    ( some (p & c.projects) and some (c & s.enrolled) ) implies p_act in s.projects
-- div,1
some p1, p2: Project, c1,c2: Course | all stu: Student| ((p1+p2) in stu.projects and (p1 in c1.projects) and (p2 in c2.projects)) implies c1 != c2
-- div,1
all s: Student, p1, p2: Project, c1, c2: Course | s in projects.p1  and s in projects.p2 and c1 = projects.p1 and  c2 = projects.p2 implies c1 != c2
-- div,1
all s : Person | all c : Course | some p : Project | s->c in enrolled and c->p in projects implies (s->p in projects or s->p not in projects)
-- div,2
all u : Student, c1,c2 : Course, p1,p2 : Project | p1 in u.projects and p2 in u.projects and p1 in c1.projects and p2 in c2.projects implies c1!=c2
-- div,2
all s: Student, p1, p2: Project, c1, c2: Course | s in projects.p1  and s in projects.p2 implies c1 = projects.p1 and  c2 = projects.p2 and c1 != c2
-- div,1
all  s : Student, c : Course, p : Project | 
    lone p_act : Project | 
    ( some (c & s.enrolled) and some (p_act & c.projects) ) implies p_act in s.projects
-- div,1
all  s : Student, c : Course, p : Project | 
    lone p_act : Project | 
    ( some (p_act & c.projects) and some (c & s.enrolled) ) implies p_act in s.projects
-- div,1
all s: Student, tp1, tp2: Project, c : Course | 
  tp1 in s.projects and tp2 in s.projects and tp1 in c.projects and tp2 in c.projects implies tp1!=tp2
-- div,2
some p1, p2: Project | all c1,c2: Course | all s: Student| ((p1+p2) in s.projects and (p1 in c1.projects) and (p2 in c2.projects)) implies c1 != c2
-- div,2
all s : Student | all p1,p2 : Project | p1 in s.projects and p2 in s.projects implies (p1 in s.enrolled.projects and p2 in s.enrolled.projects-p1)
-- div,1
all s: Student, tp1, tp2: Project, c1,c2 : Course | 
  tp1 in s.projects and tp2 in s.projects and tp1 in c1.projects and tp2 in c2.projects implies c1!=c2
-- div,1
all s: Student | all c: Course | all p1, p2 : Project | s->p1 in projects and s->p2 in projects and not (c->p1 in projects and c->p2 in projects)
-- div,1
all s: Student, p1, p2: Project| one c1, c2: Course | s in projects.p1 and s in projects.p2 and c1 = projects.p1 and  c2 = projects.p2 implies c1 != c2
-- div,1
all s: Student | all c: Course | all p1, p2 : Project | s->p1 in projects and s->p2 in projects => not (c->p1 in projects and c->p2 in projects)
-- div,1
all s: Student, p1, p2: Project |all c1, c2: Course | s in projects.p1  and s in projects.p2 implies c1 = projects.p1 and  c2 = projects.p2 and c1 != c2
-- div,1
all s: Student, p1, p2: Project |lone c1, c2: Course | s in projects.p1  and s in projects.p2 implies c1 = projects.p1 and  c2 = projects.p2 and c1 != c2
-- div,1
all s: Student, p1, p2: Project | some c1, c2: Course | s in projects.p1  and s in projects.p2 implies c1 = projects.p1 and  c2 = projects.p2 and c1 != c2
-- div,1
all s:Student | (some c:Course | c in s.enrolled) implies lone s.projects
	all s:Student | all c:Course | lone (s.projects & c.projects)
-- div,1
all s:Student | all p1,p2: Project| p1 in s.projects and p2 in s.projects implies (one disj c1,c2:Course| p1 in c1.projects and p2 in c2.projects)
-- div,1
all s : Student | one p1,p2 : Project | all c : Course | p1 in s.projects and p2 in s.projects and p1 in c.projects and p2 in c.projects implies p1 = p2
-- div,1
all s:Student | (some c:Course | c in s.enrolled) implies lone s.projects
	all s:Student | all c:Course | lone (s.projects + c.projects)
-- div,1
all s: Student, proj1: Project, proj2: Project, c: Course | proj1 in s.projects and proj1 in c.projects and proj2 in c.projects implies proj2 not in s.projects
-- div,1
all s:Student | (some c:Course | c in s.enrolled) implies lone s.projects
	all s:Student | some c:Course | lone (s.projects & c.projects)
-- div,1
all u : Student, c1,c2 : Course, p1,p2 : Project | p1 in u.projects and p2 in u.projects and p1 in c1.projects and p2 in c2.projects implies c1!=c2 and p1!=p2
-- div,1
all s:Student, proj1,proj2:Project, c1, c2:Course | s->c1 in enrolled and s->c2 in enrolled and s->proj1 in projects and s->proj2 in projects => proj1=proj2
-- div,1
all s : Student | all p1,p2 : Project | p1 in s.projects and p2 in s.projects implies ((p1 in s.enrolled.projects and p2 in s.enrolled.projects-p1) or p1=p2)
-- div,2
all s: Student, c: Course, p1: Project, p2: Project | c in s.enrolled and p1 in s.(Person <: projects) and p2 in s.(Person <: projects) implies (p1 in c.(Course <: projects) and p1 in c.(Course <: projects))
-- div,1
all s: Student| lone p1, p2: Project| some c1, c2: Course | s in projects.p1 and s in projects.p2 and c1 = projects.p1 and  c2 = projects.p2 implies c1 != c2
-- div,1
all s: Student, c: Course, p1: Project, p2: Project | c in s.enrolled and p1 in s.(Person <: projects) and p2 in s.(Person <: projects) implies (p1 in c.(Course <: projects) and p2 not in c.(Course <: projects))
-- div,1
all s:Student, c:Course, p1,p2:Project | s->c in enrolled and c->p1 in projects and c->p2 in projects and s->p1 in projects and s->p1 in projects implies p1=p2
-- div,1
all s: Student, p:Project, c1,c2:Course | c1->p in projects and c2->p in projects and s->c1 in enrolled and s->c2 in enrolled
  and s->p in projects implies c1=c2
-- div,1
all s1 : Student | all p1,p2 : Project | all c1 : Course |
  (
    (s1->p1 in projects) and (c1->p2 in projects)
  	and (s1->p1 in projects) and (c1->p2 in projects)
  )
  	implies p1=p2
-- div,1
all u : Student, c1,c2 : Course, p1,p2 : Project | p1 in u.projects and p2 in u.projects and p1 in c1.projects and p2 in c2.projects implies c1!=c2 and u not in Professor
-- div,1
all p1,p2:Project | all s:Student | s->p1 in Person <: projects and s->p2 in Person <: projects implies (all c1,c2:Course | c1 -> p1 in Course <: projects and c2 -> p2 in Course <: projects implies c1 != c2)
-- div,1
all s: Student, c: Course, p1: Project, p2: Project | p1 != p2 and c in s.enrolled and p1 in s.(Person <: projects) and p2 in s.(Person <: projects) implies (p1 in c.(Course <: projects) and p1 in c.(Course <: projects))
-- div,1
all s:Student, proj1,proj2:Project, c1, c2:Course | s->c1 in enrolled and s->c2 in enrolled and s->proj1 in projects and s->proj2 in projects => c1!=c2 or proj1=proj2
-- div,1
all s: Student, c: Course, p1: Project, p2: Project | p1 != p2 and c in s.enrolled and p1 in s.(Person <: projects) and p2 in s.(Person <: projects) implies (p1 in c.(Course <: projects) and p2 not in c.(Course <: projects))
-- div,1
some p1, p2: Project | all c1,c2: Course | all s: Student| ((p1+p2) in s.projects and (p1 in c1.projects) and (p2 in c2.projects) and (c1+c2) in s.enrolled ) implies c1 != c2
-- div,1
all s:Student, proj1,proj2:Project, c1, c2:Course | s->c1 in enrolled and s->c2 in enrolled and s->proj1 in projects and s->proj2 in projects => c1!=c2 and proj1=proj2
-- div,1
all s:Student, proj1,proj2:Project, c1, c2:Course | s->c1 in enrolled and s->c2 in enrolled and s->proj1 in projects and s->proj2 in projects iff c1!=c2 and proj1=proj2
-- div,1
all s: Student, proj1: Project, proj2: Project, c: Course | c in s.enrolled and proj1 in s.projects and proj1 in c.projects and proj2 in c.projects implies proj2 not in s.projects
-- div,1
all p : Project | some s : Person | s->p in projects

  	all s : Person | all c : Course | some p : Project | s->c in enrolled and c->p in projects implies (s->p in projects)
-- div,1
all s: Student, c: Course, p1: Project, p2: Project | c in s.(Person <: enrolled) and p1 in s.(Person <: projects) and p2 in s.(Person <: projects) implies (p1 in c.(Course <: projects) and p2 not in c.(Course <: projects)) or (p2 in c.(Course <: projects) and p1 not in c.(Course <: projects))
-- div,1
all s: Student, c: Course, p1: Project, p2: Project | c in s.(Person <: enrolled) and p1 in s.(Person <: projects) and p2 in s.(Person <: projects) implies (p1 in c.(Course <: projects) and p2 not in c.(Course <: projects)) or (p2 in c.(Course <: projects) and p1 not in c.(Course <: projects)) or (p2 not in c.(Course <: projects) and p1 not in c.(Course <: projects))
-- div,1
all s : Student | all p1,p2 : Project | all c : Course | (p1 in s.projects and p2 in s.projects and p1 in c.projects and p2 in c.projects) implies p1 = p2

  all s : Student | all p : Project | all c1, c2 : Course | p in c1.projects and p in c2.projects and p in s.projects implies c1 = c2
-- div,1
