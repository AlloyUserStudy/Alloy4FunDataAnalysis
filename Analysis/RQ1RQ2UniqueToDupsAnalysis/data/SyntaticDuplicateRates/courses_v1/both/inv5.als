no Course <: projects
-- div,1
no Professor.projects
-- div,2
some Student.projects
-- div,2
some Student<:projects
-- div,2
Person.projects in Student
-- div,1
(Person<:projects).Project = Student
-- div,4
no Person.projects - Student
-- div,1
Person <: projects in Person one -> Project
-- div,1
Course<:projects in Course one -> set Project
-- div,1
some Project & Person.projects
-- div,1
Project.~(Person<:projects) not in Professor
-- div,1
Person<:projects in Student lone -> Project
-- div,1
no (Professor.projects & Project)
-- div,1
one (Person <: projects)-(Student->Project)
-- div,1
some (Person<:projects).Project & Student
-- div,2
some (Student <: projects).Project
-- div,1
some Student <: projects.Project
-- div,1
some (Person <: projects)-(Student->Project)
-- div,2
no Project.~(Person<:projects) & Professor
-- div,3
some (Project.~(Person <: projects)&Student)
-- div,1
all p:Person | p in Student
-- div,1
some Project.~(Student <: projects)
-- div,1
(Person-Student) in projects.Project
-- div,1
(Person - Professor).projects = Project
-- div,3
(Student - Professor).projects = Project
-- div,1
(Person-Professor) in projects.Project
-- div,3
Project in (Person-Professor).projects
-- div,4
all p:Project | one (Person <: projects).p
-- div,1
all x : Professor | no x.projects
-- div,1
no Course <: projects
	no Professor <: projects
-- div,2
no (Person-Professor) & projects.Project
-- div,1
no (Person <: projects.Project ) & Professor
-- div,1
some (Person<:projects).Project & (Person - Professor)
-- div,1
some (Person<:projects).Project & Person - Professor
-- div,1
all s : Student | some Student.projects
-- div,1
(Person-Student).projects not in Course.projects
-- div,1
all x:Project | Student->x in projects
-- div,3
Person.projects - Professor.projects = Project
-- div,1
some s: Student | s in Project.~(Person <: projects)
-- div,1
all  pessoa : enrolled.Course | pessoa in Student
-- div,1
all p : Project | no (p.~(Person<:projects) & Professor)
-- div,1
no Professor.projects
  	Project in Person.projects
-- div,1
all p: Project | one p.~(Student<:projects)
-- div,1
all s : Person, p : Project | s in projects.p
-- div,1
(Person<:projects).Project in Student and some (Person<:projects).Project
-- div,1
all s : Person, p : Project | some s.projects
-- div,2
some (Person<:projects).Project and (Person<:projects).Project in Student
-- div,3
all s : Person, p : Project | p in s.projects
-- div,1
Person.projects - (Person & Student).projects = Project
-- div,1
all p:Project, x:Student | p in x.projects
-- div,1
all p : Project, s : Student | p in s.projects
-- div,1
some (Person <: projects).Project
    no (Person - Student).projects
-- div,1
Person.projects - (Person & Professor).projects = Project
-- div,1
no (Person-Student).projects
  	some Student.projects
-- div,1
all p : Person | some p.projects <=> p in Student
-- div,1
all x:Project| (Person-Professor)->x in projects
-- div,1
all p : Project | some (Person <: projects).p implies  p in Student
-- div,1
all x:Project| not(Person-Student)->x in projects
-- div,1
Project.~(Person<:projects) in Student
  	some Project.~(Course<:projects)
-- div,5
all  s1,s2: Student | lone (s1.projects & s2.projects)
-- div,1
all p: Person | (p in Student) => (p.projects = Project)
-- div,1
Student.projects = Person.projects
  	no Professor.projects
-- div,1
Project.~(Person<:projects) not in Professor
  	some Project.~(Course<:projects)
-- div,1
all p: Project | some (Person<:projects).p & Person - Professor
-- div,2
no Professor & Student
  	no (Project.~(Person<:projects) & Professor)
