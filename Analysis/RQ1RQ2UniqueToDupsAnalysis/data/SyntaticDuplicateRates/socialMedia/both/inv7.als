no User.suggested
-- div,1
suggested = (follows - follows.follows)
-- div,1
suggested = follows.follows - follows
-- div,5
User . suggested = User . follows . follows
-- div,1
all x,y : User | x in y.suggested
-- div,1
all user : User | user in User.follows
-- div,1
all u : User | some (u.follows).follows
-- div,1
all u: User | u.suggested = (u.follows)
-- div,1
all u : User |  u.suggested in follows.u
-- div,1
all u : User | suggested = u -> (u.follows)
-- div,1
all u: User | u.follows.follows = none
-- div,1
all u:User | u.suggested not in u.follows
-- div,6
all x : User | x.follows not in x.suggested
-- div,1
all x : User | suggested.x not in follows.x
-- div,1
all x : User | x.suggested not in x.follows
-- div,3
all u: User | u.suggested = (u.follows&u)
-- div,3
all x : User | x - x.follows in x.suggested
-- div,1
all u : User |  u.suggested in u.follows - u
-- div,1
all u : User |  u.follows - u in u.suggested
-- div,1
all x,y : User | y - x.follows in x.suggested
-- div,1
all x : User | x.suggested = x.follows.follows
-- div,5
all u : User | u.suggested = follows.follows.u
-- div,1
all u : User | u.suggested = u.follows.follows
-- div,7
User . suggested = User . follows . follows - User . follows
-- div,2
all u: User| u.follows.follows in u.suggested
-- div,7
all u : User | u.suggested in follows.u.follows
-- div,1
all x : User | (x.follows).follows in x.suggested
-- div,1
all s: User , f : s.follows| s in f.suggested
-- div,2
all u1 : User | u1.follows.follows = u1.suggested
-- div,1
all u : User | u.suggested = u.follows.follows - u
-- div,5
all u1, u2 : User | u1.suggested = u1.follows.follows
-- div,1
all u : User| u.follows.follows - u in u.suggested
-- div,1
all u: User | u.suggested in u.follows - u.follows
-- div,1
all u,s : User| s in u.suggested and u not in follows.s
-- div,1
all u: User | u.suggested = (u.follows.follows).follows
-- div,1
all u : User | u.suggested in (follows.u - u.follows - u)
-- div,1
all u1, u2 : User | u1.suggested = u1.follows.follows - u1
-- div,1
all u1,u2 : User | u1 in u2.suggested => u2 in u2.follows
-- div,1
all u: User | u.follows - (u - u.follows) in u.suggested
-- div,1
all u1,u2 : User | u2 in u1.suggested => u2 in u1.follows
-- div,1
all u1,u2 : User | u1 in u2.suggested => u2 in u1.follows
-- div,2
all x:User | x.suggested = x.follows.follows - x.follows
-- div,6
all u : User | u.follows.follows  - u.follows = u.suggested
-- div,2
all u:User | u.suggested = u.follows.follows - u.follows
-- div,41
all u:User | suggested.u in (u.follows.follows - u.follows)
-- div,1
all u : User | suggested = u -> (follows.(u.follows) - (u.follows))
-- div,1
all u:User| (u.follows.follows & u.follows) in u.suggested
-- div,2
all u: User | u.follows - u.follows.follows in u.suggested
-- div,1
all u : User | suggested = u -> (follows.(u.follows) - (follows.u))
-- div,2
all u : User | u.follows.follows - u.follows in suggested.u
-- div,1
all u: User | u.follows.follows-u.follows in u.suggested
-- div,11
all u : User | u -> ((u.follows).follows - (u.follows)) in suggested
-- div,2
all disj u1,u2: User | u1.suggested = (u2.follows -u1.follows )
-- div,1
all x : User | (x.suggested not in x.follows) && (x not in x.suggested)
-- div,3
all u : User | u.suggested not in u.follows and u not in u.suggested
-- div,3
all x,x1,x2:User | x1 in x.suggested implies x1 != x and x2 != x1
-- div,1
all x : User | (suggested.x not in x.follows) && (x not in x.suggested)
-- div,1
all x : User | (suggested.x not in x.follows) && (x not in suggested.x)
-- div,1
all u : User |   u.follows not in u.suggested and u not in u.suggested
-- div,1
all u1 : User | u1.follows.follows-u1.follows = u1.suggested
-- div,1
all u: User | not (u.follows.follows & u.follows) in u.suggested
-- div,1
all u, s: User | s in u.^(follows.follows) implies s in u.suggested
-- div,2
all u, s: User | s in u.*(follows.follows) implies s in u.suggested
-- div,1
all x : User | all y : User | y - x.follows in x.suggested
-- div,1
all x : User | x.suggested = (x.follows.follows - x.follows + x)
-- div,1
all x : User | all y: x.follows | y.follows in x.suggested
-- div,1
all u : User | u.suggested = u.follows.follows-(u.follows&u)
-- div,1
all u:User|  u.suggested = (u.follows.follows & u.follows)-u
-- div,1
all u : User | (u.follows.follows - u.follows + u) = u.suggested
-- div,1
all u: User | u.follows.follows - (u - u.follows) in u.suggested
-- div,1
all u: User | (u.follows.follows - (u.follows & u)) in u.suggested
-- div,2
all u : User | suggested = ((u.follows).follows - (follows.u + u)) -> u
-- div,1
all u : User | (u.follows.follows - u.follows + u) in u.suggested
-- div,1
all u:User|  u.suggested in (u.follows.follows & u.follows)-u
-- div,2
all u1,u2 :User | u1 in u2.follows => u1.follows in u2.suggested
-- div,3
all u1, u2 : User | u2 in u1.follows => u2.follows in u1.suggested
-- div,1
all u1,u2: User | u1.suggested = (u1.follows.follows - u1.follows)
-- div,2
all u:User| (u.follows.follows & u.follows)-u in u.suggested
-- div,2
all u:User|  (u.follows.follows-u & u.follows) in u.suggested
-- div,1
all disj u,s:User | s in u.suggested iff s in u.follows.follows
-- div,2
all u : User | suggested = u -> ((u.follows).follows - (follows.u + u))
-- div,1
all u1, u2 : User | u1 in follows.u2 implies u2.follows in suggested.u1
-- div,1
all x, y : User | x in y.follows => y in x.suggested + x.follows
-- div,1
all u : User | u.suggested in (follows.(follows.u) - u.follows - u)
-- div,1
no x, y : User | x in y.follows => y not in x.suggested + x.follows
-- div,1
all disj u,u2 : User | u.suggested = u.follows.follows - u.follows
-- div,1
all u: User, s: User - u | u in s.follows => u in s.suggested
-- div,1
all x : User | (not no x.follows) implies x.suggested = x.follows.follows
-- div,1
all u:User | u.suggested = (User-u.follows) + u.follows.follows
-- div,1
all x : User | all y : User | x.follows.follows not in x.suggested
-- div,1
all user : User |
user.suggested = user.follows.follows - user.follows
-- div,1
all user : User | user in User.follows implies user in User.follows.follows
-- div,1
all x : User | all y : x.follows | x in y.follows + y.suggested
-- div,3
all u1:User, u2:User | u1 -> u2 not in follows implies u1 -> u2 in suggested
-- div,1
all u:User|  (u.follows.follows-u & u.follows-u) in u.suggested
-- div,1
all u1, u2 : User | u1 in follows.u2 implies u2.follows-u1 in suggested.u1
-- div,4
all u : User , p : User | p in u.suggested iff p in u.follows.follows
-- div,1
all u: User| all u1: u.follows| u.suggested not in u.follows - u
-- div,1
all x : User | x.suggested in x.^follows && x.suggested not in x.follows
-- div,1
all x, y : User | x in y.follows => y in x.suggested or y in x.follows
-- div,1
all u : User | u.suggested in u.^follows and u.suggested not in u.follows
-- div,1
all u: User | u.suggested = (u.follows.follows - u.follows) - u.follows
-- div,1
all x, y : User | x not in y.follows and y in x.follows => y in x.suggested
-- div,1
all u,s : User | s!=u and s in u.suggested iff s in u.follows.follows
-- div,1
all x, y : User | x not in y.follows and y in x.follows => x in y.suggested
-- div,1
all disj e: User, o: User, s: User | s in o.follows => s in e.suggested
-- div,1
all u1, u2: User | u1 -> u2 in suggested iff (u1 != u2 and (u1 -> u2 not in follows))
-- div,1
all u : User | suggested = u -> ((u.follows).follows - (u.follows - follows.u))
-- div,1
all u1, u2 : User | u2 in u1.follows => u2.follows in u1.follows.suggested
-- div,1
all u : User | suggested = u -> ((u.follows).follows - (u.follows + follows.u ))
-- div,1
all u1 : User ,u2 : u1.follows | u2.follows - u1.follows in u1.suggested
-- div,1
all disj e: User, o: User | (e in o.follows && e not in o) => o in e.suggested
-- div,1
all s, u : User | s->u in suggested => (some f : User | u->f in follows)
-- div,1
all u1:User, u2:u1.follows.follows-u1.follows | u2 in u1.suggested
-- div,1
all u1 : User ,u2 : u1.follows | u1.follows-u2.follows not in u1.suggested
-- div,4
all u1:User | some u2:u1.follows | u2.follows-u1 in u1.suggested
-- div,1
all disj u,u2:User | u2 in u.follows implies u2.follows.follows in u.suggested
-- div,1
all u,x,y : User | u -> x in follows and x -> y in follows implies y -> u in suggested
-- div,1
all u : User , p : User-u | p in u.suggested iff p in u.follows.follows
-- div,1
all x : User | all y : x.follows | x in y.follows or x in y.suggested
-- div,1
all u,x,y : User | u -> x in follows and x -> y in follows implies u -> y in suggested
-- div,3
all x : User | all y : x.follows | x in y.follows or y in y.suggested
-- div,1
all u : User, sugg : u.suggested | u not in sugg && u.follows.follows in sugg
-- div,1
all x, y,z:User| x-> y in suggested implies x->z in follows and z-> y in follows
-- div,1
all x,x1:User | x1 in x.suggested implies x in x1.follows and x1 not in x.follows
-- div,3
all u:User | some s: u.suggested | s in u.follows.follows and s!=u
-- div,1
all u : User | u.suggested in u.^follows and u.suggested not in u.follows+u
-- div,1
all u:User | some f:User-u | f in u.suggested implies f not in u.follows
-- div,1
all u,x,y : User | u -> x in follows and x -> y in follows iff u -> y in suggested
-- div,1
all disj u,s:User | s in u.suggested iff s in u.follows.follows and s!=u
-- div,1
all x : User | x.suggested = x.follows.follows and x.follows not in x.suggested
-- div,2
all u : User | all s: u.follows | u not in s.follows and s in u.suggested
-- div,1
all u: User | u.follows not in u.suggested and u.suggested = u.follows.follows
-- div,2
all u : User | u.suggested in u.*follows and u.suggested not in u.follows+u
-- div,1
all x : User, y : x.suggested | x.follows in follows.y && y not in x.follows
-- div,1
all u,u1,u2 : User | u in u1.suggested and u2 in u1.follows and u in u2.follows
-- div,1
all x : User |(x.suggested = x.follows.follows and x.suggested not in x.follows)
-- div,5
all u : User | all s: u.follows | s not in u.follows and s in u.suggested
-- div,1
all u1, u2 : User | (u1 in follows.u2) implies (u2.follows-(u1+u2) in suggested.u1)
-- div,1
all u: User | u.suggested in u.follows.follows and u.suggested !in u.follows
-- div,40
all u:User | u.suggested not in u.follows &&  u.suggested in u.follows.follows
-- div,24
all u: User | u.suggested in u.follows.follows => u.suggested not in u.follows
-- div,1
all u : User | u.suggested not in follows.u and u.suggested in follows.follows.u
-- div,1
all x:User| x.suggested in x.follows.follows and x.suggested not in x.follows
-- div,14
all x : User | x.follows not in x.suggested and x.suggested in x.follows.follows
-- div,4
all u : User | u.suggested in follows.u.follows and u.suggested not in u.follows
-- div,1
all x : User | x.suggested not in x.follows and x.suggested in x.follows.follows
-- div,2
all u : User | u.suggested not in u.follows and u.suggested in follows.follows.u
-- div,2
all u : User | (u.follows not in u.suggested  ) and (u.suggested in u.follows.follows)
-- div,1
all x : User | suggested.x not in follows.x and suggested.x in follows.follows.x
-- div,1
all u1, u2: User | u2 in u1.suggested and u2 in u1.follows.follows or u1 = u2
-- div,2
all u, x : User | all s: u.follows | x in u.suggested implies x in s.follows
-- div,1
all u : User |  u.suggested in u.follows.follows and u.suggested not in follows.u
-- div,1
all x : User | (x.suggested in x.follows.follows) and (x.follows not in x.suggested)
-- div,2
all u,u1,u2:User | u1 in u.suggested implies u1 in u.follows and u2 in follows.u
-- div,1
all u1:User | some u2:User | u1 -> u2 not in follows implies u1 -> u2 in suggested
-- div,1
all u : User | suggested = u -> ((u.follows).follows - (u.follows + follows.u + u))
-- div,1
all u,u1,u2:User | u1 in u.suggested implies u1 in u2.follows and u2 in u.follows
-- div,1
all u,u1,u2:User | u1 in suggested.u implies u1 in follows.u2 and u2 in u.follows
-- div,1
all u : User | u.suggested in ((u.follows).follows - u.follows - follows.u - u)
-- div,7
all u1, u2 : User | u2 != u1 and u2 in u1.follows => u2.follows in u1.suggested
-- div,1
all u1, u2 : User | u1 in u2.follows.follows implies u1 in u2.suggested and u1!=u2
-- div,1
all u,u1,u2:User | u1 in u.suggested implies u1 in follows.u2 and u2 in u.follows
-- div,1
all u,u1,u2:User | u in suggested.u1 implies u1 in follows.u2 and u2 in u.follows
-- div,1
all u,u1,u2:User | u1 in suggested.u implies u1 in u2.follows and u2 in follows.u
-- div,1
all u,u1,u2:User | u in suggested.u1 implies u1 in follows.u2 and u2 in follows.u
-- div,1
all u,u1,u2:User | u1 in suggested.u implies u1 in u2.follows and u2 in u.follows
-- div,1
all u,u1,u2 : User | u in u1.suggested implies u2 in u1.follows and u in u2.follows
-- div,2
all u,u1,u2:User | u1 in u.suggested implies u1 in follows.u2 and u2 in follows.u
-- div,2
all x : User | all y : User | x.suggested = (x.follows.follows - x.follows)
-- div,1
all u: User | all u1: u.follows | u.suggested in u1.follows - u.follows
-- div,2
all u,s : User| s in u.suggested and u not in follows.s and follows.u in follows.s
-- div,2
all x : User | (x.suggested in x.follows.follows) && not (x.suggested in x.follows)
-- div,1
all u1,u2 : User | u2 in u1.suggested <=> u2!=u1 and u2 in u1.follows.follows
-- div,1
all u1,u2 :User | u1 in u2.follows => u1.follows - u2.follows in u2.suggested
-- div,2
all u,u1,u2:User | u1 in u.suggested implies u1 in follows.u2 and u2 in u1.follows
-- div,1
all u1,u2:User | (u2 in u1.follows) implies (u2.follows-u1.follows) in u1.suggested
-- div,1
all u1,u2,u3 : User | u1 in follows.u2 and u2 in follows.u3 => u3 in suggested.u1
-- div,3
all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u1 in suggested.u2)
-- div,1
all user1, user2 : User | user2 in user1.suggested implies user2 not in user1.follows.follows
-- div,1
all x,y : User | y in x.suggested implies x.follows in follows.y and y not in x.follows
-- div,1
all a,b : User | a in b.follows.follows && a not in b.follows => a in b.suggested
-- div,4
all u1,u2,u3 : User | u1 in follows.u2 and u2 in follows.u3 => u1 in suggested.u3
-- div,2
all u,o: User | o in u.follows.follows && o not in u.follows => o in u.suggested
-- div,2
all u1, u2, u3 : User | ((u1 in follows.u2) && (u3 in follows.u2)) implies (u3 in suggested.u1)
-- div,1
all u,s : User | u in s.follows.follows && u not in s.follows implies u in s.suggested
-- div,1
all u1,u2,u3 : User | u1 in follows.u2 && u3 in follows.u2 => u3 in u1.suggested
-- div,1
all u1,u2,u3 : User | u3 in u1.suggested implies u2 in u1.follows and u3 in u2.follows
-- div,1
all u1,u2,u3 : User | u1 in u2.follows and u2 in u3.follows => u1 in u3.suggested
-- div,1
all u,s:User| s in u.follows.follows and s not in u.follows implies s in u.suggested
-- div,1
all u1,u2,u3 : User | u3 in u1.suggested implies (u3 in u2.follows and u2 in u1.follows)
-- div,1
all u,i : User | u in suggested.i iff (u not in follows.i and u in follows.follows.i)
-- div,1
all u1, u2 : User | (u1 not in follows.u2 and u2 in u1.^follows) implies u2 in suggested.u1
-- div,1
all u1,u2:User | u1->u2 in suggested => (u2->u1 in follows and u1->u2 not in follows)
-- div,2
all x : User, y : x.suggested-x | x.follows in follows.y && y not in x.follows
-- div,2
all x,x1,x2:User | x1 in x.suggested implies x1 != x and x2 != x1 and x1 in x2.follows
-- div,1
all u1, u2 : User | (u1 not in follows.u2 and u2 in u1.^follows) implies u2 in u1.suggested
-- div,1
all u, s : User | s in u.suggested iff s in u.follows.follows and s not in u.follows
-- div,1
all u : User | u.suggested in u.^follows-u and u.suggested not in u.follows+u
-- div,1
all u : User | all s: u.suggested | all f: u.follows  | s in f.follows
-- div,1
all u,s : User| (s in u.suggested) iff (u not in follows.s) and s in u.follows.follows
-- div,1
all a,b : User | a in b.follows.follows && a not in b.follows <=> a in b.suggested
-- div,2
all u : User | u.suggested in u.*follows-u and u.suggested not in u.follows+u
-- div,1
all u,s:User| s in u.follows.follows and s not in u.follows iff s in u.suggested
-- div,1
all x,y: User | y in x.suggested <=> (y in x.follows.follows and y not in x.follows
)
-- div,1
all x, y:User | y not in x.follows and y in x.follows.follows iff y in x.suggested
-- div,1
all u : User | u.suggested not in u.follows and u.suggested in (u.follows.follows)-{u}
-- div,1
all x : User | all y : User | (x != y) implies y in x.follows and y not in x.suggested
-- div,1
all disj u1,u2: User | u2 in u1.follows=> u1.suggested = u2.follows - u1.follows
-- div,4
all u: User| u.suggested in u.follows.follows - u => u.suggested not in u.follows
-- div,2
all x : User | all y : User | (x != y) implies y not in x.follows and y in x.suggested
-- div,1
some u1,u2:User | u1->u2 in suggested => (u2->u1 in follows and u1->u2 not in follows)
-- div,1
all u1,u2,u3:User | u1->u3 in suggested => u1->u2 in follows and u2->u3 in follows
-- div,1
all u1:User | some u2:u1.follows | u2.follows-u1.follows in u1.suggested
-- div,1
all x,y : User | x in suggested.y iff (y in x.follows and y not in x.follows and x != y )
-- div,1
all u1, u2, u3: User | u1->u2 in follows and u2->u3 in follows => u1->u3 in suggested
-- div,1
all u1, u2, u3: User | u1->u2 in follows and u2->u3 in follows => u3->u1 in suggested
-- div,2
all disj u1, u2, u3 : User | u2 in u1.follows and u3 in u2.follows and (u3 in u1.suggested)
-- div,1
all u: User | all u1: u.follows | u.suggested = u1.follows - u.follows - u
-- div,1
all u : User, sugg : u.suggested | sugg not in u.follows and sugg in follows.u.follows
-- div,1
all u : User, cand : u.follows.follows | cand in u.suggested && u.follows not in cand
-- div,1
all u1, u2, u3: User | u1->u2 in follows and u2->u3 in follows <=> u1->u3 in suggested
-- div,5
all u,u1 : User | u in u1.follows.follows and u not in u1.follows => u in u1.suggested
-- div,2
all u1,u2,u3:User | u1->u3 in suggested <=> u1->u2 in follows and u2->u3 in follows
-- div,1
all disj u,s : User | s in u.suggested implies s in u.follows.follows and s in u.follows
-- div,1
all u : User, cand : u.follows.follows | cand not in u.follows => cand in u.suggested
-- div,1
all x: User | x.follows.follows in x.suggested implies x.follows.follows not in x.follows
-- div,2
all u1, u2, u3: User | u1->u2 in follows and u2->u3 in follows <=> u3->u1 in suggested
-- div,2
all u,u2 : User | (u2 in u.follows.follows && u2 not in u.follows) => u2 in u.suggested
-- div,1
all u,uu:User | u in uu.follows.follows && u not in uu.follows implies u in uu.suggested
-- div,1
all u: User | all u1: u.follows | u.suggested in u1.follows - u.follows - u
-- div,1
all x : User | all u : follows.follows.x | x in u.follows or x in u.suggested
-- div,1
all u: User | u.follows.follows not in u.follows implies u.follows.follows in u.suggested
-- div,2
all u : User | all s : u.suggested | (s not in u.follows) and (s in follows.(u.follows))
-- div,1
all disj u1, u2, u3 : User | u2 in u1.follows and u3 in u2.follows implies u3 in u1.suggested
-- div,2
all u : User | all s : u.suggested | (s not in u.follows) and (s in (follows.u).follows)
-- div,1
all u1:User, u2:u1.follows, u3:u2.follows-u1.follows | u3 in u1.suggested
-- div,1
all x: User | all f : x.follows.follows | f not in x.follows => f  in x.suggested
-- div,1
all u : User | all s: u.follows  | u not in s.follows and s.follows in u.suggested
-- div,1
all disj u,s:User | (s in u.suggested implies s in u.follows.follows) and s not in u.follows
-- div,1
all x : User | all s : x.follows.follows | s in x.suggested and s not in x.follows
-- div,1
all disj u,uu:User | u.suggested not in u.follows &&  u.suggested in uu.follows.follows
-- div,1
all u: User | (u.follows.follows - u.follows) in u.suggested and no (u.suggested & u)
-- div,1
all disj u,s : User | s in u.suggested iff s in u.follows.follows and s in u.follows
-- div,1
all u:User | some f:User-u | u.suggested = u.follows.follows - u.follows
-- div,1
all u,x,y : User | u -> x in follows and x -> y in follows and u != y implies u -> y in suggested
-- div,1
all disj u,uu:User | u in u.follows.follows && u not in u.follows implies u in u.suggested
-- div,1
all user : User + Influencer| (user not in user.suggested) and (user.follows not in user.suggested)
-- div,1
all x,x1:User | x1 in x.suggested implies x in x1.follows and x!=x1 and x1 not in x.follows
-- div,1
all u1, u2 : User | u2 != u1 and u2 in u1.follows => u2.follows in u1.follows.suggested
-- div,1
all u: User | u in User.suggested implies (u not in User.follows and u in User.follows.follows)
-- div,1
all u : User | (u -> ((u.follows).follows - (u.follows + u + (u.follows).follows))) = suggested
-- div,1
all  u1,u2: User | u2 in u1.follows.follows && u2 not in u1.follows => u2 in u1.suggested
-- div,2
all u1,u2: User | ((u1 not in u2.follows) and (u1 in u2.follows.follows)) implies (u1 in u2.suggested)
-- div,1
all disj u,uu:User | u in uu.follows.follows && u not in uu.follows implies u in u.suggested
-- div,1
all u1,u2 : User | u2 in u1.suggested implies (u2 not in follows.u1 and u2 in follows.follows.u1)
-- div,1
all u : User | all u2 : u.follows.follows | u2 not in u.follows => u2 in u.suggested
-- div,1
all u1,u2 : User | u1 in u2.follows.follows and u1 not in u2.follows => u1 in u2.suggested
-- div,1
all x : User, y : x.suggested | x.follows in follows.y && y not in x.follows && y not in x
-- div,2
all u1,u2 : User | (u2 not in u1.follows and u2 in u1.follows.follows) iff (u2 in u1.suggested)
-- div,1
all u1,u2 : User | u2 in u1.suggested <=> u2 not in u1.follows  and u2 in u1.follows.follows
-- div,2
all u1,u2 : User | u2 in u1.suggested iff u2 in u1.follows.follows and u2 not in u1.follows
-- div,3
all u1,u2: User | ((u1 not in u2.follows) and (u1 in u2.follows.follows)) <=> (u1 in u2.suggested)
-- div,1
all e: User, o: User - e, s: User - (e + o) | s in o.follows => s in e.suggested
-- div,1
all u, y : User | y in u.suggested iff (some follows.y & u.follows) and (no y & u.follows)
-- div,1
all u1:User | some u2:u1.follows | u2.follows-u1.follows-u1 in u1.suggested
-- div,2
all u:User | u not in u.suggested

