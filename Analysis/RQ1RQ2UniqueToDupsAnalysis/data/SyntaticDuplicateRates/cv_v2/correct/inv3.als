all u : User, disj w1, w2 : u.profile {
    (w1.source = w2.source) implies no (w1.ids & w2.ids)
  }
-- div,1
all u1 : User , disj w1,w2 :u1.profile | w1.source = w2.source implies no (w1.ids & w2.ids)
-- div,1
all s: Source, u: User | all disj w, w1: ((source.s) & u.profile) | no (w.ids & w1.ids)
-- div,1
all u:User, s:Source | all disj w1,w2:(u.profile & source.s) | no (w1.ids & w2.ids)
-- div,2
all s: Source, u: User | all disj w1, w2: (u.profile & source.s) | no w1.ids & w2.ids
-- div,2
all s: Source, u: User| ((source.s & u.profile)<:ids).~((source.s & u.profile)<:ids) in iden
-- div,2
all w1, w2 : Work, u : User {
    (w1 != w2 and ((w1 + w2) in u.profile) and w1.source = w2.source) implies no (w1.ids & w2.ids)
  }
-- div,1
