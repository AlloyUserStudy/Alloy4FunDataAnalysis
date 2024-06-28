parts.Product = Component
-- div,1
(all c : Component | some c.parts) and (no Material.parts)
-- div,3
(Component <: parts) in Component set -> some Product
no (Material <: parts)
-- div,3
all c:Component| some c.parts
all m:Material| no m.parts
-- div,41
all x: Component | some x.parts
all y: Material | no y.parts
-- div,2
all x:Component | some x.parts
all x:Material | no x.parts
-- div,6
all c:Component | some c.parts
all c:Material |no c.parts
-- div,8
all m:Material | no m.parts
all c:Component | some c.parts
-- div,5
all c: Component | #c.parts>0
all m: Material | no m.parts
-- div,2
all c: Component | #c.parts>0
all c :Material | no c.parts
-- div,2
(all c: Component| some c.parts) && (all m: Material| #m.parts=0)
-- div,1
all m : Material | #m.parts=0
all c : Component | #c.parts>0
-- div,1
all x:Component | #(x.parts)>0
all x:Material | #(x.parts)=0
-- div,2
all c: Component | #c.parts>0
all m: Material | #m.parts = 0
-- div,8
all c: Component | c.parts != none
all m: Material | m.parts = none
-- div,2
all p: Product - Material | some p.parts
all m: Material | no m.parts
-- div,1
all x: Product | (x in Component && some x.parts) || (x in Material && no x.parts)
-- div,3
all p : Product | (p in Component && some p.parts) || (p in Material && no p.parts)
-- div,1
all c : Component - Material | some c.parts
all m : Material | no m.parts
-- div,1
all p : Product | (p in Component implies some p.parts) and (p in Material implies no p.parts)
-- div,3
all c : Component | (some c.parts)
all m : Material | no m.parts

no Material.parts
-- div,1
all p: Product |
(p in Component) => (#p.parts > 0)
all p: Material | #p.parts = 0
-- div,1
all c: Component | some p: Product| p in c.parts
all c: Material | no c.parts
-- div,2
all c:Component | some p:Product | p in c.parts
all m:Material | no m.parts
-- div,1
all c : Component | some c.parts
all m : Material | no m.parts

parts.Product = Component
-- div,1
all p : Product | p in Material implies no p.parts
all p : Product | p in Component implies some p.parts
-- div,2
all x: Product |  x in Component implies some x.parts
all x: Product |  x in Material implies no x.parts
-- div,2
all p:Product | p in Component implies some  p.parts
all p:Product | p in Material implies no p.parts
-- div,3
all p : Product | p in Material <=> no p.parts
all p : Product | p in Component <=> some p.parts
-- div,1
(all c : Component | some p : Product | c in parts.p) and (all m : Material | no p : Product | m in parts.p)
-- div,2
(all c:Component | some p:Product | p in c.parts)
and
(all m:Material | no p:Product | p in m.parts)
-- div,5
(all c : Component | some p : Product | c in parts.p) and (all m : Material | no p : Product | m->p in parts)
-- div,1
(all c:Component | some p:Product | p in c.parts)
and
(all m:Material | all p:Product | p not in m.parts)
-- div,2
(all c:Component | some p:Product | c -> p in parts)
and
(all m:Material | no p:Product | m -> p in parts)
-- div,5
all c: Component | some p: Product| p in c.parts
all c: Material | all p: Product| p not in c.parts
-- div,1