all u: User| u.follows.follows in u.suggested
-- div,1
all p, u: User | all s: u.suggested | p in s implies p not in u.follows and p in u.follows
-- div,1
all u: User| u.suggested in u.follows.follows - Influencer => u.suggested not in u.follows
-- div,1
all u : User, sug: User, followed : User | sug in u.suggested implies sug in followed.follows
-- div,1
all u: User| all u1: u.follows| u.suggested in u1.follows - u1 - u.follows - u
-- div,1
all u: User, s: User | s in u.follows.follows && s not in u.follows => s in u.suggested
-- div,2
all u, s : User | s in u.suggested implies (s in (u.follows).follows and s not in follows.u and s!=u)
-- div,1
all u: User | all x: User | x in u.follows and x not in follows.u implies (x in u.suggested)
-- div,1
all x:User | x.suggested-x.follows in x.follows.follows and x.suggested not in x.follows
-- div,1
all u1 : User | all u2: u1.follows.follows | u2 not in u1.follows implies (u2 in u1.suggested )
-- div,1
all x,y : User | y in x.suggested implies x.follows in follows.y and y not in x.follows and x != y
-- div,1
all s, f, nf : univ | all u: User | u.follows in f and u.follows not in nf implies f-nf in s
-- div,1
all u,u2:User |all sug:u.suggested | u2 in u.follows => u2.follows.follows in sug
-- div,1
all u1: User, u2: User | u1->u2 in suggested implies u1->u2 in follows and u2->u1 not in follows
-- div,3
all u : User , p : User | p in u.suggested iff (p in u.follows.follows and p not in u.follows)
-- div,1
all u1, u2 : User | (u1!=u2 and u1 in u2.follows.follows) implies (u1 in u2.suggested and u1!=u2)
-- div,1
all disj u1,u2 : User | u1 in u2.suggested implies(u1 not in u1.follows and u1 in u1.follows.follows)
-- div,1
all u: User | all x: User | x in (u.follows.follows - u.follows) implies (x in u.suggested)
-- div,3
all u: User, y: User| y in u.suggested iff y not in u.follows && y in u.follows.follows
-- div,1
all disj u1,u2 : User | (u1 in u2.suggested and u1 in u2.follows.follows)  implies(u1 not in u1.follows)
-- div,1
all disj u1,u2 : User | u1 in suggested.u2 implies(u1 not in u2.follows and u1 in u2.follows.follows)
-- div,1
all u1: User, u2: User | u2->u1 in suggested implies u1->u2 in follows and u2->u1 not in follows
-- div,1
all u, f, s: User | (f in u.follows and s in f.follows and s not in u.follows) implies s in u.suggested
-- div,3
some disj u1,u2 : User | (u1 in u2.suggested and u1 in u2.follows.follows)  implies(u1 not in u2.follows)
-- div,1
all e,s,o: User | (e in s.follows && s in o.follows && e not in o.follows) => o in e.suggested
-- div,1
all x, y, z: User | x in y.follows && y in z.follows && x not in z.follows => x in z.suggested
-- div,5
all u,y,z: User | y in suggested.u implies (( y not in follows.u) and (y in follows.z) and (z in follows.u))
-- div,3
all u1,u2,u3 : User | u1 in u2.follows and u2 in u3.follows and u1!=u3 => u1 in u3.suggested
-- div,1
all a, b, c : User | b in c.follows and b not in a.follows and c in a.follows implies b in a.suggested
-- div,1
all x, y:User | x in y.follows.follows and x not in y.follows implies x in y.suggested and x != y
-- div,2
all u,y,z : User | u in suggested.y implies ( (u not in follows.y) and (u in follows.z) and (z in follows.y))
-- div,2
all x, y, z: User | z in x.suggested implies z not in x.follows and y in x.follows and z in y.follows
-- div,1
all x,y,z : User | y in follows.z and z in follows.x and y not in x.follows => x in y.suggested
-- div,1
all u1 : User| all u2 : User| u1.follows not in u2.follows implies u1.follows in u2.suggested
-- div,1
all u, y, z : User | ((u in y.follows and y in z.follows) and z not in u.follows) implies z in u.suggested
-- div,1
all u, y, z : User | (y in u.follows and z in y.follows and z not in u.follows) implies z in u.suggested
-- div,1
all x,y : User | y in x.suggested implies x.follows in follows.y and no y & x.follows and x != y
-- div,1
all disj u1,u2: User | all dif: u2.follows - u1.follows | u2 in u1.follows => u1 = dif
-- div,1
all x, y:User |x!=y implies y in x.suggested  iff y not in x.follows and y in x.follows.follows
-- div,1
all x, y:User | y not in x.follows and y in x.follows.follows iff y in x.suggested and y!=x
-- div,1
all u : User, u2 : User | u2 not in u.follows && u2 in u.follows.follows =>  u2 in u.suggested
-- div,2
all x : User | all y : x.suggested | y not in x and (all z: x.follows | y in z.follows)
-- div,1
all u : User, u2 : User | u2 in u.follows.follows && u2 not in u.follows => u2 in u.suggested
-- div,3
all u1 : User, u2 : u1.follows, u3 : u2.follows |  u3 not in u1.follows iff u3 in u1.suggested
-- div,1
all disj e: User, o: User, s: User | s in o.follows && s not in e.follows=> s in e.suggested
-- div,2
all u : User | all s : u.suggested | all f : u.follows | (s not in f) and (s in f.follows)
-- div,1
all u:User, uu:User|  uu not in u.follows && uu in u.follows.follows => uu in u.suggested
-- div,1
all x, y: User | x -> y in suggested iff (all z: User | z -> x in follows and z -> y in follows)
-- div,1
all u: User - Influencer| u.suggested in u.follows.follows - u => u.suggested not in u.follows
-- div,1
all x, y,z:User| x-> z in suggested implies x->y in follows and y-> z in follows and x->z not in follows
-- div,2
all x,y,z:User| z->x in suggested implies x->y in follows and y->z in follows and x->z not in follows
-- div,1
all x,y,z : univ | x->z in suggested implies z->y in follows and y->x in follows and x->z not in follows
-- div,2
all u : User | all s : u.suggested | (s not in u.follows) and (s in follows.(u.follows)) and (s not in u)
-- div,1
all u : User | some f: u.follows.follows  | f != u and f in u.suggested and f not in u.follows
-- div,1
all disj u,u2:User |all sug:u.suggested | u2 in u.follows => u2.follows.follows in sug
-- div,1
all x, y,z:User| y-> x in suggested implies x->z in follows and z-> y in follows and x->y not in follows
-- div,1
all u1, u2 : User | u1 in u2.follows implies u1.follows in u2.suggested and u1.follows not in u2.follows
-- div,1
all x, y,z:User| x-> y in suggested implies x->z in follows and z-> y in follows and x->y not in follows
-- div,3
all x, y,z:User| x->y in follows and y-> z in follows and x->z not in follows implies x-> z in suggested
-- div,7
(all x : User | suggested.x in follows.follows.x) && (no x : User | suggested.x in follows.x)
-- div,1
all x, y, z : univ | x->y in follows and y->z in follows and x->z not in follows implies z->x in suggested
-- div,1
all u,x,y : User | u -> x in follows and x -> y in follows and u -> y not in follows implies u -> y in suggested
-- div,1
all s, u : User | s->u in suggested => (some f : User | u->f in follows) and u->s not in follows
-- div,1
all x,y,z : User |
(y->x in follows and x->z in follows and y->z not in follows)
implies y->z in suggested
-- div,1
all x, y, z : univ | x->y in follows and y->z in follows and x->z not in follows implies x->z in suggested
-- div,2
all u : User, p : User - u |  p->u in suggested implies p in u.follows.follows and p not in u.follows
-- div,1
all disj x,y:User | y in x.follows implies some disj z:User| z in y.follows implies z in x.suggested
-- div,1
all disj e,s,o: User | (e in s.follows && s in o.follows && e not in o.follows) => o in e.suggested
-- div,1
all u : User | all others : follows.u.follows | others not in follows.u => others in suggested.u
-- div,1
all x : User | suggested.x not in follows.x
all x : User | suggested.x in follows.follows.x
-- div,1
all u1: User, u2: User | u2 in u1.follows.follows and u2 not in u1.follows implies u2 in u1.suggested
-- div,1
all u:User | some f:User-u | f in u.suggested implies f in u.follows.follows - u.follows
-- div,3
all x : User | (x.suggested in x.follows.follows) and (not no x.follows implies x.follows in x.suggested)
-- div,1
all x, y, z : univ | x->y in follows and y->z in follows and not x->z in follows implies x->z in suggested
-- div,2
all u : User | u.suggested in u.follows.follows && u.suggested not in u.follows && u not in u.suggested
-- div,1
all x : User | suggested.x not in follows.x and suggested.x in follows.follows.x and x not in suggested.x
-- div,1
all u : User | u.suggested in u.follows.follows && u.follows not in u.suggested && u not in u.suggested
-- div,1
all u : User |  u not in u.suggested and u.suggested not in u.follows and u.suggested in u.follows.follows
-- div,1
all x : User | (x.suggested in x.follows.follows) && (x.suggested not in x.follows) && (x not in x.suggested)
-- div,1
all u : User | u.suggested not in u.follows and u.suggested in u.follows.follows and u not in u.suggested
-- div,1
all u,u1,u2 : User | u in u1.suggested implies u2 in u1.follows and u in u2.follows and u not in u1.follows
-- div,2
all u,u2,u3:User | u2 in u.follows and u3 in u2.follows and u3 not in u.follows implies u3 in u.suggested
-- div,1
all u, u2, u3 : User | u3 in u2.follows and u in u2.follows and u3 not in u.follows => u3 in u.suggested
-- div,1
all x : User | (x.suggested not in x.follows) && (x.suggested in x.follows.follows) && (x not in x.suggested)
-- div,1
all x : User | (x.suggested in x.follows.follows) && (x not in x.suggested) && (x.suggested not in x.follows)
-- div,2
all u : User | u.suggested in u.follows.follows && u.suggested not in u.follows && u.suggested not in u
-- div,1
all u : User, cand : u.follows.follows | cand not in u.follows => cand in u.suggested and u not in cand
-- div,1
all u: User | all x: User | x in u.follows.follows and x not in follows.u implies (x in u.suggested)
-- div,1
all u : User | no u.suggested & u.follows
all u : User | u.suggested = u.follows.follows
-- div,1
all s, u : User | (s in u.follows.follows and s not in u.follows and u not in Influencer) implies s in u.suggested
-- div,1
all x : User |not no x.suggested implies (x.suggested = x.follows.follows and x.suggested not in x.follows)
-- div,1
all x : User | (x.suggested = x.follows.follows and (not no x.suggested implies x.suggested not in x.follows) )
-- div,1
all u1,u2 : User | u1 in u2.suggested implies u2 not in u1.follows and u2 != u1 and u2 in u1.follows.follows
-- div,1
all u1,u2 : User | u2 in u1.suggested implies (u2 not in u1.follows and u2 in follows.follows.u1 and u1 != u2)
-- div,1
all u : User | u.follows.follows not in u.suggested && u not in u.suggested && u.follows not in u.suggested
-- div,1
all u1,u2 : User | u2 in u1.suggested implies (u1 != u2 and u2 not in u1.follows and u2 in follows.u1.follows)
-- div,1
all disj u1,u2: User | u2 in u1.follows && u2.follows != u1.follows => u2.follows in u1.suggested
-- div,1
all u: User, i: Influencer| u.suggested in u.follows.follows - i => u.suggested not in u.follows
-- div,1
all u1,u2 : User | u2 in u1.suggested implies (u2 not in u1.follows and u1 != u2 and u2 in follows.follows.u1)
-- div,1
all u,u1,u2 : User | u in u1.suggested implies u2 in u1.follows and u in u2.follows and u not in u1.suggested
-- div,2
all disj u1,u2: User | u2 in u1.follows && u2.follows not in u1.follows => u2.follows in u1.suggested
-- div,1
all disj u1,u2 : User | u1 in u2.suggested <=> u1 in u2.follows.follows - u2.follows - u2.suggested
-- div,1
all u1,u2:User | u1->u2 in suggested implies (some z:User | z->u1 in follows and u1->u2 in follows )
-- div,1
all u1,u2 : User | (u2 not in u1.follows and u2 in u1.follows.follows) implies (u2 in u1.suggested and u1 != u2)
-- div,1
all u1,u2 : User | u2 in u1.suggested implies (u1!=u2 and u2 in u1.follows.suggested and u2 not in u1.follows)
-- div,1
all u1,u2:User | u1->u2 in suggested implies (some z:User | z->u2 in follows and u1->u2 in follows)
-- div,1
all u1,u2 : User | u2 in u1.suggested <=> (u1!=u2 and u2 in u1.follows.suggested and u2 not in u1.follows)
-- div,1
all x1,x2,x3 : User | x3 in x2.suggested implies (x2 in follows.x3 and
x1 in follows.x2 and x2 not in follows.x3)
-- div,1
all u1,u2,u3 : User | u3 in u1.suggested implies u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows
-- div,6
all u1, u2, u3 : User | u3 in u1.suggested implies u2 in u1.follows and u3 not in u1.follows and u3 in u2.follows
-- div,1
all u1, u2 , u3 : User | u3 in u1.follows and u3 in follows.u2 and u1 not in u2.follows implies u2 in u1.suggested
-- div,1
all u1,u2 : User | u2 in u1.suggested and u2!=u1 <=> u2 not in u1.follows and u2 in u1.follows.follows
-- div,1
all u1,u2,u3:User| u3 in u1.suggested implies u3 in u2.follows and u2 in u1.follows and u3 not in u1.follows
-- div,9
all u1, u2, u3 : User |(u2 not in u1.follows and u3 in u1.follows and u2 in u3.follows) implies u2 in u1.suggested
-- div,3
all u1,u2,u3 : User | u1 in follows.u2 and u2 in follows.u3 and u1 not in follows.u3 => u1 in suggested.u3
-- div,3
all u1, u2, u3: User | (u1 in suggested.u2) implies (u1 not in follows.u2 && u2 in follows.u3 && u3 in follows.u2)
-- div,1
all u1,u2,u3:User | u3 not in u1.follows and u3 in u2.follows and u2 in u1.follows implies u3 in u1.suggested
-- div,3
all u1, u2, u3 : User | u2 in u1.suggested implies (u2 not in u1.follows and u3 in u1.follows and u2 in u3.follows)
-- div,1
all u1,u2,u3 : User | u1 in u2.follows and u2 in u3.follows and u1 not in u3.follows implies u1 in u3.suggested
-- div,1
all u1, u2, u3 : User | u2 in u1.follows and u3 in u2.follows and not u3 in u1.follows => u3 in u1.follows
-- div,2
all u1,u2 : User | u1 != u2 and u2 in u1.suggested <=>  u2 not in u1.follows and u2 in u1.follows.follows
-- div,1
all u1, u2, u3 : User | u3 in u1.suggested => u3 not in u1.follows and u3 in u2.follows and u2 in u1.follows
-- div,4
all u1,u2,u3 : User | u1 in u2.follows and u2 in u3.follows and u3 not in u1.follows implies u3 in u1.suggested
-- div,1
all x, y:User | y not in y.suggested and (x in y.follows.follows and x not in y.follows) implies x in y.suggested
-- div,1
all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3) && (u3 not in follows.u1)) implies (u3 in suggested.u1)
-- div,1
all x0,x1,x2:User | x2 in x1.follows and x1 in x0.follows and x2 not in x0.follows implies x2 in x0.suggested
-- div,1
all u1, u2, u3 : User | u3 in u1.suggested implies u3 not in u1.follows and u2 in u1.follows and u3 in u2.follows
-- div,1
all u1,u2 : User | (u2 not in u1.follows and u2 in u1.follows.follows) iff (u2 in u1.suggested and u1 != u2)
-- div,1
all u1, u2, u3 : User | (u1 in follows.u2 && u2 in follows.u3 && u1 not in follows.u3) implies (u3 in suggested.u1)
-- div,4
all u1,u2,u3 : User | u1 in follows.u2 && u3 in follows.u2 && u3 not in follows.u1 => u3 in u1.suggested
-- div,1
all u1,u2,u3:User | u3 not in u1.follows and u2 in u1.follows and u3 in u2.follows implies u3 in u1.suggested
-- div,1
all u1,u2,u3:User| u3 in u2.follows and u2 in u1.follows and u3 not in u1.follows implies u3 in u1.suggested
-- div,2
all x,x1,x2:User | x1 in x.suggested implies x1 != x and x2 != x1 and x1 in x2.follows and x2 in x1.follows
-- div,1
all u1, u2, u3 : User | u1 in u2.follows and u2 in u3.follows and u1 not in u3.follows implies u3 in u1.suggested
-- div,1
all u1, u2, u3 : User | u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows implies u3 in u1.suggested
-- div,1
all disj u, u2, u3 : User | u3 in u2.follows and u in u2.follows and u3 not in u.follows => u3 in u.suggested
-- div,1
all u: User - Influencer| u.suggested in u.follows.follows - Influencer => u.suggested not in u.follows
-- div,1
all u : User |
all u2 : User |
(u2 in u.follows.follows && u2 not in u.follows) => u2 in u.suggested
-- div,1
all u : User | all s: u.suggested | all f: u.follows  | s in f.follows and s not in u.follows
-- div,2
all u : User | all s: u.follows | all y: s.follows | y not in u.follows and y in u.suggested
-- div,1
all x : User | (x.suggested in x.follows.follows) and (not no x.follows implies x.follows in x.suggested+x)
-- div,1
all u1, u2, u3 : User | u2 in u1.follows and u3 in u2.follows and not u3 in u1.follows => u3 in u1.suggested
-- div,2
all user1, user2, user3 : User | user2 in user1.follows and user3 in user2.follows implies user3 in user1.suggested
-- div,2
all u1, u3: User | some u2: User | u1->u2 in follows and u2->u3 in follows <=> u1->u3 in suggested
-- div,1
all u1,u2,u3 :User | (not (u3 in u1.follows) and u3 in u2.follows and u2 in u1.follows) implies u3 in u1.suggested
-- div,2
all u1, u2, u3: User | (u3 in u2.suggested and u3 in u1.follows) implies (u1 in u2.follows and u3 not in u2.follows)
-- div,1
all u1, u2, u3, u : User | (u2 not in u1.follows and u3 in u1.follows and u2 in u3.follows) implies u2 in u1.suggested
-- div,1
all u1, u2, u3 : User | u3 in u1.suggested => u2 in u1.follows and u3 in u2.follows and not u3 in u1.follows
-- div,1
all user1, user2, user3 : User | user3 in user1.suggested implies ((user2 in user1.follows) and (user3 in user2.follows))
-- div,1
all x : User | all y : User | (x != y) implies x in y.follows and x.follows - y.follows in y.suggested
-- div,1
all u1, u3: User | (some u2: User | u1->u2 in follows and u2->u3 in follows) <=> u1->u3 in suggested
-- div,1
all u1, u2, u3 : User | u3 in u1.suggested implies u1 -> u3 not in follows and u1 -> u2 in follows and u2 -> u3 in follows
-- div,2
all disj u1,u2: User | all dif: u1.follows - u2.follows| u2 in u1.follows =>   dif in u1.suggested
-- div,1
all x,y:User | x!=y and y in x.follows implies some z:User| z in y.follows implies z in x.suggested
-- div,1
all u : User | all s : u.suggested | all f : u.follows | (s not in f) and (s in f.follows) and s != u
-- div,2
all u : User | all s : u.suggested | s in u.follows.follows and s not in u.follows and s not in follows.u
-- div,2
all disj u1,u2: User | all dif: u1.follows - u2.follows| u2 in u1.follows =>   u1.suggested in dif
-- div,1
all u : User | all s : u.suggested | s in u.follows.follows and s not in u.follows and s not in follows.s
-- div,1
all u : User, cand : u.follows.follows | cand in u.suggested && u.follows not in cand && u not in u.suggested
-- div,1
all u1, u2, u3 : User | u1 -> u3 in suggested implies u1 -> u3 not in follows and u1 -> u2 in follows and u2 -> u3 in follows
-- div,1
all u : User | u.suggested in User-{u} and u.suggested not in u.follows and u.suggested in u.follows.follows
-- div,1
all u, f, s: User - Influencer | (f in u.follows and s in f.follows and s not in u.follows) implies s in u.suggested
-- div,2
all u1,u2,u3: User | u3 -> u1 in suggested implies u1 -> u2 in follows and u2 -> u3 in follows and u1 -> u3 not in follows
-- div,1
all u:User | some f:User-u | f in u.suggested implies f in ((u.follows).follows) and f not in u.follows
-- div,1
all u, y, z : User | (y in u.follows and z in y.follows and z not in u.follows) <=>  (u != z and z in u.suggested)
-- div,1
all u:User | some f:User-u | f in u.suggested implies f not in u.follows and f in u.follows.follows
-- div,1
all u1,u2,u3 : User | u1->u2 in suggested implies (u1->u3 in follows and u3->u2 in follows and u1->u2 not in follows)
-- div,1
all u1,u2,u3:User | u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows => u1->u3 in suggested
-- div,7
all u1,u2,u3:User | u1->u3 in suggested => u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows
-- div,5
all u1, u2, u3 : User | u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows implies u3->u1 in suggested
-- div,2
all disj u1,u2 : User | u1 in u2.suggested iff (some u3 : User | u3 in u2.follows && u1 in u3.follows)
-- div,1
all u1, u2, u3 : User | (u1->u3 in suggested) <=> (u1->u2 in follows and u3->u2 in follows and u1->u3 not in follows)
-- div,1
all disj u,uu:User | u in uu.follows.follows && uu.follows.follows not in uu.follows implies u in uu.suggested
-- div,1
all u,x: User | ( some y : User | u->y in follows and x->y in follows and x != u) iff u->x in suggested
-- div,1
all u,x,y : User | u -> x in follows and x -> y in follows  and u != x and u != y and x != y implies u -> y in suggested
-- div,2
all x,y,z : User |
(y->x in follows and x->z in follows and y->z not in follows and y!=z)
implies x->z in suggested
-- div,1
all u1:User, u2:u1.follows | some u3:u2.follows | not u1->u3 in follows =>  u1->u3 in suggested
-- div,1
all x,y,z : User |
(y->x in follows and x->z in follows and y->z not in follows and x!=z)
implies x->z in suggested
-- div,1
all disj u,uu: User | some f: u.follows.follows  | uu not in u.follows && uu in f  => uu = u.suggested
-- div,2
all u1 : User| all u2 : User| u1.follows not in u2.follows implies (u1.follows - u2.follows) in u2.suggested
-- div,1
all disj u,uu: User | some f: u.follows.follows | uu not in u.follows && uu in f  => uu in u.suggested
-- div,2
all u1 : User| all u2 : User| u1.follows not in u2.follows implies (u1.follows - u2.follows) in u1.suggested
-- div,1
all u : User, cand : u.follows.follows | u not in u.suggested and (cand not in u.follows => cand in u.suggested)
-- div,1
all x : User | ((not no x.follows) implies x.suggested = x.follows.follows) and (no x.follows implies x in x.suggested)
-- div,2
all disj u,uu: User | some f: u.follows.follows |  uu in u.suggested  => uu not in u.follows && uu in f
-- div,1
all u1 : User| all u2 : User| u1.follows not in u2.follows implies (u2.follows - u1.follows) in u2.suggested
-- div,1
all u1,u2,u3:User | u1->u2 in follows and u2->u3 in follows and not u1->u3 in follows => u1->u3 in suggested
-- div,4
all u1 : User, u2 : u1.follows, u3 : u2.follows |  u3 != u2 and u3 not in u1.follows iff u3 in u1.suggested
-- div,1
all user1, user2: User | user2 not in user1.follows and user2 in user1.follows.follows implies user2 in user1.suggested
-- div,1
all user1, user2: User | user2 in user1.follows.follows and user2 not in user1.follows implies user2 in user1.suggested
-- div,1
all u1, u2 : User | u1 in follows.u2 implies u2.follows in suggested.u1
all u : User | u not in suggested.u
-- div,1
all u1, u2 : User | u2 in u1.suggested => u2 in u1.follows.follows and u2 not in u1.follows and u1 not in u1.follows
-- div,1
all u: User |
u.suggested = {
ffu: u.follows & u.follows.follows |
ffu not in u.follows and ffu != u
}
-- div,1
all user1, user2 : User | user2 in user1.suggested implies ((user2 not in user1.follows) and (user2 not in user1.follows.follows))
-- div,1
all u,u1,u2 : User | u in u1.suggested implies u2 in u1.follows and u in u2.follows and u not in u1.follows and u!=u1
-- div,1
all u : User, s : User| s in u.suggested implies (s in u.follows.follows and s not in u.follows and u not in s.follows)
-- div,1
all x : User | all y: User | all z: User | z in x.suggested => (z in y.follows and y in x.follows)
-- div,1
all u:User | some f:User-u | f in u.suggested implies f not in u.follows and f in u.follows.follows-u
-- div,3
all s : User |all y : User | all u : User | (s in suggested.u) implies ((s in follows.y) and (y in follows.u))
-- div,1
all disj u,uu: User | some f: u.follows.follows - u | uu not in u.follows && uu in f  => uu = u.suggested
-- div,1
all disj u,uu: User | some f: u.follows.follows  | uu not in u.follows && uu in f  => uu = (u.suggested-u)
-- div,1
all disj u,uu: User | some f: u.follows.follows - u | uu not in u.follows && uu in f  => uu in u.suggested
-- div,1
all u : User, sugg : u.follows.follows, foll : u.follows | foll not in sugg && u not in sugg && sugg in u.suggested
-- div,1
all disj e: User, o: User, s: User | (o in e.follows && o in s.follows && s not in e.follows) => s in e.suggested
-- div,1
all u: User - Influencer| u.suggested in u.follows.follows => u.suggested not in u.follows and u not in u.suggested
-- div,1
all u1, u2 : User | (u1!=u2 and u1 in u2.follows.follows) implies (u1 in u2.suggested and u1!=u2 and u1 not in u2.follows)
-- div,1
all x,y : User | y in x.suggested implies some z : User | z in x.follows and z in follows.y and  z != x and y != y
-- div,1
all x, y : User | x in y.suggested implies x not in y.follows and one z: User | z in x.follows and y in z.follows
-- div,1
all disj e: User, o: User, s: User | (e in o.follows && s in o.follows && s not in e.follows) => s in e.suggested
-- div,1
all u : User, sug: User, followed : User | sug in u.suggested implies (sug in followed.follows and sug not in u.follows)
-- div,1
all u,y: User |some z : User| y in u.suggested iff (( y not in u.follows) and (y in follows.z) and (z in follows.u))
-- div,3
all u1 : User| all u2 : User - u1| u1.follows not in u2.follows implies (u1.follows - u2.follows) in u1.suggested
-- div,1
all disj e: User, o: User, s: User | (o in e.follows && s in o.follows && s not in e.follows) => s in e.suggested
-- div,1
all u: User | all x: User | x in (u.follows.follows - u.follows) and x not in follows.u implies (x in u.suggested)
-- div,1
all u1,u2,u3 : User | u3 in u1.suggested implies (u3 in u2.follows and u2 in u1.follows and u3 not in u1.follows and u1 != u3)
-- div,1
all u1, u2 : User | u1 in follows.u2 implies u2.follows-u1 in suggested.u1
all u : User | u not in suggested.u
-- div,1
all x, y : User | x in y.suggested implies x not in y.follows and some z: User | z in x.follows and y in z.follows
-- div,1
all u1,u2,u3: User | u2 in u1.suggested implies u2 not in u1.follows and u3 in u1.follows and u2 in u3.follows and u2 != u1
-- div,1
all u1, u2, u3: User - Influencer| (u1 in suggested.u2) implies (u1 not in follows.u2 && u2 in follows.u3 && u3 in follows.u2)
-- div,1
all u,y: User | y in u.suggested iff (( y not in u.follows) and (some z : User | (y in z.follows) and (z in u.follows)))
-- div,1
all u1,u2,u3 : User-Influencer | (u3 not in u1.follows and u3 in u2.follows and u2 in u1.follows) implies u3 in u1.suggested
-- div,1
all u1,u2 : User | u1 in u2.suggested iff (some u3 : User | u1 in u3.follows && u3 in u2.follows) &&
(u1 != u2)
-- div,2
all u,y: User | y in u.suggested iff (( y not in follows.u) and (some z : User | (y in follows.z) and (z in follows.u)))
-- div,1
all u,y: User | y in suggested.u iff (( y not in follows.u) and (some z : User | (y in follows.z) and (z in follows.u)))
-- div,1
all u1,u2,u3 : User | u3 in u1.suggested && u1 != u3 implies u3 in u2.follows && u2 in u1.follows && u3 not in u1.follows
-- div,1
all x0,x1,x2:User | x2 in x1.follows and x1 in x0.follows and x2 not in x0.follows implies x2 in x0.suggested and x0!=x2
-- div,1
all x,z:User| z->x in suggested implies some y:User| x->y in follows and y->z in follows and x->z not in follows
-- div,4
all u1, u2 : User | u1 in suggested.u2 iff (some u3 : User | u1 in follows.u3 - follows.u2 and u3 in follows.u2 )
-- div,1
all user : User.suggested | user in User.follows.follows and user not in User.suggested and user.suggested not in user.follows
-- div,1
all u : User | (all s: u.suggested | (s not in u.follows) and (some f: u.follows - Influencer| s in f.follows ))
-- div,2
all u, v : User | u->v in suggested iff ( some z : User | z->v in follows and u->z in follows and u->v not in follows)
-- div,1
all u : User, sug: User, followed : User | sug in u.suggested implies (sug in followed.follows and followed in u.follows)
-- div,1
all u,s:User | u -> s in suggested iff (some f:User | u -> f in follows and f -> s in follows and u -> s not in follows)
-- div,1
all x, y: User | x -> y in suggested implies all z: User | z -> x in follows and z -> y in follows and not x -> y in follows
-- div,1
all x,y,z:User| z->x in suggested implies x->y in follows and y->z in follows and x->z not in follows and x!=y and x!=z
-- div,1
all u, v : User | u->v in suggested iff (some z : User | u->z in follows and z->v in follows and u->v not in follows)
-- div,1
all u : User | u not in u.suggested and all sugg : u.suggested | sugg not in u.suggested and sugg in u.follows.follows
-- div,1
all x, y: User | y -> x in suggested iff (all z: User | x -> z in follows and z -> y in follows and not x -> y in follows)
-- div,1
all s, u : User | s->u in suggested => (some f : User | u->f in follows and f->s in follows) and u->s not in follows
-- div,1
all u1,u2,u3:User | u1->u3 in suggested => (u1->u3 not in follows and u1!=u3) and u1->u2 in follows and u2->u3 in follows
-- div,1
all u1, u2, u3: User | u1 != u2 and u1 != u3 and u2 != u3 and u3 in u2.follows and u3 not in u1.follows => u3 in u1.suggested
-- div,1
all x, y: User | x -> y in suggested iff (all z: User | x -> z in follows and z -> y in follows and not x -> y in follows)
-- div,2
all x, y: User | x -> y in suggested iff x -> y not in follows and (all z: User | z -> x in follows and z -> y in follows)
-- div,1
all s, u : User |
((u->s not in follows) and
(some f : User | u->f in follows and f->s in follows)) =>
u->s in suggested
-- div,1
all x, y: User | x -> y in suggested iff all z: User | z -> x in follows and z -> y in follows and not x -> y in follows
-- div,2
all u1, u2, u3: User | u1 != u2 and u1 != u3 and u2 != u3 and u3 in u2.follows and u3 in u1.suggested => u2 not in u1.follows
-- div,1
all x,x1:User | x1 in x.suggested implies some x2:User | x2 in x.follows and x1 in x2.follows and x not in x1.follows
-- div,1
all u1 : User | all u2 : User | all u3 : User | u2 in u1.suggested implies u3 in u1.follows and u2 in u3.follows
-- div,1
all usr1,usr2 : User | usr1->usr2 in follows implies some usr3:User | usr2->usr3 in follows implies usr1->usr3 in suggested
-- div,4
all u1 : User | all u2 : User | all u3 : User |
u2 in u1.follows and u3 in u2.follows
implies u3 in u1.suggested
-- div,3
all u,s:User | u -> s in suggested iff ((some f:User | u -> f in follows and f -> s in follows) and u -> s not in follows)
-- div,1
all u1 : User | all u2 : User | all u3 : User | u3 in u1.suggested implies u2 in u1.follows and u3 in u2.follows
-- div,1
all u,x,y : User | u -> x in follows and x -> y in follows and u -> y not in follows and y -> y not in suggested implies u -> y in suggested
-- div,1
all x, y: User | x -> y in suggested iff (some z: User | x -> z in follows and z -> y in follows and not x -> y in follows)
-- div,1
all u: User, s: User, f: User | u->s in suggested and u->s not in follows implies (u->f in follows and f->s in follows)
-- div,1
all u, u1, u2 : User, us : u.suggested | us not in u.follows and u1 in u.follows and u2 in u1.follows and not u2 in u.follows
-- div,1
all x, y: User | x -> y in suggested iff not x -> y in follows and (all z: User | z -> x in follows and z -> y in follows)
-- div,3
all u : User | all u_f : u.follows | all others : follows.u_f | others in suggested.u and others not in u.follows
-- div,1
all x, y: User | x -> y in suggested iff (all z: User | x -> z in follows implies z -> y in follows) and not x -> y in follows
-- div,3
all u : User | all u_f : u.follows | all others : u_f.follows | others in u.suggested and others not in u.follows
-- div,1
all x,x1:User | x1 in x.suggested implies some x2:User | x2 in x1.follows and x1 in x2.follows and x not in x1.follows
-- div,1
all x, y: User | x -> y in suggested iff (all z: User | x -> z in follows implies z -> y in follows) implies not x -> y in follows
-- div,2
all u : User | all u_f : follows.u | all others : u_f.follows | others in u.suggested and others not in u.follows
-- div,1
all x, y: User | x -> y in suggested iff (all z: User | x -> z in follows and z -> y in follows) and not x -> y in follows
-- div,6
all x, y: User | x -> y in suggested iff (all z: User | z -> x in follows and z -> y in follows) and not x -> y in follows
-- div,4
all x, y: User | x -> y in suggested iff ((all z: User | x -> z in follows and z -> y in follows) implies not x -> y in follows)
-- div,1
all x, y: User | x -> y in suggested iff not x -> y in follows implies (all z: User | z -> x in follows and z -> y in follows)
-- div,1
all u : User | all u_f : u.follows | all others : follows.u_f | others in suggested.u => others not in u.follows
-- div,1
all x, y: User | x -> y in suggested iff ((all z: User | z -> x in follows and z -> y in follows) implies not x -> y in follows)
-- div,1
all u1, u2, u3 : User | u1 != u3 => ((u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows)
<=> (u1->u3 in suggested))
-- div,1
all x : User | all y : x.follows | (x in y.follows and x not in y.suggested) or (x not in y.follows and x in y.suggested)
-- div,1
all u : User, sugg : u.follows.follows, foll : u.follows | foll not in sugg && u not in u.suggested && sugg in u.suggested
-- div,1
all u : User, sugg : u.suggested | u not in sugg && sugg not in u.follows && sugg in u.follows.follows && sugg not in follows.u
-- div,1
all user: User | user not in user.suggested
all user: User | (user.follows.follows - user.follows) in user.suggested
-- div,1
all u: User | u.suggested in u.follows.follows => u.suggested not in u.follows
all u:User | u not in u.suggested
-- div,1
all u1,u2: User | (u1 in u2.suggested) implies ((u1 not in u2.follows and u2 not in u1.follows) and (u1 in u2.follows.follows)and (u1!=u2))
-- div,1
all u1, u2 : User | u2 in u1.suggested implies u1 != u2 and u2 in u1.follows.follows and u2 not in u1.follows and u1 not in u2.follows
-- div,2
all u : User | all sug : u.suggested | sug in u.follows.follows and sug not in u.follows and sug not in u.follows.suggested
-- div,3
all u1,u2:User | u2 in u1.suggested iff (all u3:User | u2 in u3.follows and u3 in u1.follows and u2 not in u1.follows)
-- div,1
all u1:User, u2:User, u3:User | u1 in follows.u2 and u3 in follows.u2 and u1 not in follows.3 implies u3 in suggested.u1
-- div,2
all x,x1:User | x1 in x.suggested implies some x2:User | x1 != x and x2 != x1 and x1 in x2.follows and x2 in x1.follows
-- div,1
all u1:User, u2:User, u3:User | (u1 in follows.u2 and u2 in follows.u3 and u1 not in follows.u3) implies (u3 in u1.suggested)
-- div,1
all u1:User, u2:User, u3:User | (u1 in follows.u2 and u2 in follows.u3 and u1 not in follows.u3) implies (u3 in suggested.u1)
-- div,1
all disj u1,u2: User | u2 in u1.follows.follows && u2 not in u1.follows => u1.suggested = ((u1.follows).(follows)) - u1.follows
-- div,1
all u1: User, u2: User, u3: User | u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows implies u3 in u1.suggested
-- div,1
all u1,u2: User | u2 in u1.suggested implies u2 not in u1.follows and (all u3: User | u3 in u1.follows and u2 in u3.follows)
-- div,1
all u1:User, u2:User, u3:User | (u1 in follows.u2 and u3 in follows.u2 and u1 not in follows.u3) implies (u3 in suggested.u1)
-- div,1
all u1,u2 : User | u1 in u2.suggested implies u2 not in u1.follows and (some u3 : User | u1 in u3.follows and u3 in u2.follows)
-- div,1
all u1,u2,u3:User | u3 in u1.suggested implies u3 in u2.follows and u2 in u1.follows and u3 not in u1.follows and u1 not in u3.follows
-- div,1
all x, y, z : univ | x->y in follows and y->z in follows and not x->z in follows implies x->z in suggested and not x->y in suggested
-- div,1
all user : User | user in User.suggested implies user in User.follows.follows and user not in user.suggested and user not in user.follows
-- div,2
all u1, u2, u3 : User |(u2 not in u1.follows and u3 in u1.follows and u2 in u3.follows and u1 not in follows.u2) implies u2 in u1.suggested
-- div,1
all u:User| u not in u.suggested

