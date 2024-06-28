all s : Person | one projects.(s.projects)
-- div,1
all s : Student | one s.projects in Course
-- div,1
all c: Course, p: Person | #p.projects & c = 1
-- div,1
all p:Student | #(p.projects & Course) < #Course
-- div,1
all x : Student | 1 > #(x.enrolled.projects) > 0
-- div,1
all s : Student, c : s.enrolled | lone s.c.projects
-- div,1
all s:Student | all c:Course | lone (s.projects & c)
-- div,1
all x : Student | all y : x.projects | one projects.y
-- div,1
all st:Student, c:st.enrolled | lone st.projects in c
-- div,1
all s : Student, c : s.enrolled | lone s.(c.projects)
-- div,2
all s:Student | lone s.projects in s.enrolled.projects
-- div,2
all s: Student | lone s.enrolled.projects and s.projects
-- div,1
all s:Student | # s.projects in s.enrolled.projects <= 1
-- div,1
all s:Student | lone (s.projects in s.enrolled.projects)
-- div,4
all s:Student | # (s.projects in s.enrolled.projects) < 2
-- div,1
all s : Person, c : Course | one s.projects in c.projects
-- div,1
all s : Student | lone(s.projects in s.enrolled.projects)
-- div,1
all s: Student, p: Project, c: Course | one (s.enrolled).p
-- div,1
all s:Student, p:s.projects | one p in s.enrolled.projects
-- div,1
all s:Student |( # s.projects in s.enrolled.projects) <= 1
-- div,1
all s:Student | # (s.projects in s.enrolled.projects) <= 1
-- div,1
all s: Student | s.enrolled.projects.projects in s.projects
-- div,1
all s:Student | some c:Course | one projects.c in s.projects
-- div,1
all s:Student | all p:Project | lone p in s.enrolled.projects
-- div,1
all x:Person, p:Project, c:Course| x->p in projects implies p
-- div,1
all s : Student | all c : s.enrolled | c.projects & s.projects
-- div,1
all s: Student | s.projects in (lone c: s.enrolled | c.projects)
-- div,1
all s:Student | some c:s.enrolled | one projects.c in s.projects
-- div,1
all s : Student, enroll : s.enrolled | lone enroll in s.projects
-- div,1
all s: Student | all c: s.enrolled | lone s.projects & projects.c
-- div,1
all s:Student | all pr:Project | lone (s.enrolled.projects in pr)
-- div,2
all s : Student, p : s.projects | #(p in  s.enrolled.projects) < 1
-- div,1
all s : Student, c : s.enrolled | lone (c.projects and s.projects)
-- div,3
all s: Student | all e: s.enrolled | lone e.projects and s.projects
-- div,1
all s : Student | all p : s.projects | p & s.enrolled.projects <= 1
-- div,1
all s: Student | all c: s.enrolled | lone c.projects and s.projects
-- div,1
all s: Student | all c : s.enrolled | one c.projects in  s.projects
-- div,1
all x : Student | all y : x.projects | one projects.y in x.enrolled
-- div,1
all s: Student | all c: s.enrolled | lone (s.projects & projects.c)
-- div,1
all s : Student | all c : s.enrolled | lone Course <: c.(s.projects)
-- div,1
all s:Student | some c:s.enrolled | lone (c.projects and s.projects)
-- div,1
all s : Student | all c : s.enrolled | lone c.projects in s.projects
-- div,1
all s : Student | all c : s.enrolled | lone  Course <: c.(s.projects)
-- div,1
all s : Student, enrC : s.enrolled | lone enrC.projects in s.projects
-- div,1
all s : Student | all c : s.enrolled | lone (Course <: c).(s.projects)
-- div,1
all st:Student, c:st.enrolled, pr:st.projects | lone (pr in c.projects)
-- div,1
all s : Student | all c : s.enrolled | lone (c.projects and s.projects)
-- div,1
all s : Student | all c : s.enrolled | #(s->(c.projects) & s.projects) <= 1
-- div,1
all u:Student, c: Course | c in u.enrolled => lone c.projects in u.projects
-- div,1
all s:Student | all p:Project | p in s.projects implies lone p in s.projects
-- div,3
all x : Student | all y : x.projects | one Course <: projects.y in x.enrolled
-- div,1
all u:Student, c: Course | c in u.enrolled => lone (c.projects in u.projects)
-- div,1
all x : Student | all y : x.projects | one (Course <: projects.y in x.enrolled)
-- div,1
all s: Student, p: Project| p in s.projects implies one p in s.enrolled.projects
-- div,1
all s: Student, p: Project| p in s.projects implies #(p in s.enrolled.projects) = 1
-- div,1
all x : Student | all y : Course | y in x.enrolled implies lone x.projects.y.projects
-- div,1
all s : Student | all c : Course | c in s.enrolled => #(c.projects and s.projects) in 1
-- div,1
all s:Student | all pr:Project | pr in s.projects implies lone( pr in s.enrolled.projects )
-- div,1
all s: Student | all c: s.enrolled | lone (s.projects & c.projects)
}

fun getCourseProjects[course: Course]: set Project {
	projects.course & Project
-- div,1
all s : Student | all p :  s.projects | #((Course <: projects.p) & (Course <: projects.p).projects) < 2
-- div,1
all s : Student | all p :  s.projects | #( (Course <: projects.p) & (Course <: projects.p).projects ) = 1
-- div,1
all s: Student | some y, z: Project | y in s.projects && z in s.projects && projects.y = projects.z => z=y
-- div,1
all x : Student | all c :  Course | some y, z : Project | y -> x in c.projects && z -> x in c.projects => y = z
-- div,1
all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects  and one projects.z
-- div,1
all x: Student, p: Project | x->p in projects implies (some c:Course |lone x->c in enrolled and c->p in projects)
-- div,1
all s: Student | all p: Project | all c: Course | s->c in enrolled and c->p in projects  => lone s->p in projects
-- div,1
all s: Student | all p: Project | all c: Course | s->c in enrolled and c->p in projects  => s.projects & c.projects
-- div,1
all x : Student | all c :  Course | some y, z : Project | (y -> x in c.projects) && (z -> x in c.projects) => y = z
-- div,1
all x : Student | all c :  Course | some y, z : Project | y -> x in c.projects and z -> x in c.projects implies y = z
-- div,1
all x : Person | all y : Project | all z : Course | y in z.projects implies y in #(x.projects) = 0 or #(x.projects) = 1
-- div,2
all s: Student | lone p: Project | all c: Course | s->c in enrolled and some c->p in projects  => lone s->p in projects
-- div,1
all s:Person, c:Course| one p:Project| s in Student and s->c in enrolled and c->p in projects and lone s->p in projects
-- div,1
all s: Student | all p: Project | all c: Course | s->c in enrolled and c->p in projects  => lone s.projects in c.projects
-- div,1
all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and enrolled.y and one project.z
-- div,1
all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and enrolled.y and one projects.z
-- div,1
all c: Course, p: Person |
    (p in Student implies #p.projects & c <= 1)
    && (p in Professor implies #p.projects & c = 0)
-- div,1
all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and one enrolled.y and one projects.z
-- div,1
all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and  enrolled.y and one Person <: projects.z
-- div,5
all s: Student | all c: s.enrolled | lone (s.projects & getCourseProjects[c])
}

fun getCourseProjects[course: Course]: set Project {
	projects.course & Project
-- div,1
