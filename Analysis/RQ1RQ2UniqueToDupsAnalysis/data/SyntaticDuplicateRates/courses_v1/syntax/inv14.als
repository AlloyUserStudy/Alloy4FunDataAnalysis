Person<:Projects
-- div,1
all s1,s2:Student
-- div,2
s1.(Person<:projects)
-- div,1
all s1,s2:Student | true
-- div,1
all s1:User | s1.(Person<:projects)
-- div,1
all x, y:Student | one x.projects y.projects
-- div,2
all disj s1, s2 : Student, p1, p2 : Project |
-- div,1
all s1,s2: Student | lone s1.students&s2.students
-- div,1
all c1,c2 : Student | lone c1.project & c2.project
-- div,1
all p1,p2: Projects | lone projects.p1&projects.p2
-- div,1
all s : Student , p,p1:Process | (p+p1) in s.projects
-- div,1
all s1, s2 : Student | lone s1.projects & p2.projects
-- div,1
all s : Student , p,p1:Projects | (p+p1) in s.projects
-- div,1
all s1, s2-s1: Student | lone (s1.projects & s2.projects)
-- div,1
all s : Student | 1,p2 : Project| p1!=p2 and p1 in s.projects
-- div,1
all s1,s2:Student | s1 != s2 -> lone s1.projects & s2.projects
-- div,1
all s : Student | p1,p2 : Project| p1!=p2 and p1 in s.projects
-- div,1
all s1,s2 : Student | lone p : Project | s1,s2 -> p in projects
-- div,1
all s1,s2: Students | s1 != s2 and lone s1.projects&s2.projects
-- div,1
all s1, s2 : Person | lone s1.projects & s2.projects or s1 == s2
-- div,1
all s1: Student, some s2: Student | lone s1.projects&s2.projects
-- div,1
all s : Student, p,p1: Project | (p) in s.projects
-- div,1
all s : Student | 1,p2 : Project| p1!=p2 and (p1+p2) in s.projects
-- div,1
all s1,s2: Student | s1 != s2 implies one (s1.project + s2.project)
-- div,1
all s1,s2: Student | s1 != s2 implies one (s1.project | s2.project)
-- div,2
all s:Student | disj s2:Student | s2 in projects(s.projects) & Person
-- div,1
all s1,s2 : Student | s1!=s2 implies lone (s1.projects & s2.projetcs)
-- div,1
disj (s,s1) : Student | s!=s1 implies lone (s.projects & s1.projects)
-- div,1
all s:Student | disj s2:Student | s2 in (projects(s.projects) & Person)
-- div,1
all disj (s,s1) : Student | s!=s1 implies lone (s.projects & s1.projects)
-- div,1
all s : Student, p,p1: Project | (p+p1) in s.projects
-- div,2
all s : Student ,p,p1: Project | (p+p1) in s.projects implies not p.projects
-- div,1
all s : Student , p,p1: Project | (p+p1) in s.projects implies not p.projects
-- div,1
all s : Student, p,p1: Project | (p+p1) in s.projects implies (p!=p1)
-- div,1
all s1,s2.Student | s1.projects & s2.projects = s1.projects + s2.projects implies s1 = s2
-- div,1
all disj s1, s2: Student, all pj: Project | pj in s1.projects implies pj not in s2.projects
-- div,1
all p1:Person, j1,j2:p1.projects | p = Person<:projects.j1 & Person<:projects.j2 or j1 = j2
-- div,1
all s1,s2 : Student | lone p : Project | s1!=s2 s1 -> p in projects and s2 -> p in projects
-- div,1
all s : Student, p,p1: Project | p in s.projects implies p1 in s.projects
-- div,1
all s : Student , p,p1: Project | (p+p1) in s.projects implies (not p.projects & p1.projects)
-- div,1
all p1, p2:Project, all s1, s2: Student | p1+p2 in s1.projects && p1+p2 in s2.projects => p1=p2
-- div,1
all disj s1, s2 : Student, p1, p2 : Project | (s1 in projects.p and s2 in projects.p) implies s1 != s2
-- div,1
all s : Student , p,p1:Project | (p+p1) in s.projects implies (not (p.projects)-{s}) & (p1.projects)-{s}))
-- div,1
all s : Student, disj p,p1,p2 : s.projects | projects.p1 in projects.p2 implies no projects.p & projcets.p1
-- div,1
all s : Student , p,p1:Project | (p+p1) in s.projects implies (not (p.projects)-{s}) and (p1.projects)-{s}))
-- div,1
all s1, s2: Student | all p1, p2: Project| (p1, p2) in s1.projects and (p1, p2) in s2.projects implies p1=p2
-- div,1
all s1,s2 : Student | all p1,p2 : Projects | (p1+p2) in s1.projects and (p1+p2) in s2.projects implies p1=p2
-- div,1
all s1,s2: Student, p: Projects | p in s1.projects and p in s2.projects implies no s1.projects-p&s2.projects-p
-- div,1
all s : Student , p,p1:Project | (p1!=p and (p+p1) in s.projects) implies (not (p.projects)) & (p1.projects)))
-- div,1
all s : Student , p,p1:Project | (p1!=p and (p+p1) in s.projects) implies (not (p.projects)-{s}) & (p1.projects)-{s}))
-- div,1
all s1,s2:Student,p,p1:Project | p in s1.projects and p in s2.project and p1 in s1.projects and p1 in s2.projects implies p=p1
-- div,1
all s1,s2: Student, p1,p2: Project | p1 in s1.ptojects and p1 in s1.projects and p1 in s2.projects implies p2 not in s2.projects
-- div,1
all s1,s2: Student, p1,p2: Projects | p1 in s1.ptojects and p1 in s1.projects and p1 in s2.projects implies p2 not in s2.projects
-- div,1
all s:Student | all p:Project | s->p in enrolled implies all ss:Student | lone ps:Project | ps in s.enrolled and ps in s2.enrolled
-- div,1
all s1,s2: Student, p1,p2:Project | s1->p in projects and s2->p in projects implies no (s1->p1 in projects and s2->p2 in projects)
-- div,1
all p1, p2:Project, all s1, s2: Student | p1 in s1.projects && p1 in s2.projects && p2 in s1.projects && p2 in s2.projects => p1=p2
-- div,1
all u1: User, u2: User, u3: User, proj: Project | proj in u1.projects and proj in u2.projects and proj in u3.projects implies u3 != u2
-- div,1
all p1, p2:Project, all s1, s2: Student | (p1 in s1.projects && p1 in s2.projects) && (p2 in s1.projects && p2 in s2.projects) => p1=p2
-- div,1
all p1,p2 : Project | all s1,s2 : Students | p1 in s1.projects and p1 in s2.projects implies p2 not in s1.projects or p2 not in s2.projects
-- div,1
all p1,p2 : Projects | all s1,s2 : Students | p1 in s1.projects and p1 in s2.projects implies p2 not in s1.projects or p2 not in s2.projects
-- div,1
all s1,s2 : Student | all p1,p2 : Project |
  	(s1->p1 in project and s2->p1 in project) implies
  	(s1->p2 not in project or s2->p2 in project)
