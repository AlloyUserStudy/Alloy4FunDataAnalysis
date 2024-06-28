-- equiv pair start,1
all s: Student | some s.projects
-- div,1
-- equiv pair end
-- equiv pair start,14
(Student-Student.enrolled).projects = none
-- div,1
all s: Student | s.projects in s.enrolled
-- div,3
all s : Student | no s.projects - s.enrolled
-- div,1
all s:Student, p:s.projects | p in s.enrolled
-- div,1
all u : Student | (all p: u.projects | p in u.enrolled )
-- div,1
all s : Student, p : Project | p in s.projects implies p in s.enrolled
-- div,1
all s : Student | all p : s.projects | (some c : s.enrolled | p in c)
-- div,3
all s : Student | all p : s.projects | some c : Course | c in s.enrolled and p in c.enrolled
-- div,1
all s:Student, proj:Project | s in projects.proj implies (some c:Course | c in enrolled.c and proj in c.projects)
-- div,1
all x: Student | all p: Project | p in x.projects implies some c:Course | c in p.enrolled and p in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
(Student.enrolled-Student).projects = none
-- div,2
-- equiv pair end
-- equiv pair start,1
all s:Student, p:Project | s in projects.p
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student | s.projects = s.enrolled.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | some c : Course | p.enrolled in c
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Person | s.enrolled.projects in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
(Student.enrolled.projects)-Student.projects = none
-- div,1
-- equiv pair end
-- equiv pair start,6
all s:Student, p:Project | p in s.enrolled.projects
-- div,2
all p:Project| all s:Student| p in s.enrolled.projects
-- div,1
all s : Student | all p : Project | some c : Course | p in c.projects and c in s.enrolled
-- div,2
all s : Student | (all p : Project | (some c : Course | c in s.enrolled and p in c.projects ))
-- div,1
-- equiv pair end
-- equiv pair start,4
all s : Student | s.enrolled.projects in s.projects
-- div,1
all st:Student, c:Course| c in st.enrolled implies c.projects in st.projects
-- div,2
all st : Student, c : Course, pr:c.projects | c in st.enrolled implies pr in st.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | no s.enrolled - s.(Person<:projects)
-- div,1
-- equiv pair end
-- equiv pair start,36
(Student <: projects).(~projects :> Course) in enrolled
-- div,1
all s : Student | (Course <: projects).(s.(Person <: projects)) in s.enrolled
-- div,1
all s: Student | (projects.(s.projects) & Course) in s.enrolled
}

fun getProjectCourse[p : Project]: one Course {
  	projects.p & Course
-- div,1
all s:Student| Course:>projects.(s.projects) in s.enrolled
-- div,1
all s : Student | Course <: projects.(s.projects) in s.enrolled
-- div,6
all x : Student, y : x.projects | Course <: projects.y in x.enrolled
-- div,1
all s : Student | all p :  s.projects | (Course <: projects.p) in s.enrolled
-- div,1
all s : Student, proj : s.projects, c : Course | proj in c.projects => c in s.enrolled
-- div,1
all x : Student | all y : Project | y in x.projects => Course <: projects.y in x.enrolled
-- div,1
all s : Student, p : Project, c : Course | p in s.projects && p in c.projects implies c in s.enrolled
-- div,5
all s : Student, p : Project, c : Course | (p in c.projects and p in s.projects) implies (c in s.enrolled)
-- div,1
all s: Student, p: Project, c: Course | s in (Person<:projects).p and c in (Course<:projects).p  implies s in enrolled.c
-- div,5
all x:Student, c:Course, p:Project| x->p in projects and c->p in projects implies x->c in enrolled
-- div,2
all s: Student | getProjectCourse[s.projects] in s.enrolled
}