-- div,1
all p : Project | some ((Person-Professor) :> projects.p)
-- div,2
all p : Project | some (Person-Professor :> projects.p)
-- div,1
all p : Project | one s : Student | p in s.projects
-- div,1
all s : Student | all p : Project | p in s.projects
-- div,1
all p: Project | lone s: Person | p in s.projects
-- div,1
all p: Project | all s: Student | p in s.projects
-- div,2
(Person<:projects).Project in Student && some (Person<:projects).Project & Student
-- div,2
all p: Project | one s: Student | s->p in projects
-- div,1
all p: Project| some c: Course | c->p in projects
-- div,1
all p: Project | all s: Student | s->p in projects
-- div,2
all p: Project | lone s: Student | p in s.projects
-- div,2
no Project.~(Person<:projects) & Professor
  	some Project.~(Course<:projects)
-- div,1
all s : Student | some Person.projects<:Person & Student
-- div,1
all pj:Project | lone s:Student | s.projects = pj
-- div,2
some s: Student | all p: Project | s->p in projects
-- div,2
all pj:Project | some s:Student | s.projects = pj
-- div,1
all p: Project, y : Person-Professor | p in y.projects
-- div,2
no (Person - Student).projects 
  	some (projects.Project) :> Person
-- div,1
some Person <: projects.Project
    no (Person - Student).projects
-- div,2
all p : Project | some s: Student | p.~(Person <: projects) in s
-- div,1
all p : Project | one s : Student | p & s.projects = p
-- div,1
no projects.Project & Professor 
  	some Person & projects.Project
-- div,1
some Student & projects.Project
  	no Professor & projects.Project
-- div,3
no Person <: projects-Student->Project
    some Person <: projects&Student->Project
-- div,3
no projects.Project & Professor 
  	some Student & projects.Project
-- div,1
no Professor.projects
  	some Student & projects.Project <: Person
-- div,2
some s:Student| all proj: Project| s->proj in projects
-- div,1
some Project.~(Student <: projects)
    no (Person - Student).projects
-- div,1
some y : Student | some y & projects.Project and no y.teaches
-- div,2
all curso: Course.projects, pessoa: Person| pessoa in Student
-- div,1
all p:Project, x:Person | p in x.projects and x in Student
-- div,1
no (Person <: projects)&(Professor->Project)
    some (Person <: projects)&(Student->Project)
-- div,1
all p : Project | no (Professor.projects) and some (Student.projects)
-- div,1
all p: Project | some (Person<:projects).p and no (Professor<:projects).p
-- div,1
all p: Person, pj: Project | p in Student and p in projects.pj
-- div,1
all p: Person, pj: Project | p in Student and pj in p.projects
-- div,1
all p : Project | some s : Student | s in enrolled.(projects.p)
-- div,1
all p : Project | p.~(Person <: projects) in Student
    some (Person <: projects).Project
-- div,1
all p : Project | all s : Student - Professor | p in s.projects
-- div,1
all p : Project | some s : Person - Professor | p in s.projects
-- div,1
all p : Project | all s : Person - Professor | s -> p in projects
-- div,1
all p:Person , po:Project | no (p & Student) implies po in p.projects
-- div,1
all p : Project | some s : Student - Professor | p in s.projects
-- div,2
all p : Project | some s : Person - Professor | s -> p in projects
-- div,1
no Professor.projects
  all p : Project | some Person & projects.p
-- div,1
Project.~(Person<:projects) in Student
  	all p : Project | some p.~(Course<:projects)
-- div,2
no Professor.projects
  	all p : Project | some Person<:projects.p
-- div,7
all p : Project | p.~(Person<:projects) in Student
  	some Project.~(Person<:projects)
-- div,2
all x,y : univ | x->y in Person<:projects implies x not in Professor and x in Student
-- div,1
no Professor.projects
  all p : Project | some Student & projects.p
-- div,2
some p: Person, proj: Project | proj in p.projects implies p in Student
-- div,1
some Student & projects.Project
  	no Person-Student & projects.Project
-- div,1
all p: Project | some p.~(Person<:projects) and no p.~(Professor<:projects)
-- div,1
all p:Person , po:Project | no (p & Professor) implies po in p.projects
-- div,2
all p : Project | all per : Person - Professor | p in per.projects
-- div,1
(Person<:projects).Project in Student
    
    some x:Student| x in projects.Project
-- div,1
Student.projects = Project 
  	(Student <: projects) in Student some -> some Project
