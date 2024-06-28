-- equiv pair start,10
all s : Student, c :Course | s in last implies #s.projects&c.projects>0
-- div,1
all s : Student | all c : s.enrolled | s.projects & c.projects = none implies s != first
-- div,1
all s : Student |
  		all c : s.enrolled |
  			max = s.(c.grades) implies some s.projects & c.projects
-- div,1
all c: Course, s: Student, g: Grade| s->g in c.grades && g = c.grades.max => one (c.projects & s.projects)
-- div,1
all c: Course, s: Student, g: Grade| s->g in c.grades && g = c.grades.max => some (c.projects & s.projects)
-- div,1
all x : Person | all y : Course | x in y.grades.max implies (one p : Project | p in y.projects and p in x.projects)
-- div,1
all c: Course, s: Student, g: Grade | s->g in c.grades && g = c.grades.max => some p: Project | p in c.projects && p in s.projects
-- div,2
all s: Student | all c:Course| all g: Grade|
  	c->s->g in grades and  g in c.grades.last => some p:Project | s->p in projects and c->p in projects
-- div,2
-- equiv pair end
-- equiv pair start,38
all s : Student, c :Course | s in c.grades.last implies #s.projects&c.projects>0
-- div,1
all s: Student | all c: Course | s in c.grades.last implies some s.projects & c.projects
-- div,3
all s:Student|all c:Course | s in c.grades.last implies not (no s.projects&c.projects)
-- div,1
all s:Student| all c:Course| s in c.grades.last implies #(c.projects&s.projects)>=1
-- div,1
all s:Student, c:Course | s in c.grades.last implies (some p:Project | p in c.projects and p in s.projects)
-- div,15
all s:Student, c:Course | s in c.grades.last implies (some proj:Project | proj in c.projects and proj in s.projects)
-- div,1
all s: Student | all c:Course| s in c.grades.last => (some p: Project | p in s.projects and p in c.projects)
-- div,7
all s:Student | all c:Course | s in c.grades.last implies(some p:Project | p in c.projects and p in s.projects)
-- div,8
all c : Course | all p : Student | all g : Grade | ((g = max[Grade]) and p->g in c.grades) implies ((c.projects & p.projects) != none)
-- div,1
-- equiv pair end
-- equiv pair start,5
all s : Student, c : Course | s.(c.grades) = last implies some s.projects & c.projects
-- div,2
all pM : Student | all c : Course | pM.(c.grades) = last implies some pM.projects & c.projects
-- div,2
all s : Student, c : Course | s.(c.grades) = last implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,2
all s:Student, c:Course | s in c.grades.last implies (some p:Project | p in c.projects)
-- div,1
all s:Student | all c:Course | s in c.grades.last implies(some p:Project | p in c.projects and p in c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | all c : Course | c->s->Grade in grades implies some s.projects & c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course | s in c.grades.last implies (some proj:Project | proj in s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,2
all s: Student | all c:Course| s = c.grades.last => (some p: Project | s in projects.p and c in projects.p)
-- div,1
all s: Student | all c:Course| s = c.grades.last => (some p: Project | p in s.projects and p in c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student |
  		all c : s.enrolled |
  			((some max[Grade] & s.(c.grades)) implies (some s.projects & c.projects))
-- div,1
-- equiv pair end
