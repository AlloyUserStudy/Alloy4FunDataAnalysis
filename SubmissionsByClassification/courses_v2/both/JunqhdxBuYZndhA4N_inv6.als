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

pred inv6 {
all st : Student, p: st.projects | all c : Course | (c in st.enrolled) and (p in c.projects)
}

pred inv6c {
	all p : Person | p.projects in p.enrolled.projects
}

check correct { inv6 <=> inv6c}
pred under { inv6 and !inv6c}
pred over { !inv6 and inv6c}
run over 
run under 
