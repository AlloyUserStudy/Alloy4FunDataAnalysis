some Class
-- div,2
some Teaches
-- div,15
some Teacher
-- div,1
some Teaches.Class
-- div,9
some Class->Teacher
-- div,1
some Person.Teaches
-- div,5
some Teacher->Teaches
-- div,1
Person.Teaches in Class
-- div,1
Teaches.Teacher in Class
-- div,2
Teacher.Teaches in Class
-- div,7
some (Class & Person.Teaches)
-- div,1
Teacher.Teaches & Teacher in Class
-- div,2
all t : Teacher | some Teaches
-- div,1
some c : Class | no c.Teaches
-- div,1
all t : Teacher | some Class->t
-- div,1
some c:Class | some Teaches.c
-- div,5
all t: Teacher | lone t.Groups
-- div,1
all t: Teacher | lone t.~Teaches
-- div,1
some p:Person | p.Teaches in Class
-- div,1
all t:Teacher | t.Teaches in Class
-- div,1
some p:Teacher | p.Teaches in Class
-- div,3
all c : Class,t : Teacher | some t->c
-- div,1
some c : Class, t : Teacher | some (c -> t)
-- div,3
all t : Teacher | (some c : Class| some (c -> t))
-- div,1
all t:Teacher | some x: Class | some Teaches.x
-- div,1