all u1,u2,u3:User| u3 in u1.suggested implies u2 in u1.follows and u3 in u1.follows
-- div,1
all usr1, usr2, usr3 : User
|	usr1->usr2 in follows
and usr2->usr3 in follows
and usr1->usr3 not in follows implies usr1->usr3 in suggested
-- div,1
all u1: User, u2: User, u3 : User | u2 in u1.suggested and u3 in u2.follows implies u3 in u1.follows and u2 not in u1.follows
-- div,2
all u1: User, u2: User, u3 : User | u2 in u1.suggested and u2 in u3.follows implies u3 in u1.follows and u2 not in u1.follows
-- div,3
all u1: User, u2: User, u3 : User | u2 in u1.suggested and u3 in u1.follows implies u2 in u3.follows and u2 not in u1.follows
-- div,1
all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u3 in suggested.u1)
all u : User | u not in suggested.u
-- div,1
all u: User, s: User | u->s in suggested implies (all f: User | u->f in follows and f->s in follows and u->s not in follows)
-- div,1
all u1, u2, u3 : User | u2 in u1.suggested implies (u2 not in u1.follows and u3 in u1.follows and u2 in u3.follows and u1 not in u1.suggested)
-- div,1
all u:User| u not in u.suggested

all u1,u2,u3:User| u3 in u1.suggested implies u2 in u1.follows and u3 not in u1.follows
-- div,1
all u1, u2, u3 : User | u3 in u1.suggested implies u2 in u1.follows and u3 not in u1.follows and u3 in u2.follows and u1 not in u1.suggested
-- div,1
all u,y : User | y in u.suggested iff (u != y and (y not in u.follows) and (some z : User | (z in y.follows) and (y in z.follows)))
-- div,1
all u1,u2,u3:User | u1!= u2 and u2 != u3 and u3 not in u1.follows and u2 in u1.follows and u3 in u2.follows implies u3 in u1.suggested
-- div,1
all u1,u3:User | u1->u3 in suggested iff (some u2:User | u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows)
-- div,2
all u1,u2,u3 : User | u3 in u1.suggested implies (u3 in u2.follows and u2 in u1.follows and u3 not in u1.follows and u1 != u3 and u2 != u3)
-- div,1
all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3) && (u3 not in follows.u1) && u1 != u2 && u2 != u3) implies (u3 in suggested.u1)
-- div,1
all x, z:User| z->x in suggested implies (some y:User| x->y in follows and y-> z in follows and x->z not in follows and x!=z)
-- div,1
all u: User, s: User | s->u in suggested implies (some f: User | u->f in follows and f->s in follows and u->s not in follows)
-- div,1
all u1 : User, u2 : User, u3 : User | u1 -> u3 in suggested implies u1 -> u3 not in follows and u1 -> u2 in follows and u2 -> u3 in follows
-- div,3
all u : User | all sugg : u.suggested | all ff : u.follows.follows | ff in sugg && u.follows not in sugg and u not in sugg
-- div,1
all u1, u2, u3 : User | u1!=u2 and u2!=u3 and u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows implies u3 in u1.suggested
-- div,1
all u1,u2,u3 : User | u3 not in u1.follows and u2 in u1.follows and u3 in u2.follows and u1 != u2 and u2 != u3 implies u3 in u1.suggested
-- div,1
all u : User | all u_followed : follows.u | all sugg : follows.u_followed | sugg not in follows.u => sugg in u.suggested
-- div,1
all u, s : User | u->s in suggested => u != s && u->s not in follows && all f : User | u->f in follows && f->s in follows
-- div,1
all u,x: User | ( some y : User | u->y in follows and y->x in follows and x->u not in follows and u !=x ) iff u->x in suggested
-- div,1
all x:User,t:User-x,k:User-t| k->x in suggested implies x->t in follows and t->k in follows and x->k not in follows
-- div,1
all s, u : User | u != s and u->s in suggested implies (all f: User | u->f in follows and f->s in follows and u->s not in follows)
-- div,1
all u1, u2, u3 : User | u3 in u1.suggested <=> u3 not in u1.follows and u1!=u2 and u2!=u3 and u2 in u1.follows and u2 in u3.follows
-- div,1
all u,x: User | ( some y : User | u->y in follows and x->y in follows and x->u not in follows and u!=x) iff u->x in suggested
-- div,1
all u1,u3:User | u1->u3 in suggested <=>  some u2:User | u1->u2 in follows and u2->u3 in follows and not u1->u3 in follows
-- div,1
all u: User | u in User.follows => u in User.suggested
all u: User | not (u in User.follows) => not (u in User.suggested)
-- div,1
all u1, u3: User | (some u2: User | u1->u2 in follows and u2->u3 in follows and not (u1->u3 in follows)) <=> u1->u3 in suggested
-- div,1
all s, u : User | u->s in suggested => (some f : User | u->f in follows and s->f in follows) and u->s not in follows and s != u
-- div,1
all s, u : User | s->u in suggested => (some f : User | u->f in follows and f->s in follows) and u->s not in follows and s != u
-- div,1
all x,z : User | (x->z in suggested and x!=z) iff
(some y : User | x->y in follows and y->z in follows and x->z not in follows)
-- div,1
all x: User | all f : x.follows.follows | f not in x.follows => f  in x.suggested
all x: User | x not in x.suggested
-- div,2
all u : User | all segui : u.follows| all s : User - u | s in u.suggested implies (s not in u.follows and s in segui.follows )
-- div,1
all x : User | (x.suggested = x.follows.follows) or some y : User | y in x.follows and x in y.follows implies y in x.suggested
-- div,1
all u1, u2, u3, u : User | all i : Influencer | (u2 not in u1.follows and u3 in u1.follows and u2 in u3.follows) implies u2 in u1.suggested
-- div,1
all s, u : User | (u != s and u->s in suggested) implies (all u1 : User | u->u1 in follows and u1->s in follows and u->s not in follows)
-- div,1
all u : User | (all s: u.suggested - Influencer| (s not in u.follows) and (some f: u.follows - Influencer| s in f.follows ))
-- div,2
all user1, user2, user3 : User | user3 in user1.suggested implies ((user3 not in user1.follows) and (user3 in user2.follows) and (user2 in user1.follows))
-- div,3
all user1, user2, user3: User | (user3 not in user1.follows and user3 in user2.follows and user2 in user1.follows) implies user3 in user1.suggested
-- div,2
all user1, user2, user3 : User | user3 in user1.suggested implies ((user3 not in user1.follows) and (user2 in user1.follows) and (user3 in user2.follows))
-- div,1
all user1, user2, user3 : User | (user1 in user2.follows and user3 in user1.follows and user3 not in user2.follows) implies user3 in user2.suggested
-- div,1
all user1, user2, user3: User | user3 in user2.follows and user2 in user1.follows and user3 not in user1.follows implies user3 in user1.suggested
-- div,1
all x : User | all y: User | all z: User | z in x.suggested => (z in y.follows and y in x.follows) and z not in x.follows
-- div,1
all user1, user2, user3: User | user3 in user1.suggested implies (user3 in user2.follows and user2 in user1.follows and user3 not in user1.follows)
-- div,1
all user1, user2, user3 : User | (user1 in user2.suggested) implies (user1 in user3.follows and user3 in user2.follows  and user1 not in user2.follows)
-- div,2
all u1, u2, u3 : User | (u1 -> u2 in follows and u2 -> u3 in follows and not u1 -> u3 in follows and u1 != u2 and u2 != u3) => u1 -> u3 in suggested
-- div,3
all u:User| u not in u.suggested
all u1,u2:User| (u2 in u1.follows.follows and u2 not in u1.follows) implies (u2 in u1.suggested)
-- div,1
no follows & iden
all u1 : User, u2 : u1.follows, u3 : u2.follows |  (u3 != u1 and u3 not in u1.follows) iff u3 in u1.suggested
-- div,1
all x : User | all y: User | all z: User | (z in x.suggested and z not in x.follows  )=> (z in y.follows and y in x.follows)
-- div,2
all u1: User, u3: User | (some u2: User | u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows ) implies u3 in u1.suggested
-- div,2
all disj u1,u2 :User | u1 in u2.suggested implies
(u1 not in u2.follows and (some u3:User |u3!=u2 and u3!=u1 and u3 in u1.suggested))
-- div,1
no suggested & iden
all u1 : User, u2 : u1.follows, u3 : u2.follows |  (u3 != u1 and u3 not in u1.follows) iff u1 in u3.suggested
-- div,1
all disj u1,u2 :User | u1 in u2.suggested implies
(u1 not in u2.follows and (some u3:User |u3!=u2 and u3!=u1 and u3 in u2.suggested))
-- div,1
all u, u2, u3 : User | u3 in u2.follows and u in u2.follows and u3 not in u.follows and u!=u2 and u!=u3 and u2!=u3 => u3 in u.suggested
-- div,1
some u1, u2, u3 : User | (u1 -> u2 in follows and u2 -> u3 in follows and not u1 -> u3 in follows and u1 != u2 and u2 != u3) <=> u1 -> u3 in suggested
-- div,1
all u : User | all s: u.follows | all y: s.follows | y not in u.follows and y in u.suggested and u!=y and s!=y and s!=u
-- div,1
all u1, u2 : User | u1 in suggested.u2 implies (some u3 : User | u1 in follows.u3 and u2 in follows.u3 and u1 not in follows.u2 and u2 != u3)
-- div,1
all user : User | user in User.suggested implies (user in User.follows.follows and user not in user.suggested and user.suggested not in user.follows)
-- div,2
all u1, u2 : User | u2 in u1.suggested implies (some u3 : User | u3 in u1.follows and u3 in u2.follows and u2 not in u1.follows and u1 != u2)
-- div,1
all u1,u2:User | u2 in u1.suggested iff (all u3:User | u2 not in u1.follows and u1!=u2 and u2 in u3.follows and u3 in u1.follows)
-- div,1
all user1, user2, user3 : User |
user1->user2 in follows and user2->user3 in follows and user1->user3 not in follows implies user1->user3 in suggested
-- div,1
all u1,u2:User | u2 in u1.suggested iff (all u3:User | u2 in u3.follows and u3 in u1.follows and u2 not in u1.follows and u1!=u2)
-- div,1
all u1, u2 : User | u2 in u1.suggested implies (some u3 : User | u3 in u2.follows and u1 in u3.follows and u2 not in u1.follows and u2 != u3)
-- div,1
all u1, u2 : User | u2 in suggested.u1 implies (some u3 : User | u3 in follows.u2 and u1 in follows.u3 and u2 not in follows.u1 and u2 != u3)
-- div,1
all u1, u2 : User | u1 in suggested.u2 implies (some u3 : User | u1 in follows.u3 and u2 in follows.u3 and u2 not in follows.u1 and u2 != u3)
-- div,1
all u1, u2 : User | u2 in suggested.u1 implies (some u3 : User | u3 in follows.u2 and u1 in follows.u3 and u1 not in follows.u2 and u2 != u3)
-- div,1
all u1,u2 : User | u2 in u1.suggested implies (u2 not in u1.follows and u1 != u2 and (all u3 : User | u3 in u2.follows and u1 in u3.follows))
-- div,3
all u : User  | (all s: u.suggested - Influencer - u | (s not in u.follows) and (some f: u.follows - Influencer| s in f.follows ))
-- div,1
all u1,u2 : User | u2 in u1.suggested implies (u2 not in u1.follows and u1 != u2 and (all u3 : User | u3 in u2.follows and u1 in follows.u3))
-- div,1
all disj u1,u2 : User | u1 in u2.suggested  implies ( u1 in u2.follows.follows and u1 not in u2.follows)  and u1 not in u1.follows and u2 not in u2.follows
-- div,1
not all u1, u2, u3 : User | (u1 -> u2 in follows and u2 -> u3 in follows and not u1 -> u3 in follows and u1 != u2 and u2 != u3) <=> u1 -> u3 in suggested
-- div,1
all u :User | all u2: User | (u in u2.suggested) implies (u!= u2 and u not in u2.follows and u in u2.follows.follows and u2 not in u.follows)
-- div,2
all u1,u2: User | u2 in u1.suggested implies u2 not in u1.follows and (all u3: User | u3 in u1.follows and u2 in u3.follows) and u2 != u1
-- div,1
all u1, u2 : User | u2 in u1.suggested and u1 != u2 implies (some u3 : User | u3 in u1.follows and u3 in u2.follows and u2 not in u1.follows)
-- div,1
all u1, u2 : User | u2 in u1.suggested and u1 != u2 implies (some u3 : User | u3 in u2.follows and u1 in u3.follows and u2 not in u1.follows)
-- div,1
all u1, u2 : User | u1 -> u2 in suggested implies (all u3 : User | u1 -> u3 in follows and u3 -> u2 in follows and u1 -> u2 not in follows and u1 != u2)
-- div,1
all u1: User, u2: User, u3 : User | u2 != u1 and u2 in u1.suggested and u2 in u3.follows implies u3 in u1.follows and u2 not in u1.follows
-- div,1
all u1: User, u2: User, u3: User | u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows implies u3 in u1.suggested and u1 != u3
-- div,1
all x,z:User| z->x in suggested implies some y:User| x->y in follows and y->z in follows and x->z not in follows and x!=y and x!=z
-- div,1
(all x : User | suggested.x in follows.follows.x) && (no x : User | suggested.x in follows.x) && (no x: User | x in suggested.x)
-- div,1
all u: User - Influencer| u.suggested in u.follows.follows => u.suggested not in u.follows
all i: Influencer| no i.suggested
-- div,1
all x, y: User | x -> y in suggested implies all z: User | z -> x in follows and z -> y in follows and x -> z in follows and not x -> y in follows
-- div,1
all s:User | some u:User-s | s in u.suggested iff some u1:User-s | u1 != u and s in u1.follows and u1 in u.follows
-- div,1
all u1, u2 : User | u1 -> u2 in suggested implies (some u3 : User | u1 -> u3 in follows and u1 -> u2 in follows and u3 -> u2 not in follows and u3 != u2)
-- div,1
all x, y: User | x -> y in suggested iff (all z: User | x -> z in follows and z -> x in follows and z -> y in follows and not x -> y in follows)
-- div,1
all u1, u2 : User | u1 -> u2 in suggested implies (some u3 : User | u3 -> u1 in follows and u3 -> u2 in follows and u1 -> u2 not in follows and u1 != u2)
-- div,1
all u1,u2,u3 : User | u3 in u1.suggested implies u3 in u2.follows && u2 in u1.follows && u3 not in u1.follows && u1 != u2 && u1 != u3 && u2 != u3
-- div,1
all s : User | (all u : User | u != s and u->s in suggested implies (all follower : User | follower->s in follows and u->s not in follows))
-- div,1
all u : User, sug: User, followed : User | sug in u.suggested implies (sug in followed.follows and followed in u.follows and sug not in u.follows)
-- div,2
all u1,u2 :User|  u1->u2 not in follows and some u3:User | u1->u3 in follows and u3->u2 in 		follows and u1 != u2  implies u1->u2 in suggested
-- div,1
all u: User, s: User, f: User | u->s in suggested and u->s not in follows implies (u->f in follows and f->s in follows and u->s not in follows)
-- div,1
all u : User | u not in u.follows + u.suggested
all x : User | all u : x.follows.follows - x.follows - x| u in x.suggested
-- div,1
all x : User | suggested.x not in follows.x
all x : User | suggested.x in follows.follows.x
all x : User | x not in x.suggested
-- div,1
all u1 : User | all u2 : User | all u3 : User |
(u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows)
implies u3 in u1.suggested
-- div,5
all u1 : User | all u2 : User | all u3 : User | u3 in u1.suggested implies u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows
-- div,1
all u1, u2 : User | (u1 != u2 and u1->u2 in suggested) iff (some u3 : User | u1->u3 in follows and u3->u2 in follows and u1->u2 not in follows)
-- div,1
all u1 : User | all u2 : User | all u3 : User | u2 in u1.suggested implies u2 not in u1.follows and u3 in u1.follows and u2 in u3.follows
-- div,1
all u1, u2, u3 : User -  Influencer | u3 in u1.suggested <=> u3 not in u1.follows and u1!=u2 and u2!=u3 and u2 in u1.follows and u3 in u2.follows
-- div,1
all x : User | x.suggested not in x.follows
all x : User | x.suggested in x.follows.follows
all x : User | x not in x.suggested
-- div,1
all u : User | u not in u.suggested and all sugg : u.suggested | sugg not in u.suggested and sugg in u.follows.follows and sugg not in u.follows
-- div,1
all u1, u2, u3 : User | u3 in u1.suggested => u2 in u1.follows and u3 in u2.follows and not u3 in u1.follows and u1 != u2 and u2 != u3 and u1 != u3
-- div,1
some u1, u2, u3 : User | (u2 in u1.follows and u3 in u2.follows and not u3 in u1.follows and u1 != u2 and u1 != u3 and u2 != u3) => u3 in u1.suggested
-- div,2
all u1, u2 : User | u2 in u1.follows implies u2 not in u1.suggested+u1
all u1, u2 : User | u2 in u1.suggested implies u2 in u1.follows.follows
-- div,1
all u: User - Influencer| u.suggested in u.follows.follows - u => u.suggested not in u.follows
all i: Influencer| no i.suggested
-- div,1
all u, i : User | i in u.suggested implies all o : User | o in u.follows and i in o.follows and i not in u.follows and i!=o and u!=i and u!=o
-- div,1
all user : User | all suggested : user.suggested | all following : user.follows | following != suggested and suggested in following.follows
-- div,1
all u : User - Influencer | (all s: u.suggested - Influencer| (s not in u.follows) and (some f: u.follows - Influencer| s in f.follows ))
-- div,1
all u1,u2,u3 : User | u3 in u1.suggested implies u2 in u1.follows and u3 in u2.follows
all u1,u2 : User | u2 in u1.suggested implies u1 != u2
-- div,1
all user1, user2, user3: User - Influencer | user3 in user1.suggested implies (user3 in user2.follows and user2 in user1.follows and user3 not in user1.follows)
-- div,1
all user1, user2, user3: User - Influencer | (user3 in user2.follows and user2 in user1.follows and user3 not in user1.follows) implies user3 in user1.suggested
-- div,1
all u1: User, u2: User, u3: User | u2 in u1.follows and u3 in u1.suggested and u3 in u2.follows implies u3 not in u1.follows and u1 not in Influencer
-- div,1
all disj x,y,z : User | x->y in follows and y->z in follows and x->z not in follows iff x->z in suggested
all u : User | u->u not in follows
-- div,1
all u1:User , u2:User-u1 , u3:User-(u1+u2) | u3->u1 in suggested implies u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows
-- div,1
all u : User | all s: u.follows | all y: s.follows | y not in u.follows and y in u.suggested and u!=s and u!=y and s!=u and s!=y
-- div,1
all u1: User, u2: User, u3: User | u2 in u1.follows and u3 in u1.suggested and u3 in u2.follows implies u3 not in u1.follows and u3 not in Influencer
-- div,1
all u1, u2, u3 : User | u2 in u1.suggested implies (u2 not in u1.follows and u3 in u1.follows and u2 in u3.follows and u1 not in u1.suggested and u2 not in Influencer)
-- div,3
all u1, u2, u3 : User |(u2 not in u1.follows and u3 in u1.follows and u2 in u3.follows and u1 not in u1.suggested and u2 not in Influencer) implies u2 in u1.suggested
-- div,2
all u1, u2 , u3 : User | u3 in u1.follows and u3 in follows.u2 and u1 not in u2.follows implies u2 in u1.suggested
all u : User | u not in u.suggested
-- div,1
all u : User | all s: u.follows | all y: s.follows | y not in u.follows implies y in u.suggested and u!=s and u!=y and s!=u and s!=y
-- div,3
all u1, u2 : User | u2 in suggested.u1 implies (some u3 : User | u3 in follows.u2 and u1 in follows.u3 and u1 not in follows.u2 and u2 != u3 and u1 != u2)
-- div,1
all u : User, us : u.suggested| all u1 : User | us not in u.follows and u1 in u.follows and us in u1.follows and not us in u.follows and us != u
-- div,1
all u1, u2, u3 : User | (u2 not in u1.follows and u3 in u1.follows and u2 in u3.follows) implies u2 in u1.suggested
all u : User | u not in u.suggested
-- div,1
all u1, u2 : User | u2 in u1.suggested implies (some u3 : User | u3 in u2.follows and u1 in u3.follows and u2 not in u1.follows and u2 != u3 and u1 != u2)
-- div,1
all u1, u2 : User | u2 in u1.suggested implies (some u3 : User | u3 in u2.follows and u1 in u3.follows and u1 not in u2.follows and u2 != u3 and u1 != u2)
-- div,1
all u:User| u not in u.suggested