-- div,1
all curso: Course.projects, pessoa : enrolled.Course | pessoa in Student
-- div,2
all x:Person | all y:Project | x->y in projects implies x=Student
-- div,1
all p:Person | p.projects in Student and p.projects in Person.projects
-- div,1
all p : Project | all e : Person | e->p in projects implies e = Student
-- div,1
all p: Project | one s: Person | p in s.projects => s in Student
-- div,1
some Person-Professor & projects.Project
  	no Professor & projects.Project
-- div,1
all pessoa : enrolled.Course, pessoa : enrolled.Course | pessoa in Student
-- div,1
all p: Project | lone s: Person | p in s.projects => s in Student
-- div,1
some u : Person | all p : Project | p in u.projects implies u in Student
-- div,1
all p: Project | lone s: Person | p in s.projects && s in Student
-- div,1
all s : Person | some p : Project | p in s.projects implies s in Student
-- div,1
all p : Project | some s : Person | s->p in projects implies p in Student
-- div,1
some Student-Professor & projects.Project
  	no Professor & projects.Project
-- div,1
all p:Project | some x:Person | p in x.projects implies x not in Student
-- div,1
all x : Project | no Professor.projects & x and some x & Person.projects
-- div,1
all p:Person | some pr:Project | pr in p.projects implies p in Student
-- div,2
all x : Project | no projects.x & Professor and some Student & projects.x
-- div,1
all person : Student | all project: Project | project in person.projects
-- div,1
all p : Professor | Person<:projects.Project in Student and no p.projects
-- div,1
all x : Project | no Professor.projects & x and some x & Student.projects
-- div,1
all p:Project | some x:Person | p in x.projects implies x not in Professor
-- div,1
all p : Person | all pro : Project | pro in p.projects and p in Student
-- div,1
all p:Person | some po:Project | p->po in projects implies p in Student
-- div,1
all p: Project | some s: Person | p in s.projects and s not in Professor
-- div,1
all p : Project | some u : Person | p in u.projects implies u not in Professor
-- div,1
all p : Project | some projects & Student->p and no projects & Professor->p
-- div,1
no (Person-Student) & projects.Project
   all p:Person| some p.enrolled
-- div,1
all p: Project | some s: Person | s->p in projects implies s not in Professor
-- div,1
no (Person-Student) & projects.Project
   all p:Person| some p.projects
-- div,1
some p:Person| all proj: Project| p->proj in projects => p in Student
-- div,1
all p: Person, c:Course, pj: Project | p in Student and p in projects.pj
-- div,1
no Professor & projects.Project
  all p : Project | some Student & projects.p
-- div,1
all x:Project| not(Person-Professor)->x in projects and Student -> x in projects
-- div,1
all x : Professor | no x.projects
  	some Student & (projects.Project <: Person)
-- div,1
some y : Student | all x : Project | some y & projects.x and no y.teaches
-- div,1
all curso: Course.projects | some pessoa : enrolled.curso | pessoa in Student
-- div,1
all proj:Project | some p:Person | p->proj in projects implies p not in Professor
-- div,1
no (Person-Student) & projects.Project
   all p:Person| p in enrolled.Project
-- div,1
no (Person-Student) & projects.Project
   all p:Person| p in Project.enrolled
-- div,1
all pro : Project | all per : Person | per->pro in projects && per in Student
-- div,1
no projects.Project & Professor <: Person
  	some Student & projects.Project <: Person
-- div,1
all p : Project | some s : Student | p in s.projects
  	no Professor.projects
-- div,2
all x : Project | no (Person-Professor).projects & x and some x & Person.projects
-- div,1
all p:Project , s: Person | s->p in projects implies s in Student and s not in Professor
-- div,1
some (Person :> projects.Project)
  
    
     all p : Project | (Person :> projects.p) in Student
-- div,1
all p : Project | projects.p <: Person in Student 
  	some projects.Project <: Person
-- div,1
some projects.Project <: Person
	all p : Project | projects.p <: Person in Student
-- div,1
all p: Project, s: Person| no c: Course | c->p in projects => s in Student
-- div,1
all p : Professor | p.projects = none
	all p : Project | p in Student.projects
-- div,2
some person : Person | all p : Project | person in Student implies person->p in projects
-- div,1
Project.~(Person<:projects) in Student and Project.~(Person<:projects) not in Professor
  	some Project.~(Course<:projects)
-- div,1
all p: Project, s: Person| all c: Course | c->p in projects => s in Student
-- div,1
some person : Person | all p : Project | person->p in projects implies person in Student
-- div,3
all p: Project, s: Person| all c: Course | c->p in projects <=> s in Student
-- div,1
all p : Project | p.~(Person<:projects) in Student
  	all p : Project | some p.~(Course<:projects)
