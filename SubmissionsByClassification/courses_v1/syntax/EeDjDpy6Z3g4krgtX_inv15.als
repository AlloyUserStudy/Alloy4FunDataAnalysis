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

pred inv15{
	
    all s,s1 : Student , p : (s.projects & s1.projects) , g :s.((Course :>projects.p).grades) , g1: s1.((Course :>projects.p).grades) | g = g1 or g1=prev[g2] or g2=prev[g1] 
}