all u1,u2,u3:User|u3 in u2.follows and u2 in u1.follows and u3 not in u1.follows implies u3 in u1.suggested
-- div,4
all s:User | some u:User-s | (s in u.suggested) iff (some u1:User-s | s in u1.follows and u1 in u.follows and s not in u.follows)
-- div,1
all user1, user2 : User | user1 in user2.suggested implies (user1 in user1.follows.follows and user1 not in user1.suggested and user1.suggested not in user1.follows)
-- div,1
all u1, u2, u3 : User | u3 in u1.suggested implies u2 in u1.follows and u3 not in u1.follows and u3 in u2.follows and u1 not in u1.suggested and u1 not in u1.follows
-- div,1
all u : User | all s: u.follows | some y: s.follows | y not in u.follows implies y in u.suggested and u!=s and u!=y and s!=u and s!=y
-- div,1
all u, s : User |	u->s in suggested =>
u->s not in follows
&& s not in Influencer
&& some f : User | u != s && u->f in follows && f->s in follows
-- div,1
all u1,u2 : User | u2 in u1.suggested implies (u1 != u2 and u2 not in u1.follows and u1 != u2 and (all u3 : User | u3 in u2.follows and u1 in u3.follows))
-- div,1
all u1, u3 : User | u1->u3 in suggested => (some u2:User | u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows and u3->u1 in follows)
-- div,1
all u1, u2 : User | u2 in u1.suggested and u1 != u2 implies (some u3 : User | u3 in u2.follows and u1 in u3.follows and u2 not in u1.follows and u2 != u3)
-- div,1
all u1, u2 : User | u2 in suggested.u1 and u1 != u2 implies (some u3 : User | u3 in follows.u2 and u1 in follows.u3 and u1 not in follows.u2 and u2 != u3)
-- div,2
all u1, u3 : User | u1->u3 in suggested => some u2:User | u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows and u3->u1 not in follows
-- div,5
all u : User | u not in u.follows + u.suggested
all x : User | all u : x.suggested | u in x.follows.follows and u not in x.follows + x
-- div,1
all u : User, us : u.suggested| all u1, u2 : User | us not in u.follows and u1 in u.follows and u2 in u1.follows and not u2 in u.follows and us != u
-- div,1
all u:User | u not in u.suggested
all i: Influencer, u: User |i not in u.suggested
all u: User| u.follows.follows in u.suggested
-- div,2
all u1,u2 : User | (u1 != u2 and u2 in u1.suggested) implies (u2 not in u1.follows and u1 != u2 and (all u3 : User | u3 in u2.follows and u1 in u3.follows))
-- div,1
all u,x,y : User | u -> x in follows and x -> y in follows and y->x not in follows and u != x and u != y and x != y and u -> y not in follows iff u -> y in suggested
-- div,1
all u, s : User |
s->u in suggested
=> u != s && u->s not in follows
&& some f : User |
s != f && u != f && u->f in follows && f->s in follows
-- div,1
all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3) && (u3 not in follows.u1)) implies (u3 in suggested.u1)
all u4 : User | u4 not in suggested.u4
-- div,2
all u: User - Influencer| u.suggested in u.follows.follows - Influencer => u.suggested not in u.follows
all i: Influencer| no i.suggested
-- div,1
all u1,u2 : User | u2 in u1.suggested implies u1 != u2
all u1,u2 : User | (u2 not in u1.follows and u2 in u1.follows.follows) implies (u2 in u1.suggested)
-- div,1
all u : User | u not in u.follows + u.suggested
all u : User | all u2 : u.follows.follows - u | u2 not in u.follows => u2 in u.suggested
-- div,1
all u : User, sug: User, followed : User | sug in u.suggested implies (sug in followed.follows and followed in u.follows and sug not in u.follows and u!=sug)
-- div,1
all u1, u2, u3 : User | all i : Influencer | (u2 not in u1.follows and u3 in u1.follows and u2 in u3.follows and i not in u1.suggested) implies u2 in u1.suggested
-- div,1
all u:User | u->u not in suggested
all u1, u2, u3: User | u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows => u1->u3 in suggested
-- div,1
all u1, u2, u3, u : User | all i : Influencer | (u2 not in u1.follows and u3 in u1.follows and u2 in u3.follows and i not in u.suggested) implies u2 in u1.suggested
-- div,2
all u1, u2, u3 : User | (u1 -> u2 in follows and u2 -> u3 in follows and not u1 -> u3 in follows and u1 != u2 and u2 != u3 and not u3 in Influencer) => u1 -> u3 in suggested
-- div,1
all s:User | some u:User-s | (s in u.suggested) iff (u != s and s not in u.follows and some u1:User | s in u1.follows and u1 in u.follows)
-- div,1
all u: User - Influencer| u.suggested in u.follows.follows - Influencer-u => u.suggested not in u.follows
all i: Influencer| no i.suggested
-- div,2
all u1, u2 : User | u1 in suggested.u2 implies (some u3 : User | u3 in follows.u1 and u3 in follows.u2 and u1 not in follows.u2 and u1 != u2 and u2 not in follows.u1)
-- div,1
all s:User | some u:User-s | (s in u.suggested) iff (some u1:User-s | u != s and s in u1.follows and u1 in u.follows and s not in u.follows)
-- div,1
all u1, u2 : User | u1 in suggested.u2 implies (some u3 : User | u3 in follows.u1 and u3 in follows.u2 and u1->u2 not in follows and u1 != u2 and u2->u1 not in follows)
-- div,1
all user1, user2, user3 : User | user3 in user1.suggested implies ((user3 not in user1.follows) and (user1 not in user3.follows) and (user3 in user2.follows) and (user2 in user1.follows))
-- div,2
all u1, u2 : User | u1 in suggested.u2 iff (some u3 : User | u1 in follows.u3 and u2 in follows.u3 and u1 not in follows.u2 and u1 != u2 and u2->u1 not in follows)
-- div,1
all s:User | some u:User-s | s in u.suggested iff some u1:User-s | u1 != u and s in u1.follows and u1 in u.follows and s not in u.follows
-- div,2
all user1, user2, user3 : User | ((user3 not in user1.follows) and (user1 not in user3.follows) and (user3 in user2.follows) and (user2 in user1.follows)) implies user3 in user1.suggested
-- div,1
all s:User | some u:User-s | (s in u.suggested) iff (u != s and some u1:User-s | s in u1.follows and u1 in u.follows and s not in u.follows)
-- div,1
all s:User | some u:User-s | (s in u.suggested) iff (u != s and s not in u.follows and some u1:User-s | s in u1.follows and u1 in u.follows)
-- div,1
all u1, u2 : User | u1 in suggested.u2 implies (some u3 : User | u3 in follows.u1 and u3->u2 in follows and u1->u2 not in follows and u1 != u2 and u2->u1 not in follows)
-- div,1
all user1, user2, user3: User | (user1 not in user1.suggested and user3 not in user1.follows and user3 in user2.follows and user2 in user1.follows) implies user3 in user1.suggested
-- div,2
all u: User - Influencer| u.suggested in u.follows.follows => u.suggested not in u.follows and u not in u.suggested
all i: Influencer| no i.suggested
-- div,2
all user: User | user not in user.suggested
all user1, user2: User | user2 not in user1.follows and user2 in user1.follows.follows implies user2 in user1.suggested
-- div,1
all user: User | user not in user.suggested
all user1, user2: User | user2 in user1.follows.follows and user2 not in user1.follows implies user2 in user1.suggested
-- div,1
all user : User | user not in user.suggested
all user1, user3 : User | ((user3 not in user1.follows) and (user3 in user1.follows.follows)) implies user3 in user1.suggested
-- div,2
all u1, u2 : User | u1->u2 in suggested implies (some u3 : User | u3->u1 in follows and u3->u2 in follows and u1->u2 not in follows and u1 != u2 and u2->u1 not in follows)
-- div,3
all u1, u2 : User | u1->u2 in suggested iff (some u3 : User | u3->u1 in follows and u3->u2 in follows and u1->u2 not in follows and u1 != u2 and u2->u1 not in follows)
-- div,3
all u1,u2 : User | (u1 != u2 and u2 in u1.suggested) implies (u2 not in u1.follows and u1 != u2 and (all u3 : User | u3 in u2.follows and u1 in u3.follows and u3 != u2))
-- div,1
all u1, u2 : User | u1->u2 in suggested iff (some u3 : User | u1->u3 in follows and u3->u2 in follows and u1->u2 not in follows and u1 != u2 and u2->u1 not in follows)
-- div,2
all x: User | all f : x.follows.follows | f not in x.follows => f in x.suggested