-- div,2
all x : Professor | no x.projects
  	all y : Project | some Student & projects.y
-- div,2
all p: Project, s: Person| some c: Course | c->p in projects => s in Student
-- div,1
all x : Professor | no x.projects
  	some y : Project | some Student & projects.y
-- div,1
some y : Student | no Person-Student & projects.Project and some y & projects.Project
-- div,1
all s : Person, p : Project | ( no ( s & Student ) implies p not in s.projects ) and p in  s.projects
-- div,1
all s : Person, p : Project | ( no ( s & Student ) implies p not in s.projects ) and some s.projects
-- div,1
all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p in s.projects
-- div,1
all s : Person, p : Project | ( some s.projects ) and ( no ( s & Student ) implies p not in s.projects )
-- div,1
all p : Project | p in Student.projects
  	all p : Project | p not in Professor.projects
-- div,1
all x:Project | Student->x in projects
    
    some x:Student | x->Project in projects
-- div,2
all x: Project | some y: Person | y not in Professor and y in Student and x in y.projects
-- div,2
some y : Student | no Professor-Student & projects.Project and some y & projects.Project
-- div,1
all p: Project | some s: Person | p in s.projects and s in Student and s not in Professor
-- div,1
some x:Project | Student->x in projects
    
    some x:Student | x->Project in projects
-- div,2
all p : Person, c : Course | some s : Student | no ( p & Professor ) implies c not in p.teaches
-- div,1
all p:Project | one s: Person | s->p in projects implies s in Student and s not in Professor
-- div,2
all p:Person, pr:Project | p->pr in Person<:projects => p in Student
  	
  	some (Person<:projects).Project
-- div,1
all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and some p & s.projects
-- div,2
all s : Person, p : Project | ( some (p & s.projects) ) and ( no ( s & Student ) implies p not in s.projects )
-- div,1
some Student<:projects
  all pj: Project, p: Person | pj in p.projects implies p in Student
-- div,2
all person : Person | all project: Project | project in person.projects and person in Student
-- div,1
all pj:Project, p:Professor | lone s:Student | s.projects = pj and p.projects != pj
-- div,1
all c: Course | all s: Person | some g: Grade | c->s->g in grades => s in Student
-- div,1
all s : Student| no Person <: projects-s->Project
    all s : Student| some Person <: projects&s->Project
-- div,1
all pj:Project, pr:Professor | lone s:Student | s.projects = pj and pr.projects != pj
-- div,1
some y : Student | no Professor & projects.Project and some y & projects.Project and no y.teaches
-- div,1
all p : Project | all u : Person | p in Course.projects implies p in u.projects and u in Student
-- div,1
all x : Professor | no x.projects
  	all y : Project | some Student & projects.y <: Person
-- div,1
all x : Professor | no x.projects
  	all y : Project | some Person-Professor & projects.y
-- div,1
all p : Project, pr : Professor | some s : Student | p in s.projects and not p in pr.projects
-- div,1
all p : Project | some s : Student, pr : Professor | p in s.projects and not p in pr.projects
-- div,1
all s : Student | Student in Person.projects:>Person and some Student & Person.projects:>Person
-- div,1
all p:Professor, pr:Project | p->pr not in projects and some s:Student | s->pr in projects
-- div,1
all p: Project | some s: Person | no c: Course | s->p in projects and c->p in projects
-- div,1
some Project & Person.projects
  	all pr : Project, p: Person | pr in p.projects implies p in Person
-- div,1
some Project & Person.projects
  	all pr : Project, p: Person | pr in p.projects implies p in Student
-- div,1
all pro: Project | #pro.~{Student <: projects} >= 1 and #pro.~{{Person-Student} <: projects} >= 1
-- div,1
all p : Project | some u : Person | p in Course.projects implies p in u.projects and u not in Professor
-- div,1
all p: Project | some s: Person | no c: Course | s->p in projects and c->p !in projects
-- div,1
all p: Project | some s: Person | all c: Course | s->p in projects => c->p !in projects
-- div,1
all p: Project | some s: Person | all c: Course | s->p in projects and c->p !in projects
-- div,1
all p: Project | some s: Student | s->p in projects implies (one d: Student | d->p in projects)
-- div,1
all p: Project | lone s: Person | p in s.projects => s in Student
  	Person.projects = Project
