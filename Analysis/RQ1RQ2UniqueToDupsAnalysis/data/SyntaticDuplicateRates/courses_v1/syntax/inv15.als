all s: Student.projects Course.projects
-- div,2
all disj p1,p2 : Project, disj s1,s2: Student |
-- div,1
all disj p1, p2 : (Person<:projects).Projects | p1 = p2
-- div,1
all disj g1,g2 : c.grades, c : Course | one (c.projects)
-- div,1
all disj s, s1 : Student | all p : s.projects & s1.projects
-- div,1
all disj s1,s2:Student, c:Course, p:Project | s1.(Course.grade)
-- div,1
all c : Course, p : c.projects | projects.p.(c.grades) in prev+iden+next
}
-- div,1
all c : Course, p : c.projects, | projects.p.(c.grades) in prev+iden+next
}
-- div,1
all disj g1,g2 : c.grades, c : Course | one (s1.projects & s2.projects & c.projects)
-- div,1
all p : Project, g,h : (projects.p).grades[projects.p] | g in (h + prev[h] + succ[h])
-- div,1
all c : Course, p : c.projects, g1, g2 : projects.p.(c.grade) | g1->g2 in prev+iden+next
-- div,1
all proj : Project, disj p1, p2 : (Person<:projects).proj, c : Course<:projects).proj | p1 = p2
-- div,2
all disj s, s1 : Student | p : s.projects & s1.projects | one s.((Course <: projects).p).grades
-- div,1
all p : Project, all g,h : (projects.p).grades[projects.p] | g = h or g = prev[h] or prev[g] = h
-- div,1
all p : Project, all g,h : (projects.p).(projects.p.grades) | g = h or g = prev[h] or prev[g] = h
-- div,1
all p : Project, all g,h : (projects.p).(projects.p).grades | g = h or g = prev[h] or prev[g] = h
-- div,1
all c : Course, p : c.projects, | projects.p.(c.grades)->projects.p.(c.grades) in prev+iden+next
}
-- div,1
all c:Course, p:c.projects, s1, s2: Person, g1,g2:Grade | 
  		s1 != s2 and c->s1->g1 and c->s2->g2
-- div,1
all c : Course, p : c.projects, | (projects.p.(c.grades))->(projects.p.(c.grades)) in prev+iden+next
}
-- div,1
all c : Course | all s1,s2 : Student | c in (s1&s2).enrolled and c.projects in (s1&s2).projects implies
-- div,1
all p : Project , g,g1 : (Person :> projects.p).(projects.p).grades) | g = g1 or g1=prev[g] or g=prev[g1]
-- div,1
all p : Project, all g,h : (projects.p).grades[Student <: projects.p] | g = h or g = prev[h] or prev[g] = h
-- div,1
all p : Project  g,g1 : (Person :> projects.p).((Course :> projects.p).grades) | g = g1 or g1=prev[g] or g=prev[g1]
-- div,1
all p : Project  g,g1 : (Person :> projects.p).((Course :> projects.p).grade) |  g = g1 or g1=prev[g] or g=prev[g1]
-- div,1
all p : Project  g,g1 : (Person :> projects.p).((Course :> projects.p).grades) |  g = g1 or g1=prev[g] or g=prev[g1]
-- div,1
all c:Course, p:c.projects, s1, s2: (Person<:projects).Project, g1,g2:Grade | 
  		s1 != s2 and c->s1->g1 and c->s2->g2
-- div,1
all disj s : Student | all m1 : s2.(Course.grades), m2 : (s.projects.~projects - s).(Course.grades) | m1 in m2 + prev[m2] + next[m2]
-- div,1
all s,s1 : Student , p : (s.projects & s1.projects) , g :s.((Course :>projects.p).grades) , s1: ((Course :>projects.p).grades) | g = g1
-- div,1
all disj s1,s2: Student | some s1.projects&s2.projects implies ~(c.grades).s2 in ~(c.grades).s1.next+~(c.grades).s1.prev+~(c.grades).s1)
-- div,3
all disj s1,s2: Student | some s1.projects&s2.projects implies (~(c.grades).s2 in ~(c.grades).s1.next+~(c.grades).s1.prev+~(c.grades).s1)
-- div,3
all c: Course, g1, g2: Grade, p: Project, disj s1, s2:Student | s1->p+s2->p in projects && c->s1->g1+c->s2->g2 in grades => not gt[sub[g1,g2], 1]
-- div,1
all disj s1, s2 Student | some s1.projects & s2.projects implies all m1 : s1.(Course.grades), m2 : s2.(Course.grades) | m1 in m2 + m2.prev + m2.next
-- div,1
all disj s1, s2 Student | some s1.projects & s2.projects implies all m1 : s1.(Course.grades), m2 : s2.(Course.grades) | m1 in m2 + prev[m2] + next[m2]
-- div,2
all disj p: Project, disj s1,s2: Student, c : Course | p in s1.projects and p in s2.projects and p in c.projects => c.grades[s1]-c.grades[s2] =< 1
}
}
-- div,1
all c:Course , p:c.projects, s1, s2: (Person<:projects).Project, g1,g2:Grade | 
  		s1 != s2 and c->s1->g1 and c->s2->g2 => ((prev.g1 = g2) or (g1=g2))