fun getProjectCourse[p : Project]: one Course {
  	projects.p & Course
-- div,1
all x:Student | all y:Project | all z:Course| (y in x.projects and y in z.projects)implies z in x.enrolled
-- div,1
all x:Course | all y : Student | all z : Project | (z in y.projects and z in x.projects) implies x in y.enrolled
-- div,1
all p:Person, c:Course, x:Project|p->x in projects and c->x in projects and p in Student implies p->c in enrolled
-- div,1
all s: Student | all c: Course | all p: Project | p in s.projects && p in c.projects => c in s.enrolled
-- div,1
all s : Student | all c : Course | all proj : Project | (proj in s.projects and proj in c.projects) implies c in s.enrolled
-- div,1
all s: Person | all c: Course | all p: Project | p in s.projects && s in Student && p in c.projects => c in s.enrolled
-- div,3
-- equiv pair end
-- equiv pair start,1
all s : Student | all enr : s.enrolled | s.projects in enr
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | some c : Course | p.projects in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | some c : Course | s.projects in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Student | some proj:Project | proj in p.enrolled.projects
-- div,1
-- equiv pair end
-- equiv pair start,11
all s : Student | all c : s.enrolled | s.projects in c.projects
-- div,1
all s:Student, c:s.enrolled, p:s.projects | p in c.projects
-- div,1
all s : Student, p : Project | p in s.projects implies s.enrolled in projects.p
-- div,2
all st : Student, c : Course | (c in st.enrolled) implies (st.projects in c.projects)
-- div,1
all s : Student | all c : s.enrolled| all p : s.projects| p in c.projects
-- div,1
all e:Student, p:Project | p in e.projects => e.enrolled in (projects.p & Course)
-- div,1
all st : Student, c : Course, pr:st.projects | c in st.enrolled implies pr in c.projects
-- div,3
all s : Student, c : Course, p : Project | c in s.enrolled and p in s.projects implies p in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course | c.projects in s.projects => c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person-Professor | some proj:Project | proj in p.enrolled.projects
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Student-Professor | all c : s.enrolled | s.projects in c.projects
-- div,1
all s : Student-Professor | all c : s.enrolled | all p : s.projects | p in c.projects
-- div,2
-- equiv pair end
-- equiv pair start,2
all s : Student-Professor | some c : s.enrolled | s.projects in c.projects
-- div,1
all s : Student-Professor | some c : s.enrolled | all p : s.projects | p in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, s : Student | c in s.enrolled and c.projects in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: Student | some c: Course | some x.projects implies c->x in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all st:Student, c:Course| c in st.enrolled implies c.projects = st.projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all s:Person-Professor, c:Course | c.projects in s.projects => c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,4
all s : Student, c : Course | s.projects in c.projects implies c in s.enrolled
-- div,2
all s: Student, c: Course | s.projects in c.projects => s in c.~enrolled
-- div,1
all p:Student | all c:Course | p.projects in c.projects implies c in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Person-Professor, c:Course | c.projects in s.projects && c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, p : Project | (p in s.projects) and (s.enrolled in projects.p)
-- div,1
-- equiv pair end
-- equiv pair start,6
all s : Student | some c : Course | c in s.enrolled and s.projects in c.projects
-- div,1
all st:Student | some c : Course | c in st.enrolled and st.projects in c.projects
-- div,3
all s : Student | some c : Course | c in s.enrolled and (all p : s.projects | p in c.projects)
-- div,2
-- equiv pair end
-- equiv pair start,1
all s:Student | all p:Project | p in s.projects implies s.enrolled.projects in p
-- div,1
-- equiv pair end
-- equiv pair start,1
all st : Student, c : Course | (c in st.enrolled) and (st.projects in c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,6
all s : Person, p : Project, c : Course | p in s.projects implies s in c.enrolled
-- div,2
all x : Person | all y : Project | all z : Course | y in x.projects implies y in z.projects and y in x.enrolled
-- div,4
-- equiv pair end
-- equiv pair start,1
all st:Student | some c:Course| c in st.enrolled implies c.projects in st.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all pe:Student | all c:Course | (pe.projects=c.projects)  implies c in pe.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,5
all s : Person, p : Project | (p in s.projects) implies (s.enrolled in projects.p)
-- div,1
all s : Person | all p : Project | p in s.projects implies s.enrolled in projects.p
-- div,2
all p : Project | all s : Person <: projects.p | s.enrolled in Course <: projects.p
-- div,2
-- equiv pair end
-- equiv pair start,4
all s : Student, p : Project, c : Course | p in s.projects implies s in c.enrolled
-- div,2
all s : Student, p : Project, c : Course | p in s.projects implies s in projects.p.enrolled
-- div,1
all p : Project | all s : Student | all c : Course | p in s.projects => p in c.projects and p in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,5
all s : Student, p : Project, c : Course | p in s.projects implies c in s.enrolled
-- div,1
all p : Student, c : Course, ps : Project | ps in p.projects implies c in p.enrolled
-- div,1
all s:Student | all p: Project | all c: Course | s ->p in projects => s in enrolled.c
-- div,1
all s:Student | all p: Project | all c: Course | s ->p in projects => s->c in enrolled
-- div,1
all s:Student | all p:Project | s->p in projects implies (all c:Course | s->c in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person | some proj:Project | proj in p.enrolled.projects implies p in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student | one p:Project | p in s.projects implies p in (s.enrolled).projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | some c : Course | s.projects in c.projects implies c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all s: Student | some p:Project | p in s.projects implies p in (s.enrolled).projects
-- div,1
all s : Student | some p : Project | p in s.projects implies (some c : s.enrolled | p in c.projects)
-- div,1
all s1:Student | some pr:Project | s1->pr in projects implies ( some c:Course | s1->c in enrolled and c->pr in projects )
-- div,1
-- equiv pair end
-- equiv pair start,1
all st:Student | some c : Course | c in st.enrolled implies st.projects in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student-Professor | one c : s.enrolled | all p : s.projects | p in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,6
all s : Student, p : s.projects | one c : Course | c in s.enrolled and p in c.projects
-- div,1
all s : Student | all p : Project | p in s.projects implies (one c : Course | c in s.enrolled and p in c.projects)
-- div,1
all x :Student | all y : Project |
  			y in x.projects implies (one z : Course | y in z.projects and z in x.enrolled)
-- div,1
all u:Person, p:Project| u->p in projects and u in Student implies one c:Course|u->c in enrolled and c->p in projects
-- div,3
-- equiv pair end
-- equiv pair start,1
all p:Person, proj:Project, c:Course | proj in p.enrolled.projects implies p in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Project, s : Person | some c : Course | p in s.projects implies p in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student, p : Project | some c : Course | p in s.projects implies c in s.enrolled
-- div,1
all p : Project, s : Student | some c : Course | p in s.projects implies c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Project, s : Student | some c : Course | p in s.projects implies p in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | all p : Project | all c : Course | p in c.projects and c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,19
all st : Student, p: st.projects | all c : Course | (c in st.enrolled) and (p in c.projects)
-- div,1
all s : Student | (all p : s.projects | (all c : Course | c in s.enrolled and p in c.projects ))
-- div,1
all s : Student, p : Project, c : Course | p in s.projects implies (c in s.enrolled && p in c.projects)
-- div,1
all s : Student, p : Project, c : Course | s in projects.p implies (c in projects.p and s in enrolled.c)
-- div,1
all s:Student, c:Course, p:Project | p in s.projects implies p in c.projects and c in s.enrolled
-- div,2
all s:Student, p:Project, c:Course | p in s.projects implies (p in c.projects and c in s.enrolled)
-- div,3
all x: Student, y:Project, z:Course| x-> y in projects implies z-> y in projects and x -> z in enrolled
-- div,1
all p : Project | all s : Student | all c : Course | p in s.projects => p in c.projects and c in s.enrolled
-- div,1
all s:Student | all c:Course | all p:Project | p in s.projects implies p in c.projects and c in s.enrolled
-- div,1
all x:Person, y:Project, z:Course| x-> y in projects and x in Student  implies z-> y in projects and x -> z in enrolled
-- div,1
all y:Person, p:Project, c:Course | y->p in projects and y in Student implies y->c in enrolled and c->p in projects
-- div,1
all s:Student | all p: Project | all c: Course | s->p in projects => s in enrolled.c and c->p in projects
-- div,2
all u:Person, p:Project, c:Course| u->p in projects and u in Student implies u->c in enrolled and c->p in projects
-- div,1
all s:Student | all p:Project | s->p in projects implies (all c:Course | s->c in enrolled and c->p in projects)
-- div,1
all s1:Student | all pr:Project | s1->pr in projects implies ( all c:Course | s1->c in enrolled and c->pr in projects )
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : Student, p: u.projects | some c : Course | c in u.enrolled and u.projects in c.projects
-- div,1
all s : Student, p : s.projects | some c : Course | c in s.enrolled and (all p : s.projects | p in c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | all p : s.projects | some c : Course | c in s.enrolled implies p in c.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,4
all s:Student, p:Project | some c:Course | p in s.projects => c in s.enrolled && p in c.projects
-- div,1
all p : Project | all s : Student | some c : Course | p in s.projects => p in c.projects and c in s.enrolled
-- div,1
all s:Student | all p: Project | some c: Course | s->p in projects => s in enrolled.c and c->p in projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all s:Person-Professor | all c:Course | all p:c.projects | p in s.projects implies c in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Person, c : Course, ps : Project | ps in p.projects implies p in Student && c in p.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,4
all x:Person, y:Course, z:Project| x->z in projects implies( y-> z in projects and x-> y in enrolled )
-- div,1
all x:Person, y:Course, z:Project| x->z in projects implies x-> y in enrolled and y-> z in projects
-- div,2
all x : Person | all y : Project | all z : Course | y in x.projects implies y in z.projects and z in x.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,5
all s : Student, p : Project, c : Course | (p in c.projects and p in s.projects) implies s in c.enrolled
-- div,5
-- equiv pair end
-- equiv pair start,3
all s : Student, p : Project | some c : Course | p in s.projects and c in s.enrolled and p in c.projects
-- div,2
all s : Student | all p : Project | some c : Course | p in s.projects and c in s.enrolled and p in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, p : Project | one c : Course | c in s.enrolled and p in s.projects implies p in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Project | all s : Student | one c : Course | p in s.projects => p in c.projects and p in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student, p : Project | some c : Course | p in s.projects && p in c.projects implies c in s.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Project | all s : Student | some c : Course | p in s.projects => p in c.projects and p in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student, p : Project | some c : Course | c in s.enrolled and p in s.projects implies p in c.projects
-- div,1
all s : Student, p : Project | some c : Course | p in s.projects and c in s.enrolled implies p in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person, c : Course, ps : Project | ps in p.projects implies p in Student && ps in p.enrolled.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Person | all c : Course | all proj: Project | s = Student and c in projects.proj implies s in enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all y:Person, p:Project, c:Course | y->p in projects and y in Student and y->c in enrolled and c->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all x : Person | all y : Project | all z : Course | y in x.projects and y in z.projects implies z in x.enrolled
-- div,1
all per : Person | all c : Course | all pro : Project | (pro in per.projects and pro in c.projects) implies c in per.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Person | all c : Course | all proj: Project | s in Student and c in projects.proj implies s in enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, p : Project | some c : Course | (p in c.projects and p in s.projects) implies (s in c.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Person | all p : Course | all proj: Project | s in Student and s in enrolled.p implies p in projects.proj
-- div,1
-- equiv pair end
-- equiv pair start,1
all proj:Project, p:Person | (p in projects.proj implies p in Student) and (some p2:Person | p2 in projects.proj)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Person | one y : Course | (x in (Course<:projects).x and y in (Person<:projects).x) implies x in enrolled.y
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Person-Professor | all c:Course | all p:Project | p in s.projects implies p in c.projects and c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Person| all p : Project | all c : Course | (p in s.projects) and (p in c.projects) implies (s.enrolled in c)
-- div,1
-- equiv pair end
-- equiv pair start,17
all p : Person, c : Course, ps : Project | ps in p.projects implies p in Student && c in p.enrolled && ps in c.projects
-- div,1
all x:Person, y:Course, z:Project| x->z in projects implies( y-> z in projects and x-> y in enrolled and x in Student)
-- div,6
all x:Person, y:Project, z:Course| x-> y in projects implies z-> y in projects and x -> z in enrolled and x in Student
-- div,2
all y:Person, p:Project, c:Course | y->p in projects implies y in Student and y->c in enrolled and c->p in projects
-- div,8
-- equiv pair end
-- equiv pair start,1
all x :Student | all y : Project | one z : Course | 
  			y in x.projects implies (y in z.projects and z in x.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s1:Student | some pr:Project | s1->pr in projects implies ( all c:Course | s1->c in enrolled and c->pr in projects )
-- div,1
-- equiv pair end
-- equiv pair start,1
all per : Person | some c : Course | one pro : Project | (pro in per.projects and pro in c.projects) implies c in per.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all per : Person | some c : Course | all pro : Project | (pro in per.projects and pro in c.projects) implies c in per.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Person| all p : Project | all c : Course | (p in s.projects) and (p in c.projects) and (s in Student) implies (s.enrolled in c)
-- div,1
-- equiv pair end
