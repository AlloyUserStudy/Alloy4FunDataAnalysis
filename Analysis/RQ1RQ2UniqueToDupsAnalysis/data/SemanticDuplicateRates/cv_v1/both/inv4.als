-- equiv pair start,5
~ids.ids in iden
-- div,2
all w : Work |  visible.w in User and ~ids.ids in iden
-- div,3
-- equiv pair end
-- equiv pair start,3
one User.visible.ids
-- div,1
one ~(visible.ids).(visible.ids)
-- div,2
-- equiv pair end
-- equiv pair start,1
profile.~visible in iden
-- div,1
-- equiv pair end
-- equiv pair start,10
visible.ids in User lone -> Id
-- div,1
~(visible.ids) in Id -> lone User
-- div,5
(visible.ids).~(visible.ids) in iden
-- div,3
~(visible.ids) in Id -> lone User and source in Work -> lone Source
-- div,1
-- equiv pair end
-- equiv pair start,3
profile.ids in User -> lone Id
-- div,3
-- equiv pair end
-- equiv pair start,11
visible.ids in User -> lone Id
-- div,1
~(visible.ids).(visible.ids) in iden
-- div,7
all u:User| lone (u.visible.ids)
-- div,2
all u:User, i:Id | lone (u.visible.ids)
-- div,1
-- equiv pair end
-- equiv pair start,1
one (visible.ids).~(visible.ids)
-- div,1
-- equiv pair end
-- equiv pair start,1
lone (visible.ids).~(visible.ids)
-- div,1
-- equiv pair end
-- equiv pair start,2
all u:User | some u . visible . ids
-- div,1
all u:User | some ids . (u . visible . ids)
-- div,1
-- equiv pair end
-- equiv pair start,1
User.profile.ids = User.visible.ids
-- div,1
-- equiv pair end
-- equiv pair start,9
all u: User, w: u.visible | one w.ids
-- div,1
all u:User | all w:(u.visible) | lone w.ids
-- div,1
all u:User, w:Work | w in u.visible implies lone w.ids
-- div,2
all w: Work | ~((visible:>w).ids).((visible:>w).ids) in iden
-- div,1
all u: User | ~(u.visible<:ids).(u.visible<:ids) in iden
-- div,2
all u:User, w1,w2:Work | u->w1 in visible implies lone w1.ids
-- div,1
all u:User, w1:Work | w1 in u.visible implies lone (u.visible.ids & w1.ids)
-- div,1
-- equiv pair end
-- equiv pair start,1
~(visible.ids) in Id lone -> lone User
-- div,1
-- equiv pair end
-- equiv pair start,4
all u:User | lone (u.profile & u.visible)
-- div,1
all w1, w2 : Work | all u : User | (w1 + w2) in u.visible and (w1 + w2) in u.profile implies w1 = w2
-- div,1
all w1, w2 : Work, u : User | (w1 in u.profile && w2 in u.profile && w1 in u.visible && w2 in u.visible) => w1 = w2
-- div,1
all u : User, w1, w2 : Work {
      w1 in u.profile and w2 in u.profile and w1 in u.visible and w2 in u.visible => w1 = w2
    }
-- div,1
-- equiv pair end
-- equiv pair start,1
all id: User.profile.ids | lone ids :> id
-- div,1
-- equiv pair end
-- equiv pair start,7
all u:User, w1,w2:Work | u->w1 in visible
-- div,1
all u:User, w1,w2:Work | w1=w2 implies (w1 in u.visible or w2 in u.visible)
-- div,3
all u:User, w1,w2:Work, i:Id | w1 = w2 implies (w1 in u.visible or w2 in u.visible)
-- div,1
all u:User, w1,w2:Work | w1.ids in w2.ids implies (w1 in u.visible or w2 in u.visible)
-- div,1
all u:User, w1,w2:Work | ((w1.ids in w2.ids) or (w2.ids in w1.ids)) implies (w1 in u.visible or w2 in u.visible)
-- div,1
-- equiv pair end
-- equiv pair start,1
~(visible.source).(visible.source) in iden
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | ids . (u . visible . ids) = Work
-- div,1
-- equiv pair end
-- equiv pair start,1
(profile.~visible).(~(profile.~visible)) in iden
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User, w:Work| lone (u.visible.ids & w.ids)
-- div,1
-- equiv pair end
-- equiv pair start,1
all a,b:Work | visible.a = visible.b implies a=b
-- div,1
-- equiv pair end
-- equiv pair start,5
all disj w1, w2: User.visible | no w1.ids & w2.ids
-- div,2
all w1, w2 : Work | w1 != w2 and (w1 + w2) in User.visible implies (no w1.ids & w2.ids)
-- div,1
all disj w1, w2: Work | (some (w1.ids & w2.ids) and w1 in User.visible) implies w2 not in User.visible
-- div,2
-- equiv pair end
-- equiv pair start,1
all u: User, disj w1, w2: u.profile | w1.ids != w2.ids
-- div,1
-- equiv pair end
-- equiv pair start,1
some u : User | u.visible in Work and ~ids.ids in iden
-- div,1
-- equiv pair end
-- equiv pair start,12
all u: User| (u.profile<:ids).~(u.profile<:ids) in iden
-- div,5
all u: User, disj w1, w2: u.profile | no w1.ids & w2.ids
-- div,1
all u : User | all disj w1, w2: u.profile | no(w1.ids & w2.ids)
-- div,1
all u : User, w : Work {
    (w in u.profile) implies one (w.ids.(~ids) & u.profile)
  }