all x: User | x not in x.suggested and x.follows not in x.suggested
-- div,3
all u : User | u not in u.follows + u.suggested
all u : User + Influencer | all u2 : u.follows.follows - u | u2 not in u.follows => u2 in u.suggested
-- div,1
all user1, user2: User | (user2 in user1.suggested) implies (user2 in user1.follows.follows and user2 not in user1.follows and user1 not in user2.follows and user1 not in user1.suggested)
-- div,1
all u1, u2 : User | (u2 not in u1.follows and u2 in u1.^follows and u1 != u2) implies u2 in u1.suggested
all u1 , u2 : User | u2 in Influencer implies u2 not in u1.suggested
-- div,1
all u: User | u.suggested in u.follows.follows => u.suggested not in u.follows
all u:User | u not in u.suggested

all i: Influencer | no i.suggested
-- div,1
all user : User | all suggested : user.suggested | (suggested != user and suggested not in user.follows and all following : user.follows | suggested in following.follows)
-- div,1
all user : User | some suggested : user.suggested | (suggested != user and suggested not in user.follows and some following : user.follows | suggested in following.follows)
-- div,1
all u, s : User |
u->s in suggested
=> u != s && u->s not in follows && s->u not in follows
&& some f : User |
s != f && u != f && u->f in follows && f->s in follows
-- div,1
all u: User | u.suggested in u.follows.follows => u.suggested not in u.follows
all u:User | u not in u.suggested

