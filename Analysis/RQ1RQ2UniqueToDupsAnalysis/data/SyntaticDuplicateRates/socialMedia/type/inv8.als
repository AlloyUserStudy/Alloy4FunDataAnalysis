all x : User  | x
-- div,1
all u : User | u.sees
-- div,1
all u: User | u.sees&Ad
-- div,1
all u : User | u.sees.Ad
-- div,1
all a : Ad | User.sees.a
-- div,1
all u : User | u.sees & Ad
-- div,2
all u : User | ((u.sees) & Ad)
-- div,1
all u : User | u.sees.Photo.Ad
-- div,1
sees = Ad & (follows + suggested)
-- div,1
Ad in (suggested + follows).posts
-- div,2
(suggested + follows).posts in Ad
-- div,1
sees = Ad - (follows + suggested)
-- div,1
sees = Ad & ( follows + suggested)
-- div,1
sees = posts.(suggested + follows) in Ad
-- div,1
sees = (suggested + follows).posts in Ad
-- div,1
Ad in (suggested + follows).posts in sees
-- div,1
all u:User | u.sees in u.follows.posts.Ad
-- div,4
sees = Ad  (follows.posts + suggested.posts)
-- div,1
sees = Ad - (follows.posts - suggested.posts)
-- div,1
sees = Ad - (follows.posts + suggested.posts)
-- div,1
sees = Ad & (follows.posts + suggested.posts)
-- div,1
all u:User | u.sees in Ad in u.suggested.posts
-- div,1
sees.(Ad & iden) = (suggested + follows).posts
-- div,1
sees = (suggested.posts + follows.posts) in Ad
-- div,1
(sees & Ad) in (follows.posts + suggested.posts)
-- div,1
all u : User | all f : Photo | f in u.sees and Ad
-- div,1
all u : User | all f : Photo | f in (u.sees and Ad)
-- div,1
all u : User | u.sees.Ad in u.follows or u.suggested
-- div,1
all u: User| u.sees in Ad + follows.u or suggested.u
-- div,1
all u: User| u.sees + Ad and follows.u or suggested.u
-- div,1
all u : User | u.sees & Ad = u.follows or u.suggested
-- div,1
all a : Ad, u : User | a in u.sees implies a in posts
-- div,1
all u: User| u.sees in Ad and follows.u or suggested.u
-- div,1
all u : User | u.sees & Ad in u.follows or u.suggested
-- div,1
all u : User | all ad: Ad | u->ad in sees and posts.ad
-- div,1
all u : User | u.sees & Ad = u.follows and u.suggested
-- div,1
all u : User | u.sees.Ad = (follows+suggested).posts.Ad
-- div,1
all u: User |all ad: u.sees.Ad |  ad in u.follows.posts
-- div,1
sees.(Ad->Ad & iden) = (suggested + follows).posts & Ad
-- div,1
all u: User | u.sees.Ad in u.follows+suggested.posts.Ad
-- div,1
all u : User | u.sees & Ad in u.follows and u.suggested
-- div,1
all u : User | u.sees.Ad in (follows+suggested).posts.Ad
-- div,2
all x : User | x.sees + Ad in   x.follows or x.suggested
-- div,5
all u:User | u.sees & Ad implies follows.u or suugested.u
-- div,1
all u: User | u.sees.Ad in u.(follows+suggested).posts.Ad
-- div,1
all u : User |  no u.sees = Ad in u.follows or u.suggested
-- div,3
all u: User |all ad: u.sees.Photo |  ad in u.follows.posts
-- div,1
all u: User| u.sees in Ad implies u.follows or u.suggested
-- div,1
all u:User | u.sees in u.follows.posts or u.suggested.posts
-- div,1
all x : User, y : Ad | sees.x in (x.follows or x.suggested)
-- div,1
all u,v: User| u.sees in Ad implies u.follows or u.suggested
-- div,1
all u: User| u.sees in Ad implies (u.follows or u.suggested)
-- div,1
all u: User| u.sees in Ad implies (follows.u or suggested.u)
-- div,1
all u : User | u.sees :> Ad = (follows+suggested).posts :> Ad
-- div,1
all u:User | u.sees in (u.follows.posts or u.suggested.posts)
-- div,1
all x : User, y : Ad | sees.y.x in (x.follows or x.suggested)
-- div,1
all x : User, y : Ad | x.y.sees in (x.follows or x.suggested)
-- div,1
all u : User | sees.u in follows.posts.u or suggested.posts.u
-- div,1
all x : User, y : Ad | y.x.sees in (x.follows or x.suggested)
-- div,1
all u: User| all a: Ad  | u.sees.a implies a in u.follows.post
-- div,1
all x:User | x->Ad in sees implies some (follows or suggested)
-- div,1
all u: User, a: Ad | a in u.follows.posts or u.suggested.posts
-- div,1
all u : User | (u.sees & Ad) = (u.follows or u.suggested).posts
-- div,1
all u : User | (u.sees & Ad) <= (u.follows + u.suggested).posts
-- div,1
all u:User | u.sees in Ad implies Ad in u.follows or u.suggested
-- div,2
all u:User | u.sees + Ad = u.follows.posts + u.suggested + posts
-- div,1
all u: User, a: Ad| a in u.sees => u in u.follows or u.suggested
-- div,1
all u:User | Ad in u.sees implies Ad in u.follows or u.suggested
-- div,1
all u : User | u.sees = u.follows.posts.Ad + u.suggested.posts.Ad
-- div,1
all u : User,a : Ad |  no u.sees = Ad in u.follows or u.suggested
-- div,1
all u : User | u.sees & Ad = u.follows.posts or u.suggested.posts
-- div,1
all u : User | u.sees & Ad in u.follows.posts or u.suggested.posts
-- div,1
all u : User | u.sees = Ad in u.follows.posts or u.suggested.posts
-- div,1
all u : User | all ad: Ad | u->ad in sees and u.follows.(posts.ad)
-- div,1
all u : User, a: Ad | a in u.sees implies u.follows or u.suggested
-- div,1
all u:User | Ad & u.sees in (u.follows.posts or u.suggested.posts)
-- div,1
all x:User | x->Ad in sees implies some (x.follows or x.suggested)
-- div,1
all u:User | Ad in u.sees in (u.follows.posts + u.suggested.posts)
-- div,1
all u:User | all a:Ad | a in u.sees implies u.follows or u.sugested
-- div,1
all u:User | u.sees in Ad in (u.follows.posts or u.suggested.posts)
-- div,1
all u:User | u.sees in (u.follows.posts.Ad and u.suggested.posts.Ad)
-- div,2
all u : User | (u.sees & Ad) = (u.follows or u.suggested).posts & Ad
-- div,1
all u:User | some u.sees & Ad in u.follows.posts + u.suggested.posts
-- div,1
all u : User | (u.sees & Ad) <= (u.follows + u.suggested).posts & Ad
-- div,1
all u : User | all a : Ad | a in u.follows.posts or u.suggested.posts
-- div,1
all u: User | u.sees.Ad in u.follows.posts.Ad || u.suggested.posts.Ad
-- div,1
all u: User | u.sees&Ad in u.follows.posts&Ad || u.suggested.posts&Ad
-- div,1
all u : User | (u.sees & Ad) =  (u.follows + u.suggested).(posts & Ad)
-- div,1
all u : User | (u.sees & Ad) in (u.follows.posts or u.suggested.posts)
-- div,1
all u: User | u.sees&Ad in (u.follows.posts&Ad || u.suggested.posts&Ad)
-- div,1
all u : User, s : sees | s in follows.posts.u or s in suggested.posts.u
-- div,1
all u : User | u.sees.Ad = (u.follows.posts.Ad or u.suggested.posts.Ad)
-- div,1
all u : User, s : sees | s in follows.u.posts or s in suggested.u.posts
-- div,1
all u : User | u.sees & Ad implies u.follows.posts or u.suggested.posts
-- div,1
all u: User | some u.sees&Ad = (u.follows.posts + u.suggested.posts)&Ad
-- div,1
all u : User, s : sees | s in u.follows.posts or s in u.suggested.posts
-- div,1
all u: User, a: Ad in u.sees | a in u.follows.posts + u.suggested.posts
-- div,1
all u: User |all ad: Photo |  ad in u.follows.posts or u.suggested.posts
-- div,1
all u : User, ad : Ad |  u.ad.sees in u.follows  or  u.sees in u.follows
-- div,1
all u:User | all a:(u.follows+u.suggested).posts | a in u.sees implies a
-- div,1
all u : User | all a : u.sees & Ad | User.a in (u.follows + u.suggested)
-- div,1
all u : User, ad : Ad |  ad.u.sees in u.follows  or  u.sees in u.follows
-- div,1
all u: User | (u.sees&Ad) in (u.follows.posts&Ad or u.suggested.posts&Ad)
-- div,1
all u : User | all a : u.sees & Ad | a->User in (u.follows + u.suggested)
-- div,1
all u :User | all a:Ad| u.sees in a implies a in u.follows or u.suggested
-- div,1
all u : User, ad : Ad |  u.sees.ad  in u.follows  or  u.sees in u.follows
-- div,1
all u : User, ad : Ad |  u->sees.ad in u.follows  or  u.sees in u.follows
-- div,1
all u: User |all ad: Photo |  ad in (u.follows.posts or u.suggested.posts)
-- div,1
all u : User | all a : Ad | (u.follows.posts + u.suggested.posts) & u.sees
-- div,1
all u : User | all a : Ad | a in u.follows.posts.Ad or u.suggested.posts.Ad
-- div,1
all u: User | (u.sees&Ad) in (u.follows.posts&Ad) or (u.suggested.posts&Ad)
-- div,2
all x : User, y : Ad | y in x.sees.Ad => y.posts in x.follows + x.suggested
-- div,1
all u : User, ad : Ad |  u.sees.Photo  in u.follows  or  u.sees in u.follows
-- div,1
all u:User , a:Ad | a in u.sees => a in u.follows.posts or u.suggested.posts
-- div,3
all u : User, a : Ad | u.sees.a in u.follows.posts + u.follows.follows.posts
-- div,1
all u : User, p : u.sees.Ad | p in u.follows.posts or p in u.suggested.posts
-- div,1
all u:User, a:Ad|u->a in sees => (some u2:follows+suggested | u2->a in posts)
-- div,1
all u: User, a: Ad in u.sees | a in u.follows.posts or a in u.suggested.posts
-- div,1
all u:User | u.sees-(not Ad) in (u.follows.posts.Ad and u.suggested.posts.Ad)
-- div,1
all u: User, a: u.sees in Ad | a in u.follows.posts or a in u.suggested.posts
-- div,1
all u:User, p:u.sees|p in Ad implies p in u.follows.posts or u.suggested.posts
-- div,1
all u:User | Ad in u.sees implies Ad in (u.follows.posts or u.suggested.posts)
-- div,1
all u : User, a : Ad | a in u.sees implies a.posts in u.follows or u.suggested
-- div,2
all u : User, a : Ad | u.sees.a in (u.follows.posts + u.follows.follows.posts)
-- div,1
all x : User, y : Ad | y in x.sees in Ad => y.posts in x.follows + x.suggested
-- div,1
all u: User | all a : Ad | a in u.sees => u.follows.posts or u.suggested.posts
-- div,2
all u : User, ad : Ad | ad in u.sees iff (u.follows.posts + u.suggested.posts )
-- div,1
all u : User | u.sees.Ad in (u.follows.posts.Ad or u.suggested.follows.posts.Ad)
-- div,1
all u:User, a:Ad | a in u.sees implies a in u.follows.posts or u.suggested.posts
-- div,1
all u:User, p:u.sees|p in Ad implies p in (u.follows.posts or u.suggested.posts)
-- div,1
all u: User | u.sees&Ad implies u.follows.posts in Ad || u.suggested.posts in Ad
-- div,2
all u,v: User| u.sees in Ad and v.posts implies u in v.follows or u in v.suggests
-- div,1
all u: User, a: Ad | a in u.sees implies a in u.follows.posts or u.suggested.posts
-- div,2
all u : User, p : posts|  u.sees in Ad implies p in u.follows or  p in u.suggested
-- div,1
all u : User | all a : Ad | u.sees.a in u.follows.posts.Ad or u.suggested.posts.Ad
-- div,1
all u: User| all a: Ad  | u.sees.a implies a in u.follows.post + u.suggested.posts
-- div,1
all u,v: User| u.sees in Ad and v.posts implies u in follows.v or u in suggested.v
-- div,1
all u:User | u.sees in Ad  implies u.sees in (u.follows.posts or u.suggested.posts)
-- div,1
all a : Ad, u : User | a in u.sees => a in u.follows.posts & a in u.suggested.posts
-- div,1
all x : User | all y : sees.x.Ad | y in follows.x.posts and  y in suggested.x.posts
-- div,1
all u : User , a : Ad | a in u.sees implies (u.follows.posts and u.suggested.posts)
-- div,2
all x:User, p:Photo | p in x.sees implies p in x.follows.posts or x.suggested.posts
-- div,1
all u: User| all a: Ad  | u.sees.a implies a in u.follows.post and u.suggested.posts
-- div,1
all u : User, a : Ad | a in u.sees implies a in u.follows.posts or u.suggested.posts
-- div,1
all a: Ad, x,y : User | a in x.sees and a in y.posts implies x.follows + x.suggested
-- div,1
all u:User | all a:Ad | a in u.sees implies a in u.follows.posts or u.suggested.posts
-- div,1
all u: User, a: u.sees | (Ad in a) in u.follows.posts or (Ad in a) in u.suggested.posts
-- div,1
all u: User| all a: Ad | u.sees.a implies a in u.follows.post or a in u.suggested.posts
-- div,1
all a:Ad, u1:User, u2:User, u3:User | u1.sees = (u1.follows.posts or u1.suggested.posts)
-- div,1
all u: User| all a: Ad | u.sees.a implies a in u.follows.posts or a in u.suggested.posts
-- div,1
all u : User | all a : u.sees & Ad | all uad : User.a | uad in (u.follows + u.suggested)
-- div,1
all u:User, p:Photo | p in u.sees and posts.p in u.follows or u.suggested implies p in Ad
-- div,1
all u :User | all a:Ad| a i u.sees implies a in u.follows.posts or a in u.suggested.posts
-- div,1
all u:User , a: Ad | (u.sees.a in u.follows.posts.a) or (u.sees.a in u.suggested.posts.a)
-- div,1
all u : User | all a : u.sees & Ad | all uad : a->User | uad in (u.follows + u.suggested)
-- div,1
all u : User, ad : Ad |  u.sees  in u.follows.posts  or  u.sees.ad in u.follows.suggested
-- div,1
some a: Ad | all u: User | a in u.sees implies a in (u.follows.posts or u.suggested.posts)
-- div,2
all u : User, ad : Ad |  u.sees.ad in u.follows.posts  or  u.sees.ad in u.follows.suggested
-- div,1
all u : User | all p : Photo | p in (u.sees & Ad) implies (u.follows + u.suggested).posts.u
-- div,1
all u : User, p : Ad |
p in u.sees <=>
p in u.follows.posts.Ad or p in u.suggested.posts.Ad
-- div,2
all u : User, ad : Ad |  sees.ad.u in u.follows.posts  or  u.sees.ad in u.follows.suggested
-- div,1
all u : User, ad : Ad |  sees.u.ad in u.follows.posts  or  u.sees.ad in u.follows.suggested
-- div,1
all u:User, p:Photo | p in u.sees and posts.p in (u.follows or u.suggested) implies p in Ad
-- div,1
all u : User, p : Ad |
p in u.sees iff
p in u.follows.posts.Ad or p in u.suggested.posts.Ad
-- div,1
all u : User, ad : Ad |  sees.ad.u  in u.follows.posts  or  u.sees.ad in u.follows.suggested
-- div,1
some a: Photo | all u: User | a in u.sees implies a in (u.follows.posts or u.suggested.posts)
-- div,1
all u : User | all p : Photo | p in (u.sees & Ad) implies ((u.follows + u.suggested).posts).u
-- div,1
all u:User | u.sees & Ad implies some p:User | a in p.posts and p in (u.follows + u.suggested)
-- div,1
all u1, u2 : User, a: Ad | a in u1.sees => a^(user) in u1.follows or  a^(user) in u1.suggested
-- div,2
all user : User | all ad : Ad | ad in user.sees implies ad in (user.follows or user.suggested)
-- div,1
all u,u2:User , a:Ad | u -> a in sees iff u2 -> a in posts && u2 in (u.follows || u.suggested )
-- div,1
all u: User, p: Ad |
p in u.sees implies
(p in u.follows.posts.Ad or p in u.suggested.posts.Ad)
-- div,1
all u : User, ad : Ad | ad in u.sees = (u.follows.posts + (u.follows.follows - (u.follows + u)) )
-- div,1
all u1,u2:User | u2 not in u1.follows and u2 not in u1.suggested implies u2.posts.Ad not in u1.sees
-- div,2
all u,u2:User , a:Ad | u -> a in sees iff ((u2 -> a in posts ) && (u2 in (u.follows || u.suggested )))
-- div,1
all u:User,a:Ad | a in u.sees implies (some u1:User | a in u1.posts and u1 in u.follows or u.suggested)
-- div,1
all u : User | all ad : Ad | all u_ad : u.sees.ad | u_ad.posts in u.follows || u_ad.posts in u.suggested
-- div,1
all u1, u2: User | all a: Ad | u1->a in sees & u2->a in posts => u1->u2 in follows or u1->u2 in suggested
-- div,1
all x,y,z : univ | x->y in sees and y in Ad implies z->y posts and x->z in infollows or y->x in suggested
-- div,1
all user : User | all ad : Ad | ad in user.sees implies (ad in user.follows.posts or user.suggested.posts)
-- div,4
all user : User | all ad : Ad | ad in user.sees implies ad in (user.follows.posts or user.suggested.posts)
-- div,1
all u,u2:User , a:Ad | u -> a in sees implies ((u2 -> a in posts ) && (u2 in (u.follows || u.suggested )))
-- div,1
all x,y,z : univ | (x->y in sees and y in Ad) implies z->y posts and (x->z in infollows or y->x in suggested)
-- div,3
all u1, u2: User | all a: Ad | u1->a and u2->a in posts in sees implies (u1->u2 in follows or u1->u2 in suggested)
-- div,1
all u:User , a:Ad | u -> a in sees implies (some u2: User| (u2 -> a in posts) && (u2 in (u.follows || u.suggested)))
-- div,1
all x, y : univ | x in User and y in Ad and x->y sees and z->y in posts implies x->z in follows or x->z in suggested
-- div,1
all a:Ad | some u:User | u -> a in sees implies (some p:User | p -> a implies u -> p in follows or u -> p in suggested)
-- div,1
all u : User | all p : Photo | some v : User | p in u.sees and p in Ad and v->p in posts implies v in u.suggested or u.follows
-- div,1
all u1,u2 : User| all p:Photo| p in Ad and (u2->p in posts and(u1->u2 in follows or u1->u2 in suggested)) in sees implies u1->p
-- div,1
all u1,u2 : User| all p:Photo| p in Ad and (u2->p in posts and (u1->u2 in follows or u1->u2 in suggested)) in sees implies u1->p
-- div,1
all u : User | u.sees.Ad