-- div,1
all c:Course, p:c.projects, s1, s2: Person, g1,g2:Grade | 
  		s1 != s2 and c->s1->g1 in grades and c->s2->g2 in grades
-- div,2
all c: Course, pj: c.projects, disj s1, s2: p.~(Student<:projects) |
  		(s1.(c.grades)).prev =  (s2.(c.grades)) or
  		(s2.(c.grades)).prev =  (s1.(c.grades))
-- div,1
all p: Project, disj s1,s2: Student | p in c.projects&s1.projects&s2.projects implies (~(c.grades).s2 in ~(c.grades).s1.next+~(c.grades).s1.prev+~(c.grades).s1)
-- div,1
all p: Project, disj s1,s2: Student | p in s1.projects&s2.projects implies s2.(Course.grades) in s1.(Course.grades).next + s1.(Course.grades).prev + s1.(Course.grades))
-- div,1
all p: Project, disj s1,s2: Student | p in s1.projects&s2.projects implies (~(c.grades).s2 in ~(Course.grades).s1.next + ~(Course.grades).s1.prev + ~(Course.grades).s1)
-- div,1
all s,s1 : Student , p : (s.projects & s1.projects) , g :s.((Course :>projects.p).grades) , g1: s1.((Course :>projects.p).grades) | g = g1 or g1=prev[g2] or g2=prev[g1]
-- div,1
all c:Course, p:c.projects, s1, s2: (Person<:projects).Project, g1,g2:Grade | 
  		s1 != s2 and c->s1->g1 in grades and c->s2->g2 in grades
-- div,1
all disj g1,g2 : c.grades, c : Course | one (s1.projects & s2.projects & c.projects) implies  
  	s1.(c.grades) in s2.(c.grades) + prev[s2.(c.grades)] + next[s2.(c.grades)]
-- div,1
all c: Courses, p: Project, disj s1,s2: Student | p in c.projects&s1.projects&s2.projects implies (~(c.grades).s2 in ~(c.grades).s1.next+~(c.grades).s1.prev+~(c.grades).s1)
-- div,1
all disj s1, s2 : Student | some s1.projects & s2.projects implies all p in projects & s2.projects | projects.p.s1 in projects.p.s2 + next[projects.p.s2] + prev[projects.p.s2]
-- div,2
all disj s1, s2 : Student, c : Course | some ((s1.projects & s2.projects) & c.projects) implies (all g1 : s1.(c.grades), g2 : s2.(c.grades) |
  	g1 in (prev[g2] + g1=next[g2] + g2)
-- div,1
all p: Project, disj s1,s2: Student | p in (s1.enrolled+s2.enrolled).projects&s1.projects&s2.projects implies (~(c.grades).s2 in ~(c.grades).s1.next+~(c.grades).s1.prev+~(c.grades).s1)
-- div,1
all c:Course, p:c.projects, s1, s2: Person<:projects).Project, g1,g2:Grade | 
  		s1 != s2 and c->s1->g1 in grades and c->s2->g2 in grades => ((g1.prev = g2) or (g1=g2.prev) or (g1=g2))
-- div,3
all c: Project, g1, g2: Grade, p: Project, disj s1, s2:Student | s1->p+s2->p in projects && c->s1->g1+c->s2->g2 in grades => g1=g2
-- div,1
all s1,s2 : Student | all g1,g2 : Grade | all p : Project | all c : Course | s1!=s2 and p in s1.projects&s2.projects and (s1->g1 + s2->g2) in c.grades implies g1=prev[g2] or g2=prev[g1] or g1=G2
-- div,1
all disj p: Project, disj s1,s2: Student, c : Course | p in s1.projects and p in s2.projects and p in c.projects => c.grades[s1]-c.grades[s2] < 1 or c.grades[s1]-c.grades[s2] = 1 or c.grades[s1] = c.grades[s2]
}
-- div,1
all s1,s2:Student, p:Project, c:Course, g1,g2:Grade | (s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects) implies ((g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1]))
-- div,1
all c:Course, p:c.projects, s1, s2: (Person<:projects).Project, g1,g2:Grade | 
  		s1 != s2 and c->s1->g1 in grades and c->s2->g2 in grades => ((prev.g1 = g2) or (g1=g2))
