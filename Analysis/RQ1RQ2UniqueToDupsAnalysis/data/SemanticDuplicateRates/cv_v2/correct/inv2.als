-- equiv pair start,18
profile.source in iden + User->Institution
-- div,3
all u:User| u.profile.source in (u + Institution)
-- div,6
all u:User | u.profile.source in Institution+u
-- div,2
all u:User | no ((u.profile.source) - Institution - u)
-- div,1
all u:User, p:u.profile | p.source in u + Institution
-- div,1
always (all u : User, p : u.profile | p.source in u+Institution)
-- div,1
all u : User, w : u.profile | w.source = u || w.source in Institution
-- div,1
all u : User, w : u.profile | w.source = u || some (w.source) & Institution
-- div,1
all u : User , s : u.profile | some (s.source & u) or some (s.source & Institution)
-- div,1
all u:User |all w:Work | w in u.profile implies (w.source in u or w.source in Institution)
-- div,1
-- equiv pair end
