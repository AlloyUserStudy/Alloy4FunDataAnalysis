-- equiv pair start,31
all c : Component | c in parts.Dangerous => c in Dangerous
-- div,1
all c: Component | (some c.parts & Dangerous) => c in Dangerous
-- div,3
all c : Component | (c.parts & Dangerous != none) => c in Dangerous
-- div,1
all x: Component, y: x.parts | y in Dangerous implies x in Dangerous
-- div,1
all c:Component, p:c.parts | p in Dangerous implies c in Dangerous
-- div,5
all c : Component, d : Dangerous | d in c.parts implies c in Dangerous
-- div,3
all c:Component  | all a:c.parts| a in Dangerous implies c in Dangerous
-- div,1
all c: Component| all d: c.parts| d in Dangerous => c in Dangerous
-- div,1
all c: Component | all x: c.parts | x in Dangerous => c in Dangerous
-- div,2
all c:Component | all p:c.parts| p in Dangerous implies c in Dangerous
-- div,3
all c : Component | (some d : Dangerous | d in c.parts) implies c in Dangerous
-- div,5
all p:Product, c:Component | p in c.parts and p in Dangerous implies c in Dangerous
-- div,1
all c:Component | all p:Product | (p in Dangerous and p in c.parts) implies c in Dangerous
-- div,4
-- equiv pair end
