sig Workstation {
	workers : set Worker,
	succ : set Workstation
}
one sig begin, end in Workstation {}

sig Worker {}
sig Human, Robot extends Worker {}

abstract sig Product {
	parts : set Product	
}

sig Material extends Product {}

sig Component extends Product {
	workstation : set Workstation
}

sig Dangerous in Product {}
pred inv5 {
(all h: Human| all r: Robot| all w: Workstation| h in w.workers implies r not in w.workers)
&& (all h: Human| all r: Robot| all w: Workstation| r in w.workers implies h not in w.workers)
}

pred inv5c {
	all c : Workstation | no (c.workers & Human) or no (c.workers & Robot)
}

check correct { inv5 <=> inv5c}
pred under { inv5 and !inv5c}
pred over { !inv5 and inv5c}
run over 
run under 
