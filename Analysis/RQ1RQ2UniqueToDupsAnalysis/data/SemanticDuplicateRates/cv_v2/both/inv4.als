-- equiv pair start,1
all disj w:Work | w in User.profile
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | one visible.(u.profile)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | lone visible.(u.profile)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | some visible.(u.profile)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User, p: u.profile | p in u.visible
-- div,1
-- equiv pair end
-- equiv pair start,18
all u :User,disj v1,v2 : u.visible |  no (v1.ids & v2.ids)
-- div,3
all u : User, w : u.visible | no (u.visible - w).ids & w.ids
-- div,1
all u : User, id : u.visible.ids | one (id.~ids & u.visible)
-- div,2
all u:User | all disj w1,w2 : u.visible | no (w1.ids & w2.ids)
-- div,2
always (all u : User | all disj v1, v2 : u.visible | no (v1.ids & v2.ids))
-- div,3
all u : User | all disj w1, w2 : (u.visible) | all id : w1.ids | id not in w2.ids
-- div,1
always (all u : User, vis : u.visible, v : (u.visible - vis) | no (vis.ids & v.ids))
-- div,1
all u : User | all disj w1, w2 : u.visible {
    	no id : w1.ids | id in w2.ids
    	no id : w2.ids | id in w1.ids
    }
-- div,2
all u : User | all disj w1, w2 : (u.visible) {
      	all id : w1.ids | id not in w2.ids
      	all id : w2.ids | id not in w1.ids
    }
-- div,3
-- equiv pair end
-- equiv pair start,1
all u:User | all disj w1,w2 : u.profile | w1.ids != w2.ids
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all disj w1, w2 : (u.visible) | w1.ids != w2.ids
-- div,1
-- equiv pair end
-- equiv pair start,1
all w:Work | ((w in User.profile)) implies ( w in User.visible)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w1,w2 : User.profile | visible.w1 = visible.w2 implies w1=w2
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, disj id1, id2 : u.visible.ids | no (id1.~ids & id2.~ids)
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User, w : u.visible | no (u.visible & u.profile - w).ids & w.ids
-- div,2
-- equiv pair end
-- equiv pair start,2
all u :User,disj v1,v2 : u.visible |  v1.source = v2.source implies v1.ids not in v2.ids
-- div,2
-- equiv pair end
-- equiv pair start,1
all u:User | all disj  w1, w2 :u.profile | some (w1.ids & w2.ids) implies one((w1 + w2)& u.visible)
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all u : User, disj v1, v2 : u.visible, v : u.profile | (no (v1.ids & v2.ids)) and (v1.ids + v2.ids not in v.ids))
-- div,1
-- equiv pair end
-- equiv pair start,4
always (all u : User, disj v1, v2 : u.visible, v : (u.profile - v1 - v2) | (no v1.ids & v2.ids) and (v1.ids + v2.ids in v.ids))
-- div,1
always (all u : User, disj v1, v2 : u.visible | all v : (u.profile - v1 - v2) | (no v1.ids & v2.ids) and (v1.ids + v2.ids in v.ids))
-- div,1
always (all u : User | all disj v1, v2 : u.visible | all v : (u.profile - v1 - v2) | (no v1.ids & v2.ids) and (v1.ids + v2.ids in v.ids))
-- div,1
always (all u : User | all disj v1, v2 : u.visible | all v : (u.profile - (v1 + v2)) | (no v1.ids & v2.ids) and (v1.ids + v2.ids in v.ids))
-- div,1
-- equiv pair end
-- equiv pair start,6
always (all u : User, disj v1, v2 : u.visible, v : (u.profile - v1 - v2) | (no (v1.ids & v2.ids)) and (no v1.ids & v.ids) and no v2.ids & v.ids)
-- div,3
always (all u : User | all disj v1, v2 : u.visible | all v : (u.profile - v1 - v2) | (no v1.ids & v2.ids) and (no v1.ids & v.ids) and no v2.ids & v.ids)
-- div,3
-- equiv pair end
-- equiv pair start,2
always (all u : User, disj v1, v2 : u.visible, v : u.profile - v1 - v2 | (no (v1.ids & v2.ids)) and v1.ids not in v.ids and v2.ids not in v.ids)
-- div,2
-- equiv pair end
-- equiv pair start,1
always (all u : User | all disj v1, v2 : (u.visible & u.profile) | (not (v1.ids = v2.ids)) and all v : (u.profile - v1 - v2) | (no v1.ids & v.ids) and (no v2.ids & v.ids))
-- div,1
-- equiv pair end