all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)
-- div,1
all a : Ad, u : User | a in u.sees implies a in (u.follows.posts + u.suggested.posts)

sees = Ad + (follows.posts + suggested.posts)
-- div,1
all a : Ad, u : User | a in u.sees implies a in (u.follows.posts + u.suggested.posts)

sees = Ad - (follows.posts + suggested.posts)
-- div,1
all u : User | (u.sees) & Ad

all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)
-- div,1
all u : User | some u.sees.Ad

all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)
-- div,1
all u : User | some Ad.(u.sees)

all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)
-- div,1
all u : User | some (u.sees).Ad

all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)
-- div,1
all u:User, ad:Ad, f:Influencer, s:User | u->ad sees implies ((f->ad in posts and u->f in follows) or (s->ad in posts and u->s in suggested))
-- div,1
all u : User | all a : Ad | a in u.sees implies some followed, suggest : univ | (followed->a in posts and followed in u.follows) or (suggest->a in posts and suggested in u.suggest)
-- div,1
all u : User, p : Photo |
p not in Ad and p in u.sees implies
p in u.follows.posts and p not in u.follows.posts.Ad or
p in u.suggested.posts and p not in u.suggested.posts.Ad
all u : User, p : Ad |
p in u.sees implies
p in u.follows.posts.Ad or
p in u.suggested.posts.Ad
-- div,1