all i: Influencer | none in i.suggested
-- div,1
all u1, u3 : User | u1->u3 in suggested => some u2:User | u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows and u3->u1 not in follows and u3->u1 not in suggested
-- div,1
all user : User | user not in user.suggested
all user1, user3 : User+Influencer | ((user3 not in user1.follows) and (user3 in user1.follows.follows)) implies user3 in user1.suggested
-- div,1
all u1,u2 : User | (u1 != u2 and u2 in u1.suggested) implies (u2 not in u1.follows and u1 != u2 and (all u3 : User | u3 in u2.follows and u1 in u3.follows and u3 != u2 and u3 != u1))
-- div,1
all user: User | user not in user.suggested
all user1, user2: User | user2 in (user1.follows.follows - Influencer) and user2 not in user1.follows implies user2 in user1.suggested
-- div,1
all u1, u2 : User | u2 in u1.suggested implies u2 not in u1.follows
all u1, u2 , u3 : User | u3 in u1.follows and u3 in follows.u2 and u1 not in u2.follows implies u2 in u1.suggested
-- div,1
all u : User | u not in u.follows + u.suggested and no u.suggested & u.follows
all x : User | all u : x.follows.follows - x.follows - x| u in x.suggested
-- div,1
all s, u : User | ((u->s not in follows) and
(some f : User | u->f in follows and f->s in follows))
=> (u->s in suggested)
all s, u : User | u->s in suggested => u != s
-- div,1
all user1, user2: User - Influencer | (user2 in user1.suggested) implies (user2 in user1.follows.follows and user2 not in user1.follows and user1 not in user2.follows and user1 not in user1.suggested)
-- div,1
all u : User |
all u2 : User |
(u2 in u.follows.follows && u2 != u && u2 not in u.follows) => u2 in u.suggested
all u1, u2 : User | u1 != u2 => u1 not in u2.suggested
-- div,1
all u: User - Influencer| u.suggested in u.follows.follows => u.suggested not in u.follows
all u:User | u not in u.suggested
all i: Influencer| no i.suggested
-- div,1
all u: User | u.suggested in u.follows.follows => u.suggested not in u.follows
all u:User | u not in u.suggested
all i: Influencer, u: User| i not in u.suggested
-- div,1
all disj u,uu: User| u in uu.follows.follows and u not in uu.follows => u in uu.suggested
all u: User | u.suggested in u.follows.follows and u.suggested not in u.follows
-- div,2
all disj u,uu: User| u in uu.follows.follows and u not in uu.follows => u in uu.suggested
all u: User | u.suggested in u.follows.follows => u.suggested not in u.follows
-- div,1
all user : User | user not in user.suggested
all user1, user2, user3 : User | ((user3 not in user1.follows) and (user3 in user2.follows) and (user2 in user1.follows)) implies user3 in user1.suggested
-- div,2
all u : User | u not in u.follows + u.suggested and no u.suggested & u.follows
all x : User | all u : x.suggested | u in x.follows.follows and u not in x.follows + x
-- div,1
all user : User | user not in user.suggested
all user1, user2, user3 : User | user3 in user1.suggested implies ((user3 not in user1.follows) and (user3 in user2.follows) and (user2 in user1.follows))
-- div,2
all user : User | some suggested_user : user.suggested | (suggested_user != user and suggested_user not in user.follows and some following : user.follows | suggested_user in following.follows)
-- div,1
all i: Influencer, u: User |i not in u.suggested
all u: User | u in User.follows => u in User.suggested
all u: User | not (u in User.follows) => not (u in User.suggested)
-- div,1
all u,u1 : User | u in u1.follows.follows && u not in u1.follows implies u in u1.suggested
all i,i1 : Influencer | i in i1.follows.follows && i not in i1.follows implies i in i1.suggested
-- div,1
all user1, user2 : User |
user1->user2 in follows and some user3:User | user2->user3 in follows and user1->user3 not in follows and user3 != user1 and user1 != user2 implies user1->user3 in suggested
-- div,1
all user1, user2 : User | user2 in user1.follows implies user2 not in user1.suggested
all user1, user2, user3 : User | ((user3 in user2.follows) and (user2 in user1.follows)) implies user3 in user1.suggested
-- div,1
all x,x1:User | x1 in x.suggested implies some x2:User | x1 != x and x2 != x1 and x1 in x2.follows and x2 in x1.follows
all x,x1:User | x in x1.suggested implies x not in x1.follows
-- div,1
all u: User - Influencer| u.suggested in u.follows.follows => u.suggested not in u.follows
all u:User | u not in u.suggested
all i: Influencer, u: User| i not in u.suggested
-- div,1
all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u3 in suggested.u1)
all u : User | u not in suggested.u
all u1, u2 : User | u1 in follows.u2 implies u2 not in suggested.u1
-- div,2
all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u3 in suggested.u1)
all u : User | u not in suggested.u
all u4, u5 : User | (u4 in follows.u5) implies (u4 not in suggested.u5)
-- div,5
all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u1 in suggested.u3)