-- div,1
all x, y : univ | x in Person and y in Project and x->y in Person<:projects implies x in Student and not x in Professor
-- div,1
all p: Project | some s: Student | s->p in projects implies (one d: Student | s->p in projects)
-- div,1
all pro : Project | all per : Person | per->pro in projects => per in Student && per not in Professor
-- div,1
all pro : Project | some per : Person | per->pro in projects => per in Student && per not in Professor
-- div,1
Project.~(Person<:projects) in Student
  	all p : Project | no p.~(Person<:projects) & Professor
  	some Project.~(Course<:projects)
-- div,1
(all p: Person | some proj: Project | proj in p.projects implies p in Student)
	and
	Person.projects = Project
-- div,1
(all p: Person | some proj: Project | proj in p.projects implies p in Student)
	and
	Project = Person.projects
-- div,1
(all p: Person | some proj: Project | proj in p.projects implies p in Student)
	and
	Project = Student.projects
-- div,1
all y : Project | no Professor & projects.y 
  	all y : Project | some Person-Professor & projects.y
-- div,1
(all p: Person | some proj: Project | proj in p.projects implies p in Student)
	and
	Project in Person.projects
-- div,1
(all p: Person | some proj: Project | proj in p.projects implies p in Student)
	and
	Person.projects in Project
-- div,1
all p: Project | one Person <: projects.p
	all p: Professor, proj: Project | p->proj not in projects
-- div,2
(all p: Person | some proj: Project | proj in p.projects implies p in Student)
	and
	Project in Student.projects
-- div,1
all p: Project, c: Course| some s: Person | (s in Student) => (s->p in projects) and (c->p !in projects)
-- div,1
all p: Project, c: Course| some s: Person | (s in Student => s->p in projects) and (c->p !in projects)
-- div,1
all p: Project, c: Course| some s: Person | (s in Student <=> s->p in projects) and (c->p !in projects)
-- div,1
all p: Person - Student | p.projects = none
  	
  	all p: Project | all s:Student | p in s.projects
-- div,1
some p : Person, c : Course | all pr : Project | no ( p & Student ) implies c not in p.enrolled and pr in p.projects
-- div,1
all p: Project | lone s: Person | p in s.projects
  	Student.projects - Professor.projects = Student.projects
-- div,1
all p : Project | all s : Person | one z : Course | z->p in projects and s->p in projects implies s in Student
-- div,2
all p: Person, proj: Project | proj in p.projects implies p in Student
  	all proj: Project | some (Course <: projects).proj
-- div,1
all p : Project | some s : Person | one z : Course | z->p in projects and s->p in projects implies s in Student
-- div,2
all p: Person, proj: Project | p->proj in (Person <: projects) implies p in Student
  	all proj: Project | some (Course <: projects).proj
-- div,2
all y : Project | no Professor & projects.y <: Person
  	all y : Project | some Person-Professor & projects.y
-- div,1
all p:Professor, pr:Project | p->pr not in projects
  	all p:Project | some s:Student | s->p in projects
-- div,1
all p:Professor, pr:Project | p->pr not in projects
  	all p:Project | some per:Person | per->p in projects
-- div,1
all p:Professor, pr:Project | p->pr not in projects
  	all pr2:Project | some per:Person | per->pr2 in projects
-- div,2
all pj:Project, pr:Professor | lone s:Student | s.projects = pj and pr.projects != pj and pr.teaches.projects != pj
-- div,1
all p : Person, c : Course, pr : Project | some s : Student | pr in s.projects and (no ( p & Student ) implies c not in p.enrolled)
-- div,1
all p : Person, c : Course, pr : Project | some s : Student | pr in s.projects and no ( p & Student ) implies c not in p.enrolled
-- div,1
all p : Person, c : Course,  pr : Project | some s : Student | no ( p & Student ) implies c not in p.enrolled and pr in s.projects
-- div,1
all p : Person, c : Course,  pr : Project | some s : Student | no ( p & Student ) implies pr not in p.projects and pr in p.projects
-- div,1
all y : Project | no Professor & projects.y <: Person
  	all y : Project | some Person-Professor & projects.y <: Person
-- div,1
all p : Person, c : Course, pr : Project | some s : Student | pr in s.projects and no ( p & Professor ) implies c not in p.teaches
-- div,1
all p: Project | lone s: Person | p in s.projects
  	all p: Project, s: Person | p in s.projects => s in Student
