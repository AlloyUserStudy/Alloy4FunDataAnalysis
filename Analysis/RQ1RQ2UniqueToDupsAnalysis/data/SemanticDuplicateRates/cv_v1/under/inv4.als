-- equiv pair start,44

-- div,6
ids.visible in Id -> lone User
-- div,1
all id: Id | lone id <: ids
-- div,1
~(ids.visible).(ids.visible) in iden
-- div,1
all w : Work |  visible.w in User
-- div,2
all u:User, w:Work | lone (u.visible & w)
-- div,1
all id:Id,u:User | lone (u.visible.ids & id)
-- div,1
all u: User, disj w1, w2: u.visible | no w1 & w2
-- div,1
all u : User, w : u.profile | lone w & u.visible
-- div,2
all u : User, w : u.profile | lone u->w & visible
-- div,1
all u: User | all w: u.profile | lone w.visible
-- div,1
all u : User, id : u.profile.ids | lone id & u.visible.ids
-- div,1
all u : User, id : u.visible.ids | lone u.visible.ids & id
-- div,1
all u:User | all w:(u.visible) | (w.ids) in (u.visible).ids
-- div,1
all u : User, id : u.profile.ids | #(id & u.visible.ids) < 2
-- div,1
all u:User, w:Work | w in u.profile implies lone (u.visible & w)
-- div,13
all a,b:Work | visible.a = visible.b implies a.profile = b.profile
-- div,1
all u : User | all w : Work | some (u<:visible).w implies lone w
-- div,2
all u : User | ~(u.visible <: ids.ids).(u.visible <: ids.ids) in iden
-- div,1
all u:User, disj w1,w2:Work | ((w1=w2) and (w1 in u.visible)) implies w2 not in u.visible
-- div,1
all u:User, w1,w2:Work | u->w1.ids in visible and u->w2 in visible implies w1!=w2
-- div,1
all u: User, disj w1, w2 : u.profile | w1 = w2 implies not (w1 in u.visible && w2 in u.visible)
-- div,1
all u : User, id : u.profile.ids, w1, w2 : Work | w1->id + w2->id in visible.ids => w1 = w2
-- div,1
all u: User, disj w1, w2: u.profile | some (w1.ids & w2.ids) => no (w1.ids & w2.ids & User.visible)
-- div,1
-- equiv pair end
-- equiv pair start,19
all u:User, i:Id| lone (u.visible & ids.i)
-- div,3
all u: User | (u.visible<:ids).~(u.visible<:ids) in iden
-- div,5
all u: User, disj w1, w2: u.visible | no w1.ids & w2.ids
-- div,3
all u:User, i:Id, w:Work | lone (u.visible & ids.i)
-- div,1
all u: User | ^((u.visible<:ids).~(u.visible<:ids)) in iden
-- div,2
all u : User | all disj w1, w2: u.visible | no(w1.ids & w2.ids)
-- div,1
all u : User, w1, w2 : Work | w1 != w2 and (w1 + w2) in u.visible implies (no w1.ids & w2.ids)
-- div,1
all u : User | all w1, w2 : Work | w1 != w2 and (w1 + w2) in u.visible implies no w1.ids & w2.ids
-- div,2
all u: User, disj w1, w2: Work | (some (w1.ids & w2.ids) and w1 in u.visible) implies w2 not in u.visible
-- div,1
-- equiv pair end
-- equiv pair start,3
all u: User, disj w1, w2: u.visible | w1.ids != w2.ids
-- div,1
all u : User, w1, w2 : Work | w1 != w2 and (w1 + w2) in u.visible implies (w1.ids != w2.ids)
-- div,1
all u : User | all w1, w2 : Work | w1 != w2 and (w1 + w2) in u.visible implies w1.ids != w2.ids
-- div,1
-- equiv pair end
-- equiv pair start,7
all u: User, disj w1, w2: u.visible | w1 + w2 in u.profile => no w1.ids & w2.ids
-- div,3
all u: User, disj w1, w2 : u.profile | some (w1.ids & w2.ids) implies not (w1 in u.visible && w2 in u.visible)
-- div,1
all u : User | all disj w1, w2: u.profile | w1 in u.visible && w2 in u.visible => no(w1.ids & w2.ids)
-- div,1
all u : User | all disj w1, w2: u.profile | (some (w1.ids <: w2.ids) && w1 in u.visible) implies not w2 in u.visible
-- div,1
all disj w1, w2 : Work | all u : User |  (some (w1.ids & w2.ids)) and (w1 + w2) in u.profile implies not (w1 + w2) in u.visible
-- div,1
-- equiv pair end
-- equiv pair start,2
all u: User, disj w1, w2: u.visible | w1.ids = w2.ids => no (w1 + w2) & u.profile
-- div,2
-- equiv pair end
-- equiv pair start,1
all u: User, disj w1, w2: u.visible | w1.ids = w2.ids => w1.ids not in u.profile.ids
-- div,1
-- equiv pair end
-- equiv pair start,3
all u : User, disj x,y : u.visible | x not in y.^((u.profile <: ids).~(u.profile <: ids))
-- div,2
all u: User, disj w1, w2: u.visible | w1 not in w2.^((u.profile <: ids).~(u.profile <: ids))
-- div,1
-- equiv pair end
-- equiv pair start,5
all u : User, w1, w2 : Work | w1 != w2 and (w1 + w2) in u.visible implies w1.source != w2.source or (w1.ids != w2.ids)
-- div,1
all u : User, w1, w2 : Work | w1 != w2 and (w1 + w2) in u.visible implies (w1.source != w2.source or w1.ids != w2.ids)
-- div,3
all u : User | all w1, w2 : Work | (w1 != w2 and (w1 + w2) in u.visible) implies (w1.ids != w2.ids or w1.source != w2.source)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, w1, w2 : Work | w1 != w2 and (w1 + w2) in u.visible and (w1.source != w2.source) implies w1.ids != w2.ids
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User, w1, w2 : Work | w1 != w2 and (w1 + w2) in u.visible implies (w1.source != w2.source) or (no w1.ids & w2.ids)
-- div,1
all u : User | all w1, w2 : Work | (w1 != w2 and (w1 + w2) in u.visible) implies (no w1.ids & w2.ids or w1.source != w2.source)
-- div,1
-- equiv pair end
-- equiv pair start,3
all w1, w2 : Work | all u : User | w1.ids = w2.ids and (w1 + w2) in u.visible and (w1 + w2) in u.profile implies w1.source = w2.source
-- div,3
-- equiv pair end
-- equiv pair start,3
all u: User, disj w1, w2 : u.profile | (some (w1.ids & w2.ids) && (w1.source != w2.source) )implies not (w1 in u.visible && w2 in u.visible)
-- div,1
all w1, w2 : Work | all u : User | w1.source != w2.source and (w1 + w2) in u.visible and (w1 + w2) in u.profile implies no (w1.ids & w2.ids)
-- div,1
all w1, w2 : Work | all u : User | some (w1.ids & w2.ids) and (w1 + w2) in u.visible and (w1 + w2) in u.profile implies w1.source = w2.source
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User, disj w1, w2 : u.profile | (some (w1.ids & w2.ids) && (w1.source in Institution && w2.source in User) )implies not (w1 in u.visible && w2 in u.visible)
-- div,1
-- equiv pair end