all u : User | u not in suggested.u
all u1, u3 : User | (u1 in follows.u3) implies (u3 not in suggested.u1)
-- div,1
all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u1 in suggested.u3)

all u : User | u not in suggested.u
all u1, u3 : User | (u1 in follows.u3) implies (u1 not in suggested.u3)
-- div,1
all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u1 in suggested.u3)

all u : User | u not in suggested.u
all u4, u5 : User | (u4 in follows.u5) implies u5 not in suggested.u4
-- div,3
all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u3 in suggested.u1)
all u : User | u not in suggested.u
all u1, u2 : User | (u1 in follows.u2) implies (u1 not in suggested.u2)
-- div,2
all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u3 in suggested.u1)
all u : User | u not in suggested.u
all u4, u5 : User | (u4 in follows.u5) implies (u5 not in suggested.u4)
-- div,3
all user : User + Influencer | (user not in user.suggested) and (user.follows not in user.suggested)
all user1, user2 : User + Influencer | user2 in user1.suggested implies (user2 in user1.follows.follows)
-- div,1
all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u1 in suggested.u3)
all u : User | u not in suggested.u
all u1, u2 : User | (u1 in follows.u2) implies (u2 not in suggested.u1)
-- div,1
all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u1 in suggested.u3)
all u : User | u not in suggested.u
all u4, u5 : User | (u4 in follows.u5) implies (u4 not in suggested.u5)
-- div,1
all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u1 in suggested.u3)
all u : User | u not in suggested.u
all u1, u2 : User | (u1 in follows.u2) implies (u1 not in suggested.u2)
-- div,2
all u:User | u not in u.suggested
all i: Influencer, u: User |i not in u.suggested
all i: Influencer| none in  i.suggested
all u: User| u.follows.follows in u.suggested
-- div,1
all u1, u2 : User | u2 in u1.follows implies u2 not in u1.suggested+u1
all u1, u2 : User | u2 in u1.follows implies u2!=u1
all u1, u2 : User | u2 in u1.suggested implies u2 in u1.follows.follows
-- div,1
all u:User| u not in u.suggested
all u1,u2:User| u2 in u1.follows implies u2 not in u1.suggested
all u1,u2:User| (u2 in u1.follows.follows and u2 not in u1.follows) implies (u2 in u1.suggested)
-- div,1
all u:User| u not in u.suggested
all u1,u2:User| u2 in u1.follows implies u2 not in u2.suggested
all u1,u2:User| (u2 in u1.follows.follows and u2 not in u1.follows) implies (u2 in u1.suggested)
-- div,1
all u1, u2 : User | u2 in u1.follows implies u2 not in u1.suggested+u1
all u1, u2 : User | u2 in u1.suggested implies u2!=u1
all u1, u2 : User | u2 in u1.suggested implies u2 in u1.follows.follows
-- div,1
all user, suggest : univ | user in User and suggest in User and user->suggest in suggested implies some followed : univ | followed->suggest in follows and user->followed in follows and not user->suggest in suggested
-- div,1
all disj u,uu: User-Influencer| u in uu.follows.follows and u not in uu.follows => u in uu.suggested