-- div,1
all s1,s2 : Student | all c1 : Course | all p1:Project|
	(c1->project in projects and s1->p1 in projects and s2->p1 in projects)
	implies
	(one g1,g2 : Grade | c1->s1->g1 in grades and c1->s2->g2 in grades and |g1-g2|<1)
-- div,1
all s1, s2: Student, c: Course, p: Project | s1 != s2 and s1&s2 in enrolled.c and s1&s2 in projects.p implies (all g1, g2: Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1) or g1=g2))
-- div,1
all c: Course, s1: Student, s2: Student - s1 | (s1.enrolled in c) and (s2.enrolled in c) and lone (s1.projects & s2.projects) implies (grades.s1 in (prev[grades.s2] + next[grades.s2] + grades.s2))
-- div,3
all c:Course,p:Project,disj s1,s2:Person | c->p in projects and s1->p in projects and s2->p in projects and (some g:Grade | c->s2->g in grades) implies all g:Grade | c->s1->g in grades implies c->s2->g in .grades.(iden+next+prev)
-- div,1
all p : Project | all s1,s2 : Student | all c : Course |
  	(s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects) implies
  	(all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (gte[1,g1-g2]))
-- div,1
all s1,s2 : Students | all p : Project| all c : Course | p in s1.projects&s2,projects and p in c.projects and s1!=s2 implies (all g1,g2:Grades | g1 in s1.c.grades and g2 in s2.c.grades implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
-- div,1
all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies (s1 in c.grades.Grade and s2 in c.grades.Grade implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades=prev[s1.(c.grades])
-- div,1
all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies (s1 in c.grades.Grade and s2 in c.grades.Grade implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades=prev[s1.(c.grades]))
-- div,1
all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies (s1 in c.grades.Grade and s2 in c.grades.Grade implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades=prev[s1.(c.grades])))
-- div,4
all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies (s1 in c.grades.Grade and s2 in c.grades.Grade implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades)=prev[s1.(c.grades]))
-- div,1
all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies (s1 in c.grades.Grade and s2 in c.grades.Grade implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades=prev[s1.(c.grades]))))
-- div,1
all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies (s1 in c.grades.Grade and s2 in c.grades.Grade implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades)=prev[s1.(c.grades])))
-- div,1
all s1,s2 : Students | all p : Project| all c : Course | p in s1.projects&s2,projects and p in c.projects and 
  s1!=s2 implies (all g1,g2:Grades | g1 in s1.c.grades and g2 in s2.c.grades implies (g1=prev[g2] or g2=prev[g1] or
   g1=g2))
-- div,1
all disj s1,s2 : Student, p : Course | s1 in p and s2 in p implies next[s1.((projects.p).grades)] = s2.((projects.p).grades or prev[s1.((projects.p).grades)] = s2.((projects.p).grades or s1.((projects.p).grades) = s2.((projects.p).grades
-- div,1
all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies (s1 in c.grades.Grade and s2 in c.grades.Grade implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades)=prev[s1.(c.grades]))))
-- div,1
all s1,s2 : Students | all p : Project| all c : Course | p in s1.projects&s2,projects and p in c.projects and 
  s1!=s2 implies (all g1,g2 : Grade | g1 in s1.c.grades and g2 in s2.c.grades implies (g1=prev[g2] or g2=prev[g1] or
   g1=g2))
-- div,1
all s1, s2 : Student | all p : Project | all c : Course | p in s1.projects and p in s2.projects and p in c.projects implies (all g1, g2 Grades | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies g1 = prev[g2] or g2 = prev[g1] or g1 = g2)
-- div,1
all s1,s2 : Students | all p : Project| all c : Course | p in s1.projects&s2.projects and p in c.projects and
  s1!=s2 implies (all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1]or
  g1=g2))
-- div,1
all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies ((s1 in c.grades.Grade and s2 in c.grades.Grade) implies (s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades)=prev[s1.(c.grades)])))
-- div,1
all s1,s2 : Students | all p : Project| all c : Course | p in s1.projects&s2,projects and p in c.projects and 
  s1!=s2 implies (all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1]or
  g1=g2))