-- div,1
all s1,s2,s3 : Student | all p1,p2 : Project | p1 in s1.projects and p1 in s2.projects and p2 in s1.project and p2 in s3.projects implies s2!=s3
-- div,1
all s1, s2 : Student | all p1, p2 : Project | p1 in s1.projects and p2 in s1.projects and p1 in s2..projects and p2 in s2.projects implies p1 = p2
-- div,1
all s,s1: Student, p,p1: Project | p!=p1 ans s!=s1 and s->p in projects and s1->p in projects and s->p1 in projects implies s1->p1 not in projects
-- div,1
all s1, s2 : Student | all p1, p2 : Project | (p1 in s1.projects and p2 in s1.projects and p1 in s2..projects and p2 in s2.projects) implies p1 = p2
-- div,1
all s1, s2 : Student, p : Project | (p in s1.projects and p in s2.projects) => all p1 : (Project - p) | p1 not in s1.projects or p2 not in s2.projects
-- div,1
all s1, s2 : Student | all p1 : Project | p1!=p2 and s1!=s2 and p1 in s1.projects and p1 in s2.projects implies p2 not in s1.projects implies p2 not in s2.projects
-- div,1
all s1, s2: Student | all p1, p2: Project: s1->p1 in projects and s2->p in projects and s1!=s2 and p1!=p2 implies (s1->p2 in projects implies s2->p2 not in projects)
-- div,1
all s1, s2: Student | all p1, p2: Project | s1->p1 in projects and s2->p in projects and s1!=s2 and p1!=p2 implies (s1->p2 in projects implies s2->p2 not in projects)
-- div,1
all s1,s2 : Person , p1,p2: Project |s1 in Student and s2 in Student p1 in s1.projects and p1 in s2.projects implies (p2 not in s1.projects) or (p2 not in s2.projects)
-- div,1
all s1, s2 : Student | all p1,p2 : Project | s1 != s2 and p1 != p2 and p1 in s1.projects and p1 in s2.projects implies (  and p2 not in s1.projects implies p2 not in s2.projects)
-- div,1
all u1: Person, u2: Person, proj1: Project, proj2: Project | u1->proj1 in projects and u2->proj1 implies and u1->proj2 in projects and u2->proj2 in projects implies proj1 = proj2
-- div,1
all s1,s2:Student, c1,c2:Course, p1,p2:Project | (p1 in s1.projects and p1 in s2.projects and p1 in c1.projects) implies (p2 in s2.projects and p2 in c.projects implies p2 not in s1.projects )
-- div,1
all s1:Student,s2:Student, p1:Project | s1->p1 in projects and s2->p1 in projects implies all p2:Projects | (s1->p2 in projects implies s2->p2 not in projects) and (s2->p2 in projects implies s1->p2 not in projects)
-- div,1
all student1, student2 : Student | all project1, project2: Project |((project1 + project2 ) in student1.projects and (project1 + project2 ) in student2.projects and studen1 != student2) implies (project1 = project2)
-- div,1