all u:User | u not in u.suggested
all i: Influencer, u: User |i not in u.suggested
-- div,1
all x: User | all f : x.follows.follows | (f not in x.follows ) => f in x.suggested
all x: User | all f : x.suggested | f in x.follows.follows
all x: User | x not in x.suggested
-- div,1
all u1, u2 : User | (u2 not in u1.follows and u2 in u1.^follows and u1 != u2) implies u2 in u1.suggested
all u1 , u2 : User | u2 in Influencer implies u2 not in u1.suggested
all u1 : User | u1 not in u1.suggested
-- div,1
all u1, u2, u3 : User | (u2 not in u1.follows and u3 in u1.follows and u2 in u3.follows) implies u2 in u1.suggested
all u : User | u not in u.suggested
all u : User | all i : Influencer | i not in u.suggested
-- div,2
(all u1 : User | all u2 : User | all u3 : User |
(u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows)
implies u3 in u1.suggested)
or
all u1 : User | all inf : Influencer | inf in u1.suggested
-- div,1
all u1, u2 , u3 : User | u3 in u1.follows and u3 in follows.u2 and u1 not in u2.follows implies u2 in u1.suggested
all u : User | u not in u.suggested
all u1 , u2 : User | u2 in u1.follows implies u2 not in u1.suggested
-- div,1
all user : User | user not in user.suggested
all user1, user2 : User | user2 in user1.follows implies user2 not in user1.suggested
all user1, user3 : User | (user3 in user1.follows.follows) implies user3 in user1.suggested
-- div,2
all user : User | user not in user.suggested
all user1, user2, user3 : User | user1 != user2 and user2 != user3 and ((user3 not in user1.follows) and (user3 in user2.follows) and (user2 in user1.follows)) implies user3 in user1.suggested
-- div,2
all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u1 in suggested.u3)

all u : User | u not in suggested.u
all u4, u5 : User | (u4 in follows.u5) implies (u5 not in suggested.u4 && u4 not in suggested.u4)
-- div,2
all u1, u2, u3 : User | ((u1 in follows.u2) && (u2 in follows.u3)) implies (u1 in suggested.u3)
all u : User | u not in suggested.u
all u4, u5 : User | (u4 in follows.u5) implies (u4 not in suggested.u5 && u5 not in suggested.u4)
-- div,1
all disj u,uu: User-Influencer| u in uu.follows.follows and u not in uu.follows and u not in Influencer => u in uu.suggested


all u:User | u not in u.suggested
all i: Influencer, u: User |i not in u.suggested
-- div,1
all i: Influencer, u: User |i not in u.suggested
all u: User | u in User.follows  => u in User.suggested
all u: User | not (u in User.follows) => not (u in User.suggested)
all u: User | u not in u.suggested
-- div,1
all user : User | user not in user.suggested
all user1, user2, user3 : User | user3 in user1.suggested implies ((user1 != user2) and (user2 != user3) and (user1 != user3) and (user3 not in user1.follows) and (user3 in user2.follows) and (user2 in user1.follows))
-- div,1
all u: User - Influencer| u.suggested in u.follows.follows => u.suggested not in u.follows
all u:User | u not in u.suggested
all i: Influencer| no i.suggested
all i: Influencer, u: User| i not in u.suggested
-- div,1
all user : User | user not in user.suggested
all user1, user2 : User | user2 in user1.suggested implies user2 not in user1.follows
all user1, user2, user3 : User | ((user3 in user2.follows) and (user2 in user1.follows)) implies user3 in user1.suggested
-- div,2
all user : User | user not in user.suggested
all user1, user2 : User | user2 in user1.follows implies user2 not in user1.suggested
all user1, user2, user3 : User | user3 in user1.suggested implies ((user3 in user2.follows) and (user2 in user1.follows))
-- div,1
all user : User | user not in user.suggested
all user1, user2 : User | user2 in user1.suggested implies user2 not in user1.follows
all user1, user2, user3 : User | user3 in user1.suggested implies ((user3 in user2.follows) and (user2 in user1.follows))
-- div,1
all user : User | user not in user.suggested
all user1, user2 : User | user2 in user1.follows implies user2 not in user1.suggested
all user1, user2, user3 : User | ((user3 in user2.follows) and (user2 in user1.follows)) implies user3 in user1.suggested
-- div,3
all i: Influencer, u: User |i not in u.suggested
all u: User | u in User.follows  => u in User.suggested
all u: User | not (u in User.follows) => not (u in User.suggested)
all u: User | u not in u.suggested and u.follows not in u.suggested
-- div,1
all usr1, usr2, usr3 : User
|	usr1->usr2 in follows
and usr2->usr3 in follows
and usr1->usr3 not in follows implies usr1->usr3 in suggested

all usr1, usr2, usr3 : User
|	usr1->usr2 in follows
and usr2->usr3 in follows
and usr1->usr3 in follows implies  usr1->usr3 not in suggested
-- div,1
all user : User | user not in user.suggested
all user1, user2 : User + Influencer | (user2 in user1.follows) implies user2 not in user1.suggested
all user1, user2, user3 : User + Influencer | user3 in user1.suggested implies ((user3 in user2.follows) and (user2 in user1.follows))
-- div,1
all user : User | user not in user.suggested
all user1, user2 : User | user2 in user1.suggested implies user2 not in user1.follows
all user1, user2, user3 : User | ((user3 not in user1.follows) and (user3 in user2.follows) and (user2 in user1.follows)) implies user3 in user1.suggested
-- div,1
all user : User | user not in user.suggested
all user1, user2 : User | (user2 in user1.follows and user1 in user2.follows) implies user2 not in user1.suggested
all user1, user2, user3 : User | user3 in user1.suggested implies ((user3 in user2.follows) and (user2 in user1.follows))
-- div,1
all u:User| u not in u.suggested
all u1,u2:User| u2 in u1.follows implies u2 not in u1.suggested
all u1,u2:User| u2 in u1.suggested implies u2 not in Influencer
all u1,u2:User| (u2 in u1.follows.follows and u2 not in u1.follows) implies (u2 in u1.suggested)
-- div,1
all user : User + Influencer| user not in user.suggested
all user1, user2 : User + Influencer | (user2 in user1.follows) implies user2 not in user1.suggested
all user1, user2, user3 : User + Influencer | user3 in user1.suggested implies ((user3 in user2.follows) and (user2 in user1.follows))
-- div,1
all user : User + Influencer| user not in user.suggested
all user1, user2 : User + Influencer | (user2 in user1.follows) implies user2 not in user1.suggested
all user1, user2, user3 : User + Influencer | ((user2 in user1.follows) and (user3 in user2.follows)) implies user3 not in user1.suggested
-- div,1
all u1, u2 , u3 : User | u3 in u1.follows and u3 in follows.u2 and u1 not in u2.follows implies u2 in u1.suggested
all u : User | u not in u.suggested
all u1 , u2 : User | u2 in u1.follows implies u2 not in u1.suggested
all u : User | #(u.follows)=0 implies #(u.suggested) =0
-- div,1
all u1, u2 , u3 : User | u3 in u1.follows and u3 in follows.u2 and u1 not in follows.u2 implies u2 in u1.suggested
all u : User | u not in u.suggested
all u1 , u2 : User | u2 in u1.follows implies u2 not in u1.suggested
all u : User | #(u.follows)=0 implies #(u.suggested) =0
-- div,1
all u1, u2 : User | (u2 not in u1.follows and u2 in u1.^follows and u1 != u2) implies u2 in u1.suggested
all u1 , u2 : User | u2 in Influencer implies u2 not in u1.suggested
all u1 : User | u1 not in u1.suggested
all u1, u2 : User | u2 not in u1.^follows implies u2 not in u1.suggested
-- div,1
all user1, user2, user3 : User |
user1->user2 in follows and user2->user3 in follows and user1->user3 not in follows implies user1->user3 in suggested



all user1, user2, user3 : User |
user1->user2 in follows and user2->user3 in follows and user1->user3 in follows implies user1->user3 not in suggested
-- div,1
all u1, u2, u3 : User | (u2 not in u1.follows and u3 in u1.follows and u2 in u3.follows) implies u2 in u1.suggested
all u : User | u not in u.suggested
all u : User | all i : Influencer | i not in u.suggested
all u1, u2 : User | u1 not in u2.^follows implies u1 not in u2.suggested
-- div,2
all u:User| u not in u.suggested
all u1,u2:User| u2 in u1.follows implies u2 not in u1.suggested
all u1,u2:User| u2 in u1.suggested implies u2 not in Influencer
all i:Influencer | no i.suggested
all u1,u2:User| (u2 in u1.follows.follows and u2 not in u1.follows) implies (u2 in u1.suggested)
-- div,1
all user1, user2 : User |
user1->user2 in follows and some user3:User | user2->user3 in follows and user1->user3 not in follows implies user1->user3 in suggested



all user1, user2 : User |
user1->user2 in follows and some user3:User | user2->user3 in follows and user1->user3 in follows implies user1->user3 not in suggested
-- div,1
all u1, u2 , u3 : User | u3 in u1.follows and u3 in follows.u2 and u1 not in follows.u2 implies u2 in u1.suggested
all u : User | u not in u.suggested
all u1 , u2 : User | u2 in u1.follows implies u2 not in u1.suggested
all u : User | #(u.follows)=0 implies #(u.suggested) =0
all u : User | all i : Influencer | i not in u.suggested
-- div,1
all user1, user2 : User |
user1->user2 in follows and some user3:User | user2->user3 in follows and user1->user3 not in follows and user3 != user1 and user1 != user2 implies user1->user3 in suggested



all user1, user2 : User |
user1->user2 in follows and some user3:User | user2->user3 in follows and user1->user3 in follows implies user1->user3 not in suggested
-- div,1
all u1, u2 , u3 : User | u1 not in u3.follows and u3 in u1.follows and u3 in follows.u2 and u1 not in follows.u2 implies u2 in u1.suggested
all u : User | u not in u.suggested
all u1 , u2 : User | u2 in u1.follows implies u2 not in u1.suggested
all u : User | #(u.follows)=0 implies #(u.suggested) =0
all u : User | all i : Influencer | i not in u.suggested
-- div,1