-- div,1
all p : Project | all s1,s2 : Student | all c : Course |
  	(p in s1.projects and p in s2.projects and p in c.projects) implies
  	(all g1,g2 : Grades | g1 in s1.c.grades and g2 in s2.c.grades
  	implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
-- div,1
all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects and s1 in c.grades.Grade and s2 in c.grades.Grade) implies ( implies (s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades)=prev[s1.(c.grades)]))
-- div,1
all s1,s2 : Students | all p : Project| all c : Course | p in s1.projects&s2,projects and p in c.projects and
  
  s1!=s2 implies (all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1]or
  g1=g2))
-- div,1
all disj s1, s2 : Student | all p : Project, c : Course |
  		s1 + s2 in projects.p
  		&& s1 + s2 in enrolled.c	
  		&& p in c.projects
  		=> c.grades.p1 = c.grade.p2
  			|| c.grades.p1.prev = c.grade.p2
  			|| c.grades.p1 = c.grade.p2.prev
-- div,1
all disj s1, s2 : Student | all p : Project, c : Course |
  		s1 + s2 in projects.p
  		&& s1 + s2 in enrolled.c	
  		&& p in c.projects
  		=> c.grades.s1 = c.grade.s2
  			|| c.grades.s1.prev = c.grade.s2
  			|| c.grades.s1 = c.grade.s2.prev
-- div,1
all s1, s2: Student | all c : Course | s1!=s2 and c in s1.enrolled+s2.enrolled and working2gether[s1,s2,c] implies 
}


pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects |  c in s1.enrolled+s2.enrolled and p in s1.projects+s2.projects
-- div,1
all s1, s2: Student | all c : Course | all g1,g2 : Grades | working2gether[s1,s2,c] and s1->g1 and s2->g2
}


pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and c in s1.enrolled+s2.enrolled and p in s1.projects+s2.projects
-- div,1
all s1,s2:Student, p:Project, c:Course, g1,g2:Grades | (s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects and s1 in c.grades.Grade and s2 in c.grades.Grade) implies ((s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades)=prev[s1.(c.grades)]))
-- div,1
all disj s1,s2 : Student, p : Project | s1+s2 in projects.p and s2.((projects.p).grades)+s1.((projects.p).grades) in 		Student.((projects.p).grades) 	
	implies 
  	next[s1.((projects.p).grades)] = s2.((projects.p).grades) or 
  	prev[s1.((projects.p).grades)] = s2.((projects.p).grades) or
-- div,1
all disj s, s1 : Student, p : s.projects & s1.projects | s.((projects.p <: Course).grades) = next[s1.((projects.p <: Course).grades)] or s.((projects.p <: Course).grades) = previous[s1.((projects.p <: Course).grades)] or s.((projects.p <: Course).grades) = s1.((projects.p <: Course).grades)
-- div,1
all s1,s2 : Student | all p : Project | p in s1.projects and p in s2.projects implies (s1.projects.grades+1 == s2.projects.grades or s1.projects.grades-1 == s2.projects.grades or s1.projects.grades == s2.projects.grades or s1.projects.grades == s2.projects.grades+1 or s1.projects.grades == s2.projects.grades-1)
-- div,1
all s1,s2 : Student | one p : Project | p in s1.projects and p in s2.projects implies (s1.projects.grades+1 == s2.projects.grades or s1.projects.grades-1 == s2.projects.grades or s1.projects.grades == s2.projects.grades or s1.projects.grades == s2.projects.grades+1 or s1.projects.grades == s2.projects.grades-1)
-- div,1
all s1, s2: Student | all c : Course | all g1,g2 : Grade | working2gether[s1,s2,c] and (s1->g1)+(s2->g2) in c.grades implies consecGrades[g1,g2]
}


pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and c in s1.enrolled&s2.enrolled and p in s1.projects&s2.projects
}

pred consecGrades[g1,g2:Grade]{
	g1==g2 or g1 = prev[g2] or g2 = prev[g1]
-- div,1
all t : Tree, n : Name | lone (t.objects & Hash->n)
  
    all h : Hash | lone ( hash.h )
  	
  	all h : Hash - Tree.hash - Blob.hash, t : Tree | no ( h->Name & t.objects ) 
  	all c : Commit, h : Hash - Tree.hash | h not in c.tree
  	all c : Commit, h : Hash - Commit.hash | h not in c.parent
  	
  	all c : Commit | no (c.hash & c.parent)
  	all t : Tree | no (t.hash->Name & t.objects)
-- div,1