-- div,3
all a : Person, b : Project | b in a.projects implies a in Student and (some c : Person | all d : Project | d in c.projects)
-- div,1
all c: Course | all s: Person | some g: Grade | c->s->g in grades => s in Student
	Course<:projects in Course one -> set Project
-- div,1
no Student - Professor
  	Project.~(Person<:projects) in Student
  	all p : Project | no p.~(Person<:projects) & Professor
  	some Project.~(Course<:projects)
-- div,1
all p1 : Project | some pr1 : Person | pr1->p1 in projects
  	all p2 : Project | one pr2 : Person | pr2->p2 in projects
-- div,1
all proj: Project | some p: Student | proj in p.projects
	and all p: Student | some proj: Project | proj in p.projects
-- div,1
(all proj: Project | some p: Student | proj in p.projects)
	and (all p: Student | some proj: Project | proj in p.projects)
-- div,1
(all p : Person, proj1 : Project | p->proj1 in projects implies p in Student ) and (all proj : Project, s : Student | s->proj in projects)
-- div,2
all p : Project | all u : Person |all c : Course| p in c.projects and c in u.enrolled implies p in u.projects and u in Student
-- div,1
all p:Project, pe:Person | p in pe.projects implies pe not in Professor
  all p:Project | some s:Student | p in s.projects
-- div,1
all p : Project | all u : Person |all c : Course| p in c.projects and c in u.enrolled <=> p in u.projects and u in Student
-- div,1
all p : Person, pr : Project | some s : Student | ( no (p & Student) implies pr not in p.projects ) 
  	all s: Student | some s.projects
-- div,1
all p : Project | all u : Person |all c : Course| p in c.projects and c in u.enrolled implies p in u.projects and u not in Student
-- div,1
all person : Person - Student | person.projects = none
  	all person : Student | all project: Project | project in person.projects
-- div,1
all p : Project | all per : Person - Professor | p in per.projects
	all p : Project | all per : Person | p in per.projects
-- div,1
all p : Project | all s : Student | p in s.projects
  all p : Project | some pe : Person | p in pe.projects implies pe in Student
-- div,2
all p : Project | all prof : Professor | p  not in prof.projects
	all p : Project | all per : Person - Professor | p in per.projects
-- div,1
(all p:Person | p in Student implies some pr:Project | p->pr in projects) and (all pr:Project | some p:Student | p->pr in projects)
-- div,1
all p:Person | p in Student implies some pr:Project | p->pr in projects and all pr:Project | some p:Student | p->pr in projects
-- div,1
(all p:Person | p not in Student implies some pr:Project | p->pr not in projects) and (all pr:Project | some p:Student | p->pr in projects)
-- div,1
(all proj: Project | some p: Person | proj in p.projects)
	and (all p: Person | some proj: Project | proj in p.projects implies p in Student)
-- div,1
all p1 : Project | some pr1 : Person | pr1->p1 in projects
  	all p2 : Project | one pr2 : Person | pr2->p2 in projects implies pr2 in Student
-- div,1
all p: Person, proj: Project, c: Course | proj in p.projects and c in p.enrolled implies p in Student
  	all proj: Project | some (Course <: projects).proj
-- div,1
(all proj:Project | some p:Student | p->proj in projects)

	(all proj:Project | all p:Person | p->proj in projects implies p in Professor)
-- div,1
all p1 : Project | some pr1 : Student | pr1->p1 in projects
  	all p2 : Project | one pr2 : Person | pr2->p2 in projects implies pr2 in Student
-- div,1
all proj:Project | all p:Person | p->proj in projects implies p in Professor
    all proj:Project | some p:Student | p->proj in projects
-- div,2
some s : Student | all p : Project | s->p in projects
	some person : Person | all p : Project | (person->p in projects) implies person in Student
-- div,1
all p: Person, proj: Project, c: Course | proj in p.projects and c in p.enrolled implies p in Student and proj in c.projects
  	all proj: Project | some (Course <: projects).proj
-- div,1
all p : Project | all s : Person | one z : Course | z->p in projects and s->p in projects implies s in Student
  	 and all p : Project | some s : Person | s->p in projects
-- div,1
all p : Project | all s : Person | one z : Course | z->p in projects and s->p in projects implies s in Student
  	all p : Project | some s : Person | s->p in projects
-- div,1