-- div,4
all u : User, w : Work {
    w in u.profile implies lone (w.ids.~ids & u.profile)
  }
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, disj id1, id2 : u.visible.ids | lone ids.id1
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User | (visible:>u.profile).~(visible:>u.profile) in iden
-- div,1
-- equiv pair end
-- equiv pair start,1
User.visible.ids = User.profile.ids implies one User.visible.ids
-- div,1
-- equiv pair end
-- equiv pair start,2
all u: User | ~(visible:>u.profile).(visible:>u.profile) in iden
-- div,2
-- equiv pair end
-- equiv pair start,1
User.visible.ids in User.profile.ids implies one User.visible.ids
-- div,1
-- equiv pair end
-- equiv pair start,5
all u : User | some w : Work | some (u<:visible).w implies lone w
-- div,2
all u : User | some w1,  w2 : Work | (some (u<:visible).w1 & (u<:visible).w2) implies w1 = w2
-- div,1
all u : User | some w1,  w2 : Work | (some (u<:visible).w1 and  some (u<:visible).w2) implies w1 = w2
-- div,1
all u : User | some w1,  w2 : Work | (some (u<:visible).w1 and some (u<:visible).w1) implies w1 = w2
-- div,1
-- equiv pair end
-- equiv pair start,3
some Id
  all u: User, disj w1, w2: u.visible | no w1.ids & w2.ids
-- div,3
-- equiv pair end
-- equiv pair start,2
all u : User, w : Work {
    (w in u.profile) implies one (w.ids)
  }
-- div,1
all u:User, w:Work | w in u.profile implies lone w.ids
-- div,1
-- equiv pair end
-- equiv pair start,1
profile.ids in User -> lone Id and profile.source in User -> lone Source
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User, w:Work | w in u.profile implies lone (u.visible.ids & w.ids)
-- div,1
-- equiv pair end
-- equiv pair start,2
~((visible:>(User.profile)).ids).((visible:>(User.profile)).ids) in iden
-- div,2
-- equiv pair end
-- equiv pair start,1
~(visible.ids) in Id -> lone User and visible.source in User -> lone Source
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User, i:Id, w:Work | lone (u.visible & ids.i) and lone (visible.(ids.i))
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, disj w1, w2 : u.profile | no (w1.ids & w2.ids & User.visible.ids)
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User | ~((visible:>(u.profile)).ids).((visible:>(u.profile)).ids) in iden
-- div,1
all w : Work, u : User |  ~(visible.((u.profile)<:ids)).(visible.((u.profile)<:ids)) in iden
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Work | ~(((profile.w)<:visible).ids).(((profile.w)<:visible).ids) in iden
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, disj w1, w2 : u.profile | w1 + w2 in User.visible => no w1.ids & w2.ids
-- div,1
-- equiv pair end
-- equiv pair start,2
all u: User, disj w1, w2: u.visible | one w1.ids and one w2.ids and no w1.ids & w2.ids
-- div,2
-- equiv pair end
-- equiv pair start,9
all u: User, w1, w2 : u.profile | w1 = w2 implies not (w1 in u.visible && w2 in u.visible)
-- div,2
all w1, w2 : Work | all u : User |  (w1 + w2) in u.visible and (w1 + w2) in u.profile implies no (w1.ids & w2.ids)
-- div,1
all w1, w2 : Work | all u : User |  some (w1.ids & w2.ids) and (w1 + w2) in u.profile implies not (w1 + w2) in u.visible
-- div,2
all u:User , w:Work, w1:Work | (w in u.profile and w1 in u.profile and w in u.visible and w1 in u.visible) implies w != w1
-- div,1
all u:User, w1,w2:Work, p:u.profile |(w1.ids=w2.ids)and(w1 in p and w2 in p) implies (w1 not in u.visible or w2 not in u.visible)
-- div,2
all w1, w2 : Work | all u : User | w1.source = w2.source and (w1 + w2) in u.visible and (w1 + w2) in u.profile implies no (w1.ids & w2.ids)
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj w1, w2: Work | (some (w1.ids & w2.ids) and w1 in User.profile) implies w2 not in User.visible
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all w1, w2 : Work | (w1 != w2 and (w1 + w2) in u.visible) implies w1.source != w2.source
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User | no u.visible.same
}

