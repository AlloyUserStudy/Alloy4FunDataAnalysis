suggested - follows
-- div,1
all u,s : User | s in ^u.follows
-- div,1
all u,s : User | s in ^(u.follows)
-- div,1
User.suggested - User.follows
-- div,1
all u: User | u.follows.u - u.follows
-- div,1
User.suggested is User.follows.follows
-- div,1
all u : User | suggested = (u.follows)
-- div,1
all u : User | u.suggested - u.follows
-- div,1
all u:User |all t:User | u in suggested
-- div,2
User.suggested is User.follows.suggested
-- div,1
all u : User | u.follows.follows & u.follows
-- div,1
all u : User | suggested = (u.follows).follows
-- div,1
all x : follows.follows | x in suggested
-- div,1
all u: User | follows-u.follows.u in suggested.u
-- div,1
all u: User | not (u.follows.follows & u.follows)
-- div,1
all u:User | all t:User | u in suggested and u & t
-- div,1
all u: User | suggested in u.follows.u - u.follows
-- div,1
all x,y: User | x.suggested in x.follows->y.follows
-- div,1
all u,u1,u2:User | u.suggested implies u1.follows.u2
-- div,1
all u: User | suggested in u.follows.User - u.follows
-- div,1
all u:User | suggested = u.follows.follows - u.follows
-- div,1
all u:User | suggested in u.follows.follows - u.follows
-- div,1
all x,y: User | x.suggested in x->y.follows - x.follows
-- div,1
all s: suggested | s in User.follows.User - User.follows
-- div,1
all x : follows.follows | x in suggested & x not in follows
-- div,1
all x : User | all y : User | x.follows.follows - x.follows
-- div,1
all u: User | suggested.u in follows.follows.u and follows-u
-- div,1
all s: suggested | s implies User.follows.User - User.follows
-- div,1
all u: User | u.follows.follows in u.suggested and u.~follows
-- div,1
all u : User | u.suggested in ((follows.u).u - u.follows - u)
-- div,1
all u : User | (u.follows).follows - (u.follows) in suggested
-- div,1
all u,u1,u2:User | u.suggested implies u.follows in follows.u2
-- div,1
all u:User | u.suggested 0 (u.follows.follows - u.follows) - u
-- div,1
all x : User | x.suggested & x.follows.follows - x.follows - x
-- div,1
all u : User | suggested = (u.follows.follows - u.follows - u)
-- div,1
all u:User | u.suggested not in u.follows and u.follows.follows
-- div,1
all u,y : User | u.suggested in u.follows.y.follows - u.follows
-- div,2
all u : User | u.suggested = u.follows.follows not in u.follows
-- div,1
suggested - (User->User) - (User->User.follows.follows)
-- div,2
all u : User | suggested = u -> (u.follows).follows - u.follows
-- div,1
all u : User | ((u.follows).follows - (u.follows)) in suggested
-- div,1
all x,y: User | x.suggested in x.follows->y.follows - x.follows
-- div,1
all u: User| u.suggested in (u.follows.follows not in u.follows)
-- div,1
all u : User | u.suggested in u.follows.User.follows - u.follows
-- div,1
all u: User | u.suggested in u.follows.follows - u.follows & iden
-- div,1
all u : User | u.suggested iff u.follows.follows not in u.follows
-- div,1
all u: User | u.suggested in u.follows.follows - u.follows - iden
-- div,1
all u: User | u.suggested in (u.follows.follows and not u.follows)
-- div,1
all u:User | all t:User | u in suggested and u.follows & t.follows
-- div,1
all u1: User, u2: User | u2 in u1.suggested and u1.follows.follows
-- div,1
all u: User | u.follows.follows - u.follows - u implies u.suggested
-- div,1
all u: User | (u.follows.follows - (u.follows && u)) in u.suggested
-- div,1
all u: User | (u.follows.follows - u.follows) - iden in u.suggested
-- div,1
all u : User | u & suggested in (u.follows.follows - u.follows - u)
-- div,1
all u: User | suggested.u in follows.follows.u and u not in follows
-- div,1
all u: User | (u.follows.follows - u.follows - iden) in u.suggested
-- div,1
all x : User | suggested.x in ( follows.follows.x and not follows.x)
-- div,1
all u: User | (u.follows.follows - (u.follows and u)) in u.suggested
-- div,1
all u1: User, u2: User | u2 in (u1.suggested and u1.follows.follows)
-- div,1
all u : User | u.suggested in u.follows.follows - (u.follows + iden)
-- div,1
all x : User | (suggested not in x.follows) && (x not in x.suggested)
-- div,2
all u : User | u.suggested implies u.follows.follows not in u.follows
-- div,1
all u: User | suggested.u in (follows.follows.u and u not in follows)
-- div,1
all u : User | (u.follows.follows - u.follows - u) implies u.suggested
-- div,1
all u : User | u.suggested  implies (u.follows.follows - u.follows - u)
-- div,1
all u: User | u.follows.follows - u.follows - u implies some u.suggested
-- div,1
all u : User | u.follows.follows - u not in u.follows implies u.suggested
-- div,1
all u : User | (u.follows.follows - u.follows - u) implies one u.suggested
-- div,1
all user : User | user.suggested in (user.follows.follows != user.follows)
-- div,1
all u: User | u.suggested in u.follows.follows&u.suggested not in u.follows
-- div,1
all u : User | (u.follows.follows - u.follows - u) implies some u.suggested
-- div,1
all u : User | (u -> ((u.follows).follows - (u.follows + u))) iden suggested
-- div,1
all u: User | u.suggested = (u.follows.follows&u.suggested not in u.follows)
-- div,1
all u:User | some f:User-u | u.suggested = f in u.follows.follows - u.follows
-- div,1
all u: User | u.suggested in (u.follows.follows&u.suggested not in u.follows)
-- div,1
all x : User | all y : User | y in x.suggested implies x.suggested - x.follows
-- div,1
all u: User | u.suggested = (u.follows.follows & u.suggested not in u.follows)
-- div,1
all u: User | u.suggested in (u.follows.follows + u.suggested not in u.follows)
-- div,1
all u: User | (u.suggested in u.follows.follows)&(u.suggested not in u.follows)
-- div,1
all u : User | u.suggested in ((u.follows).follows - u.follows - follows-u - u)
-- div,1
all u:User | no (u.follows and u.suggested) and u.suggested in u.follows.follows
-- div,2
all x : User | all y : User | (y in x.suggested) implies x.suggested - x.follows
-- div,1
all a,b : User | a in b.follows.follows && a not in b.follows -> a in b.suggested
-- div,1
all x : User | x.suggested implies (x in x.follows.follows and x not in x.follows)
-- div,1
all x : User | (x.suggested in x.follows.follows) & (x.suggested not in x.follows)
-- div,1
all x : User | (x.suggested in x.follows.follows) && no (x.suggested in x.follows)
-- div,1
all u1,u2: User | u2 in u1.suggested = (u2 in u1.follows.follows - u1.follows - u1)
-- div,1
all u : User, sugg : u.suggested | ( u.follows.follows - u.follows - iden ) in sugg
-- div,1
all u1 : User | some u1.suggested implies some u1.follows.follows not in u1.follows
-- div,1
all u1,u2 : User | u1 in follows.u2 && follows.u2 not in u1.follows in u1.suggested
-- div,1
all u: User | u.suggested implies (u.follows.follows + u.suggested not in u.follows)
-- div,1
all u:User, uf:follows, us:suggested | u in us.suggested implies u not in uf.follows
-- div,1
all u1,u2 : User | u1 in follows.u2 && (follows.u2 not in u1.follows) in u1.suggested
-- div,2
all u: User, u11: User | all u1: u.follows | u -> u1 in suggested not in u.follows - u
-- div,1
all u:User, uf:follows, us:suggested | u in us.suggested implies (u not in uf.follows)
-- div,1
all u : User, cand : u.follows.follows | cand not in u.follows => cand int u.suggested
-- div,1
all u: User | (u.follows.follows - u.follows) in u.suggested and not (u.suggested & u)
-- div,1
all u: User | u.suggested in (u.follows.follows + (u.follows.follows not in u.follows))
-- div,1
all disj u1, u2, u3 : User | u2 in u1.follows and u3 in u2.follows = u3 in u1.suggested
-- div,1
all u,s : User| s in u.suggested and u not in follows.s and some follows.u in follows.s
-- div,1
all u: User, u11: User | all u1: u.follows | u -> u11 in suggested not in u.follows - u
-- div,1
all x : User | all y : User | (x.follows.follows - y.follows) implies y not in x.follows
-- div,1
all disj u1, u2, u3 : User | u2 in u1.follows and u3 in u2.follows = (u3 in u1.suggested)
-- div,1
all u: User | (u.follows.follows - u.follows) in u.suggested and not (u.suggested & iden)
-- div,1
all u1,u2 : User | u1 in u2.suggested = (u1 in ( u2.follows.follows - u2.follows) and u1!=u2)
-- div,1
all u: User | u.suggested implies (u.follows.follows and (u.follows.follows not in u.follows))
-- div,1
all x1, x2 : User | x2 & x1.suggested implies x2 & x1.follows.follows and x2 not in x1.follows
-- div,2
all u1,u2:User | u1->u2 and u1 != u2 some u3:User | u2->u3 and u2 != u3 => u1->u3 in suggested
-- div,1
all u1,u2 : User | (u1 in u2.suggested) = (u1 in ( u2.follows.follows - u2.follows) and u1!=u2)
-- div,1
all x1, x2 : User | x2 in x1.suggested implies x2 & x1.follows.follows and x2 not in x1.follows
-- div,1
all u1,u2,u3 : User | u1 in u2.follows and u2 in u3.follows and u1!=u2!=u3 => u1 in u3.suggested
-- div,1
all u : User | all u2 : u.follows.follows | u2 not in u.follows && u2 not u => u2 in u.suggested
-- div,1
all u1,u2:User | u1->u2 and u1 != u2 and some u3:User | u2->u3 and u2 != u3 => u1->u3 in suggested
-- div,1
all disj u1,u2 : User | u1 in u2.suggested implies u1 in ( (not u2.follows) & (u2.follows.follows))
-- div,1
all z: User | all x: z.suggested | some y: User-z | y in z.follows && x in y.follows && x!=y & x!=z
-- div,1
all u : User | all u2 : u.follows.follows - u | u2 not in u.follows && u2 not u => u2 in u.suggested
-- div,1
all u : User | all s : u.suggested | all f : u.follows |s =  (s in f.follows) - (s not in f) - (s != u)
-- div,1
all u : User | all s : u.suggested | all f : u.follows | s = (s in f.follows) - (s not in f) - (s != u)
-- div,1
all u : User | all s : u.suggested | all f : u.follows |s = (s not in f) and (s in f.follows) and (s != u)
-- div,1
all u : User | none u.suggested or ((u.suggested not in u.follows) and (u.suggested in u.follows.follows))
-- div,1
all u : User | u.suggested is none or(u.suggested not in u.follows) and (u.suggested in u.follows.follows)
-- div,1
all p, u: User | all s: u.suggested | p in s implies p not in u.follows and p not u and u not in u.suggested
-- div,1
all u1,u2 : User | u2 in (u1 != u2 and u2 in u1.follows.follows and not (u2 in u1.follows)) implies u1.suggested
-- div,1
all x,x1,x2:User | x1 in x.suggested implies x1 != x and x2 != x1 and x1 in x2.follows and x2 in x2 in x1.follows
-- div,2
all u1,u2 : User | u2 in u1.suggested implies (u1 != u2 and u2 not in u1.follows and some u2 in u1.follows.follows)
-- div,1
all x, y, z: User | x in y.follows && y in z.follows && x not in z.follows && y != x && x y != z => x in z.suggested
-- div,2
all x,x1,x2:User | x1 in x.suggested implies (x1 != x) and (x2 != x1) and x1 in x2.follows and x2 in x2 in x1.follows
-- div,1
all u1, u2, u3 : User | u1 -> u2 in follows and u2 -> u3 follows and u1 -> u3 not in follows => u1 -> u3 in suggested
-- div,1
all u, u2, u3 : User | u3 in u2.follows and u in u2.follows and u3 not in u.follows and u!=u2!=u3 => u3 in u.suggested
-- div,1
all x : User | all y : suggested | (y not in x.follows+x) and (some z: x.follows | y in z.follows) and y in x.suggested
-- div,1
all u1,u2,u3: User | u1 -> u2 in follows and u2 -> u3 in follows and u1 -> u3 not follows implies u3 -> u1 in suggested
-- div,1
all u1, u2, u3 : User | u1 -> u2 in follows and u2 -> u3 follows and not (u1 -> u3 in follows) => u1 -> u3 in suggested
-- div,1
all x,x1,x2:User | x1 in x.suggested implies ((x1 != x) and (x2 != x1) and x1 in x2.follows and x2 in x2 in x1.follows)
-- div,1
all x : User | all y : suggested | (y not in x.follows+x) and (some z: x.follows | y in z.follows) and  y in x.suggested
-- div,1
all x : User | all y : suggested | (y not in x.follows+x) and (some z: x.follows | y in z.follows) and (y in x.suggested)
-- div,1
all u :User | all u2: User | (u in u2.suggested) implies (u!= u2 and u not in u2.follows and some u in u2.follows.follows)
-- div,1
all x : User | all y : suggested | ((y not in x.follows+x) and (some z: x.follows | y in z.follows)) and (y in x.suggested)
-- div,1
all u1,u2,u3:User| u3!=u1!=u2 and u3 in u2.follows and u2 in u1.follows and u3 not in u1.follows implies u3 in u1.suggested
-- div,1
all s:User, u:User | (u in suggested.s) = (u != s and u not in follows.s and some v:User | u in follows.v and v in follows.s)
-- div,1
all u1,u2,u3 : User | u1!=u2!=u3 and u1 in u2.follows and u2 in u3.follows and u1 not in u3.follows implies u1 in u3.suggested
-- div,1
all u1,u2,u3 : User | u3 in u1.suggested implies u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows and u1!=u2!=u3
-- div,1
all disj u1,u2 : User | u1 in u2.suggested iff (some u3 : User | u3 in u2.follows && u1 in u3.follows) and u1 not i u2.follows
-- div,1
all u1, u2, u3 : User | u1!=u2!=u3 and u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows implies u3 in u1.suggested
-- div,1
all u1,u2,u3 : User | u3 not in u1.follows and u2 in u1.follows and u3 in u2.follows and u1 != u2 != u3 implies u3 in u1.suggested
-- div,1
all u, v,w: User| u and v in Influencer and u->v in follows and u->w not in follows implies v->u in suggested and v->w in suggested
-- div,1
all u1: User, u2: User, u3: User | u2 in u1.follows and u3 in u1.suggested and u3 in u2.follows implies u3 not in u1.follows and u3
-- div,2
all u1, u2, u3 : User | u1 != u2 != u3 and u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows implies u1->u3 in suggested
-- div,1
all u1: User, u2: User, u3: User | u3 in u1.suggested and u2 in u1.follows and u3 in u2.follows implies u3 not in u1.follows and u3 != u1 != u2
-- div,1
all u1: User, u2: User, u3 : User | u2 != u1 != u3 and u2 in u1.suggested and u2 in u3.follows implies u3 in u1.follows and u2 not in u1.follows
-- div,1
all u: User - Influencer| u.suggested in u.follows.follows => u.suggested not in u.follows
all u:User | u not in u-suggested
all i: Influencer| no i.suggested
-- div,1
all u1, u2:User | u1 -> u2 in suggested implies (some u3:User | u1 -> u3 in follows and u3 -> u2 in follows and u1 > u2 not in follows and u1 != u2 and u2 != u3)
-- div,1
all u:User | u not in u.suggested
all i: Influencer, u: User |i not in u.suggested
all i: Influencer| i.suggested = {}
all u: User| u.follows.follows in u.suggested
-- div,1
all u:User | u not in u.suggested
all i: Influencer, u: User |i not in u.suggested
all i: Influencer| none i.suggested
all u: User| u.follows.follows in u.suggested
-- div,2
all user : User | user not in user.suggested
all user1, user2, user3 : User | user1 != user2 != user3 and ((user3 not in user1.follows) and (user3 in user2.follows) and (user2 in user1.follows)) implies user3 in user1.suggested
-- div,1
all user : User | user not in user.suggested
all user1, user2 : User | user2 in user1.follows and user1 implies user2 not in user1.suggested
all user1, user3 : User | user3 in user1.suggested implies (user3 in user1.follows.follows)
-- div,1
all user : User + Influencer| user not in user.suggested
all user1, user2 : User + Influencer | (user2 in user1.follows) implies user2 not in user1.suggested
all user1, user2, user3 : User + Influencer | ((user2 in user1.follows) and (user3 in user2.follows)) implies user3 not in suggested
-- div,1
all u:User| u not in u.suggested
all u1,u2:User| u2 in u1.follows implies u2 not in u1.suggested
all u1,u2:User| u2 in u1.suggested implies u2 not in Influencer
all i:Influencer | none i.suggested
all u1,u2:User| (u2 in u1.follows.follows and u2 not in u1.follows) implies (u2 in u1.suggested)
-- div,1
