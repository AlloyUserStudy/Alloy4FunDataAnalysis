open util/ordering[Position]

sig Position {}

sig Product {}

sig Component extends Product {
    parts : set Product,
    position : one Position
}
sig Resource extends Product {}

sig Robot {
        position : one Position
}
pred inv4 {
  all disj c1, c2: Component | some (c1.parts & c2.parts) => c1.position = c2.position
}

pred inv4c { 
  all c : Component, p : c.parts & Component | lte[p.position,c.position]
}

check correct { inv4 <=> inv4c}
pred under { inv4 and !inv4c}
pred over { !inv4 and inv4c}
run over 
run under 

