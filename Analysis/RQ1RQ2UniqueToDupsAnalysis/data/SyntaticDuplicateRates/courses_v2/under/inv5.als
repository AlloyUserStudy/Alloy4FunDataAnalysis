no (Person-Student).projects
-- div,1
(Person<: projects) in Person some -> set Project
-- div,1
no (Professor-Student).projects
-- div,2
all p:Project | p in Student.projects
-- div,1
all p:Person-Student | no p.projects
-- div,3
all x: Person - Student | no x.projects
-- div,2
all p:Project | some projects.p & Person
-- div,1
all proj : Project | proj in Student.projects
-- div,1
all x : Project | some Person <: projects.x
-- div,1
all p : Project |  #Student:>projects.p >=1
-- div,1
all p : Project | Person <: projects.p in Person
-- div,1
all p : Project | Person <: projects.p in Student
-- div,1
all p:Person| some p.projects => p in Student
-- div,5
all x : Person | (some x.projects) => x in Student
-- div,1
all p: Project | all x: p.projects | x in Student
-- div,1
all x : Project | some Person <: projects.x & Student
-- div,1
all p: Person | p in projects.Project implies p in Student
-- div,1
all p: Project| some s: Person | s in projects.p
-- div,2
all p:Project | some s:Student | p in s.projects
-- div,7
all p : Project | some u : Student | p in u.projects
-- div,1
all p: Project| some s: Student | s in projects.p
-- div,6
all p:Project| (some x:Student |x->p in projects)
-- div,2
all p : Project | some p1 : Student | p in p1.projects
-- div,1
all x: Person-Professor, y: Project| some (Person <: projects).y
-- div,1
all p : Project | some s : Student | s in p.(~(Person <: projects))
-- div,1
all x : Person | (some x.projects :> Project) => x in Student
-- div,1
all proj: Project | some p: Person | p->proj in projects
-- div,1
(all p1 : Project | some pr1 : Student | pr1->p1 in projects)
-- div,1
all s : Person, p : Project | (p in s.projects implies s in Student)
-- div,1
all x:Project, y: Person| y-> x in projects implies y in Student
-- div,5
all u:Person, p:Project| u->p in projects implies u in Student
-- div,1
all p: Person, pr: Project | (p not in Student => pr not in p.projects)
-- div,1
all p : Project | some p : Person <: projects.p | p in Student
-- div,1
all s: Person, p: Project | s not in Student => s not in p.~projects
-- div,2
all proj:Project, p:Person | p in projects.proj implies p in Student
-- div,1
all proj : Project, p:Person | proj in p.projects implies p in Student
-- div,1
all p : Person | some p.projects implies p in Student and some p.projects
-- div,1
all p : Person - Student | no p.projects and Project in Person.projects
-- div,1
all p: Project | all x: Person | p = x.projects => x in Student
-- div,1
all s : Person | all p : Project |  s in projects.p implies s in Student
-- div,2
all p: Project | some x: Person | x = projects.p => x in Student
-- div,1
all p: Project | all x: Person | x in projects.p => x in Student
-- div,2
all p: Project | all u: Person | p in u.projects implies u in Student
-- div,2
all p : Project | (all s : Person | p in s.projects => s in Student)
-- div,1
all x : Project | all y : Person | x in y.projects implies y in Student
-- div,1
all p: Project| all s: Person | s in projects.p implies s in Student
-- div,3
all p: Project | some x: Person | projects.p = x => x in Student
-- div,1
all s : Person | all p : Project |  (p in s.projects) implies (s in Student)
-- div,2
all x : Project | all y : Person | y in projects.x implies y in Student
-- div,1
all p : Project | some s : Person | s in projects.p and s in Student
-- div,2
all x : Project | some y : Person | y in projects.x and y in Student
-- div,1
all p : Project | some s : Person | s in projects.p implies s in Student
-- div,3
all x : Project | some y : Person | x in y.projects implies y in Student
-- div,2
all p: Project | some x: Person | x in projects.p => x in Student
-- div,1
all x : Project | some y : Person | y in projects.x implies y in Student
-- div,1
all p : Project | some s : Person | s in Student => p in s.projects
-- div,1
all p:Project| some x:Person| x->p in projects and x in Student
-- div,1
all p:Project| (some x:Person|x->p in projects implies x in Student)
-- div,1
all x:Project|some y: Person| y-> x in projects implies y in Student
-- div,1
all p : Project | all p1 : Person | p in p1.projects implies p1 in Student
-- div,1
all pr:Project|some p:Person| pr in p.projects implies p in Student
-- div,1
all pr:Project|some p:Person| pr in p.projects and p in Student
-- div,2
all p : Project | some s : Person | s in p.(~(projects)) and (s in Student)
-- div,3
all pr:Project|some p:Person| pr in p.projects iff p in Student
-- div,1
all proj : Project | some per : Person <: projects.proj | per in Student
-- div,1
all p : Person | all proj : Project | #(p.projects)>0 implies p in Student
-- div,1
all p : Project | all pr : Person | pr in p.~(projects) implies pr in Student
-- div,1
all p : Project | some per: Person | per in projects.p implies per in Student
-- div,1
all proj:Project | some p:Person | p in projects.proj implies p in Student
-- div,1
all p : Project | Person <: projects.p in Person and some Person <: projects.p
-- div,2
(all p2 : Project | all pr2 : Person   | pr2->p2 in projects implies pr2 in Student)
-- div,1
all pr:Project|some p:Person| pr in p.projects implies p in (Person & Student)
-- div,1
all x: Person, y: Project| x->y in projects implies x in Student and some (Person <: projects).y
-- div,1
all x: Person, y: Project| some y.(Person<: projects) implies x -> y in projects and x in Student
-- div,2
all y: Project, x: Person| some (Person <: projects).y and x->y in projects implies x in Student
-- div,1
all x: Person, y: Project| x->y in projects implies x in Student and some x.(Person <: projects)
-- div,1
all p : Project | all s : Person | some (p.(~(Person <: projects))) and (p in s implies s in Student)
-- div,2
all p : Project | some s : Person | some (p.(~(Person <: projects))) and (p in s implies s in Student)
-- div,1
all proj : Project | all per : Person <: projects.proj | some per and per in Student
-- div,1
all x: Person | x in Student => #x.projects>0 && x not in Student => x.projects = 0
-- div,1
all p : Person - Student | all pr: Project | no p.projects and pr in Person.projects
-- div,1
all p : Project | some s : Student | p in s.projects and no (Professor-Student).projects
-- div,1
all y: Project| some (Person <: projects).y implies ( all x: Person |  x-> y in projects implies x in Student)
-- div,1
all proj : Project | proj in Person.projects
    all proj : Project | proj in Student.projects
