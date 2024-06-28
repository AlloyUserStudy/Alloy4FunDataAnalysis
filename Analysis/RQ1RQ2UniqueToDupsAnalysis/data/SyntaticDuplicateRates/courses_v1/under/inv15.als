all c:Course,p:c.projects | (projects.p).(c.grades) in Grade
-- div,1
all p : Project, g,h : (projects.p).grades[Course<:projects.p] | g in (h + prev[h] + next[h])
-- div,1
all p : Project, g,h : (projects.p).grades.(Course<:projects.p) | g in (h + prev[h] + next[h])
-- div,1
all p : Project, g,h : (projects.p).grades.(Person<:projects.p) | g in (h + prev[h] + next[h])
-- div,1
all p : Project , g,g1 : (Course :>projects.p).grades.Person |  g = g1 or g1=prev[g] or g=prev[g1]
-- div,3
all c : Course, p : c . projects, disj s1, s2 : p . (Person <: projects) |
  (s1 . (c . grades)) . prev =  (s2 . (c . grades)) or
  (s2 . (c . grades)) . prev =  (s1 . (c . grades))
-- div,2
all proj : Project, disj p1, p2 : (Person<:projects).proj, c : (Course<:projects).proj | 
  		c.grades.p1 = prev[c.grades.p2] or c.grades.p1 = next[c.grades.p2]
-- div,3
all c:Course,p:c.projects | max[(projects.p).(c.grades)] in max[(projects.p).(c.grades)].(iden+next)
-- div,1
all c: Course, p: Project, s1,s2: Student | p in c.projects&s1.projects&s2.projects implies (s2 in c.grades.s1.next or s2 in c.grades.s1.prev or c.grades.s1.next=c.grades.s1.prev)
-- div,1
all c: Course, p: Project, s1,s2: Student | p in c.projects&s1.projects&s2.projects implies (c.grades.s2 in c.grades.s1.next or c.grades.s2 in c.grades.s1.prev)
-- div,5
all disj c: Course, p: Project, s1,s2: Student | p in c.projects&s1.projects&s2.projects implies (~(c.grades).s2 in c.grades.s1.next or c.grades.s2 in c.grades.s1.prev)
-- div,1
all c: Project, g1, g2: Grade, p: Project, disj s1, s2:Student | s1->p+s2->p in projects && c->s1->g1+c->s2->g2 in grades => g1=g2
-- div,1
all c: Course, s1: Student, s2: Student - s1 | ((s1.enrolled in c) and (s2.enrolled in c) and lone (s1.projects & s2.projects)) implies (grades.s1 in (prev[grades.s2] + next[grades.s2] + grades.s2))
-- div,1
all disj s1, s2 : Student, c : Course | some ((s1.projects & s2.projects) & c.projects) implies 
  	s1.(c.grades) in (prev[s2.(c.grades)] + next[s2.(c.grades)] + s1.(c.grades))
-- div,1
all disj s1, s2 : Student | all p : Project, c : Course |
  		s1 + s2 in projects.p
  		&& s1 + s2 in enrolled.c	
  		&& p in c.projects
  		=> c.grades.s1 = c.grades.s2
  			|| c.grades.s1.prev = c.grades.s2
  			|| c.grades.s1 = c.grades.s2.prev
-- div,2
all disj s1, s2 : Student | all p : Project, c : Course |
  		s1 + s2 in projects.p
  		&& s1 + s2 in enrolled.c	
  		&& p in c.projects
  		=> s1.(c.grades) = s2.(c.grades)
  			|| c.grades.s1.prev = c.grades.s2
  			|| c.grades.s1 = c.grades.s2.prev
-- div,1
all s1, s2: Student | all c : Course | some g1,g2 : Grade | working2gether[s1,s2,c] and (s1->g1)+(s2->g2) in c.grades implies consecGrades[g1,g2]
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and c in s1.enrolled&s2.enrolled and p in s1.projects+s2.projects
}

pred consecGrades[g1,g2:Grade]{
	g1!=g2 and g1 = prev[g2]
-- div,2
all s1, s2: Student | all c : Course | some g1,g2 : Grade | working2gether[s1,s2,c] and (s1->g1)+(s2->g2) in c.grades implies consecGrades[g1,g2]
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and c in s1.enrolled&s2.enrolled and p in s1.projects&s2.projects
}

pred consecGrades[g1,g2:Grade]{
	g1!=g2 and g1 = prev[g2]
-- div,1
all s1,s2 : Student | all c : Course | working2gether[s1,s2,c] implies consecGrades[s1,s2,c]
}

pred consecGrades[s1,s2:Student,c:Course]{
	all g1,g2 : Grade | s1->g1 in c.grades and g2->s2 in c.grades implies (g1=prev[g2] or g2=prev[g1] or g1=g2)
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and p in s1.projects&s2.projects&c.projects
-- div,1
