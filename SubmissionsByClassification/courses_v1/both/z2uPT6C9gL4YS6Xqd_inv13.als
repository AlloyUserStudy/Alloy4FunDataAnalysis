open util/ordering[Grade]

sig Person {
	teaches : set Course,
	enrolled : set Course,
	projects : set Project
}

sig Professor,Student in Person {}

sig Course {
	projects : set Project,
	grades : Person -> Grade
}

sig Project {}

sig Grade {}

pred inv13 {
all c : Course | some s : enrolled.c
  | (all s2 : enrolled.c - s | lt[s.(c.grades), s2.(c.grades)])
  and some (s.(this/Person <: projects) & c.(this/Course <: projects))
}

pred inv13c {
	all c : Course, p : Person | last in p.(c.grades) implies some p.projects & c.projects
}

check correct { inv13 <=> inv13c}
pred under { inv13 and !inv13c}
pred over { !inv13 and inv13c}
run over 
run under 