-- div,1
all p : Person, x:Project | #p.projects >0 => p in Student and #projects.x & Person> 0
-- div,1
all project : univ | project in Project implies some student : Student | student->project in projects
-- div,1
all pr:Project|some p:Person| pr in Course.projects implies pr in p.projects and p in Student
-- div,2
all p : Project | Person <: projects.p in Person
	all p : Project | some Person <: projects.p
-- div,1
all x: Person | x in Student => #x.projects>0 && x not in Student => x.projects not in Course.projects
-- div,1
all p : Person - Student | no p.projects and (all pr : Project | some som : Person | pr in som.projects )
-- div,1
all p:Person, proj:Project | proj in p.projects implies p in Student and (some p1:Person | proj in p1.projects)
-- div,1
all p:Person, proj:Project | (proj in p.projects implies p in Student) and (some p1:Person | proj in p1.projects)
-- div,1
all proj:Project, p:Person | (p in projects.proj implies p in Student) and (some p2:Person | p2 in projects.proj)
-- div,8
all p:Person, proj:Project | (proj in p.projects implies p in Student) and (some p2:Person | proj in p2.projects)
-- div,2
all u:Person, p:Project, c:Course| u->p in projects and u->c in enrolled and c->p in projects implies u in Student
-- div,2
all p: Person | (p not in Student => p.projects = none) && (all pr:Project | some s: Student | pr in s.projects )
-- div,2
all x: Person - Student | no x.projects
  	all p : Project | some s : Person | s in Student => p in s.projects
-- div,1
all p: Person, pp:Project | (p not in Student => pp not in p.projects) && (all pr:Project | some s: Student | pr in s.projects )
-- div,1
all x : Project | some y : Person | y in projects.x implies y in Student
  all x : Project | some y : Person | y in projects.x
-- div,1
all x : Project | some y : Person | y in Student and x in y.projects
  all x : Project | some y : Person | x in y.projects
-- div,1
all x : Project | some y : Person | y in projects.x and y in Student
  all x : Project | some y : Person | y in projects.x
-- div,1
all x : Project | some y : Person | x in y.projects implies y in Student
  all x : Project | some y : Person | x in y.projects
-- div,2
all project : Project | some student : Student | all professor : Person - Student | (student->project in projects) and (no professor.projects)
-- div,1
all proj:Project, p:Person | (p in projects.proj implies p in Student) and (all proj2:Project | some p2:Person | p2 in projects.proj2)
-- div,1
(all pro : Project | all p : Person | p->pro in projects implies p in Student)
  (all p2 : Project | all pr2 : Person   | pr2->p2 in projects implies pr2 in Student)
-- div,1