fun same : Work -> Work {
  { disj w1, w2 : Work | w1.ids = w2.ids }
-- div,1
-- equiv pair end
-- equiv pair start,2
all u:User, w1,w2:Work | (w1 in u.profile and w2 in u.profile) implies (w1 in u.visible or w2 in u.visible)
-- div,1
all u:User, w1,w2:Work | (w1=w2 and w1 in u.profile and w2 in u.profile) implies (w1 in u.visible or w2 in u.visible)
-- div,1
-- equiv pair end
-- equiv pair start,2
all w1, w2 : Work | all u : User | (w1 + w2) in u.visible and (w1 + w2) in u.profile implies w1.ids = w2.ids
-- div,1
all u : User, w1, w2 : Work {
      w1 in u.profile and w2 in u.profile and w1 in u.visible and w2 in u.visible => w1.ids = w2.ids
    }
-- div,1
-- equiv pair end
-- equiv pair start,3
all u : User, w : Work {
    (w in u.profile) implies ((one (w.ids.~ids & u.profile)) and (one (w.ids)))
  }
-- div,3
-- equiv pair end
-- equiv pair start,1
all u: User | all disj w1, w2: Work | (some (w1.ids & w2.ids) and w1 in u.profile) implies w2 not in u.visible
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj w1, w2: User.profile | (some (w1.ids <: w2.ids) && w1 in User.visible) implies not w2 in User.visible
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User | all disj w1, w2: u.profile | (no (w1.ids <: w2.ids) && w1 in u.visible) implies not w2 in u.visible
-- div,1
all u : User, w1, w2 : Work {
      w1 in u.profile and w2 in u.profile and w1 in u.visible and w2 in u.visible => some w1.ids & w2.ids
    }
-- div,1
-- equiv pair end
-- equiv pair start,4
all u : User, w1, w2 : Work | w1 != w2 and (w1 + w2) in u.visible implies (w1.source != w2.source and w1.ids != w2.ids)
-- div,3
all u : User | all w1, w2 : Work | (w1 != w2 and (w1 + w2) in u.visible) implies (w1.ids != w2.ids and w1.source != w2.source)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, w1, w2 : Work | w1 != w2 and (w1 + w2) in u.profile implies (w1.source != w2.source) or (w1.ids != w2.ids)
-- div,1
-- equiv pair end
-- equiv pair start,4
all w1, w2 : Work | all u : User | w1 = w2 and (w1 + w2) in u.profile  implies (w1 in u.visible iff not w2 in u.visible)
-- div,1
all w1, w2 : Work | all u : User | w1.ids = w2.ids and (w1 + w2) in u.profile  implies (w1 in u.visible iff not w2 in u.visible)
-- div,1
all u:User, w1,w2:Work | (((w1.ids=w2.ids) and (w1 in u.profile) and (w1 in u.profile)) implies not ((w1 in u.visible)) and (w2 in u.visible))
-- div,1
all u:User, w1,w2:Work | (((w1.ids=w2.ids) and (w1 in u.profile) and (w2 in u.profile)) implies not ((w1 in u.visible)) and (w2 in u.visible))
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, w1, w2 : Work | w1 != w2 and (w1 + w2) in u.profile implies (w1.source != w2.source) or (no w1.ids & w2.ids)
-- div,1
-- equiv pair end
-- equiv pair start,3
all u : User, w1, w2 : Work | w1 != w2 and (w1 + w2) in u.visible implies (w1.source != w2.source) and (no w1.ids & w2.ids)
-- div,1
all u : User | all w1, w2 : Work | (w1 != w2 and (w1 + w2) in u.visible) implies (no w1.ids & w2.ids and w1.source != w2.source)
-- div,2
-- equiv pair end
-- equiv pair start,1
all u : User, w1, w2 : Work | w1 != w2 and (w1 + w2) in u.profile implies (w1.source != w2.source) and (no w1.ids & w2.ids)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w1, w2 : Work | all u : User | w1.source = w2.source and (w1 + w2) in u.visible and (w1 + w2) in u.profile implies w1.ids = w2.ids
-- div,1
-- equiv pair end
