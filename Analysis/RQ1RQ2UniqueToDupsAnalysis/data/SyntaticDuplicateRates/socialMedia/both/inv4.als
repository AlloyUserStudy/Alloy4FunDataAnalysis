posts.Ad not in posts.(Photo - Ad)
-- div,1
all user : User | some Photo
-- div,1
all u: User | some u.posts
-- div,2
all u: User | Ad in u.posts
-- div,3
some u:User| u.posts in Ad
-- div,2
(posts :> Ad) != (posts :> (Photo - Ad))
-- div,1
(posts :> Ad).Ad != posts.(Photo - Ad)
-- div,1
(posts :> Ad).Ad not in posts.(Photo - Ad)
-- div,1
Ad in User.posts implies User.posts in Ad
-- div,1
all x : User | one (x.posts & Ad)
-- div,1
all u: User | some u.posts&Ad
-- div,7
all u : User | lone (u.posts & Ad)
-- div,1
some x: User | x.posts in posts.Ad
-- div,1
all u:User, a:Ad| a in u.posts
-- div,1
all u: User | Ad+Photo not in u.posts
-- div,1
all u : User, p : Photo | some u.posts
-- div,1
all x: User | (x.posts in Ad) => some Ad
-- div,1
User<:posts.Ad not in User<:posts.(Photo - Ad)
-- div,1
all u : User | one a : Ad| a in u.posts
-- div,2
all x : Day | one p : Photo | x = p.date
-- div,1
all u : User | all a : Ad | a in u.posts
-- div,1
all u : User | one a : Ad | u -> a in posts
-- div,1
all x:User| x.posts in Ad implies x.posts=Ad
-- div,2
all u: User | all ad: Ad | some u.posts
-- div,1
all x : Day | some p : Photo | x = p.date
-- div,3
all x:User | some y:x.posts | y in Ad
-- div,2
all x : User | some y : Ad | (y in x.posts)
-- div,1
all u:User | (Ad in u.posts) => (u.posts = Ad)
-- div,1
all x : Day | all p : Photo | x in p.date
-- div,1
all x: User | (x.posts in Ad) => some posts.Ad
-- div,1
all u:User | Ad in u.posts implies u.posts in Ad
-- div,6
one u : User | Ad in u.posts implies Ad in u.posts
-- div,1
all x:User | Ad in x.posts implies x.posts in Ad
-- div,1
all x : Day | some p : Photo | x in p.date
-- div,1
all u:User | u.sees-Ad in u.follows.posts
-- div,4
all u1:User | all a:Ad | u1->a in posts
-- div,1
all x: User | (x.posts in Ad) => no posts.Photo
-- div,1
one p: Photo | p in Ad => (posts.p).posts in Ad
-- div,2
all u : User | all p : Photo | p in u.posts
-- div,1
all x: Ad | Ad in User.posts implies User.posts = Ad
-- div,1
all u:User | no (u.posts-Ad) implies u.posts != Ad
-- div,1
all u : User | Ad in u.posts implies Photo not in u.posts
-- div,1
some a: Ad | a in User.posts => User.posts in Ad
-- div,1
all u:User | one u.posts<:Ad implies u.posts = Ad
-- div,2
all u : User | one a : Ad| some u.posts & Ad
-- div,1
some u : User | one (u.posts & Ad) implies u.posts in Ad
-- div,2
all u:User | some u.posts & Ad implies Ad in u.posts
-- div,1
all u:User | some (Ad-u.posts) implies u.posts in Ad
-- div,1
all u:User | lone u.posts<:Ad implies u.posts = Ad
-- div,1
some u : User |  (some u.posts & Ad) implies u.posts in Ad
-- div,2
all p : Photo-Ad | all u : User | u.posts not in p
-- div,1
all u:User | some p:Photo | p in u.posts & Ad
-- div,1
all u1,u2:User| u2 in Influencer implies u1->u2 in follows
-- div,1
all u:User | some p:Photo | p in (u.posts - Ad)
-- div,1
all u:User | some p:Photo |  p not in (u.posts - Ad)
-- div,1
all u: User | u.posts in Ad implies u.posts not in (Photo-Ad)
-- div,2
all u: User, a: Ad | a in u.posts => Ad in u.posts
-- div,1
all u: User | Ad in u.posts implies Photo-Ad not in u.posts
-- div,6
one a:Ad, x:User| x->a in posts implies posts.x in Ad
-- div,1
all u:User, a:Ad | a in u.posts implies u.posts not in Ad
-- div,1
one a:Ad, x:User| x->a in posts implies x.posts in Ad
-- div,1
all x: User | Ad in x.posts implies (x.posts & Ad = x.posts)
-- div,2
all x : User | all z : x.posts | (Ad in z) implies z in Ad
-- div,1
all u: User, a: Ad | u.posts = a => u.posts - a = 0
-- div,1
all u : User | some u.posts & Ad or u.posts - Ad = none
-- div,1
all u : User | some a : Ad | a in u.posts implies a in Ad
-- div,1
all u : User | some a : Ad | u -> a in posts implies a in Ad
-- div,4
all u: User, a: Ad | u.posts = a => u.posts - Ad = 0
-- div,1
all u: User | u.posts not in (u.posts-Ad & u.posts-Photo)
-- div,2
all u:User | one p:Photo | (p in Ad) implies (u.posts in Ad)
-- div,2
all u : User | some p : Photo | p in u.posts and p in Ad
-- div,1
all u:User | some p:Photo | u -> p in posts implies p in Ad
-- div,1
all x : User | some y : Photo | ((y in Ad) implies (x.posts in Ad))
-- div,1
all u: User | one a: Ad | a in u.posts => u.posts = a
-- div,1
all x : User | all z : x.sees | (Ad in x.posts) implies Ad in z
-- div,1
some u : User | some u.posts & Ad => u.posts & Ad = u.posts
-- div,2
all x : User | all z : x.sees | (Ad in x.posts) implies z in Ad
-- div,1
all u:User | one p:Ad | p in u.posts implies u.posts in Ad
-- div,1
all x: User | Ad in x.posts implies (all p: x.posts | p in Ad)
-- div,2
all u: User | one a: u.posts |  a in Ad => u.posts in Ad
-- div,1
all u:User | some a:Ad | u.posts = a implies u.posts in Ad
-- div,1
all u: User | one l : u.posts | l in Ad implies u.posts in Ad
-- div,1
all u:User |all  p:u.posts| Ad in u.posts implies Ad in p
-- div,1
one p : Ad | one u : User |  p in u.posts => u.posts in Ad
-- div,1
all u: User | one a: Ad | u.posts in a => u.posts in Ad
-- div,2
all u1 : User | u1.posts in Ad implies (all ph: Photo | ph in Ad)
-- div,4
all u:User |all p:u.posts |Ad in u.posts implies p in Ad
-- div,1
all u: User | one e: u.posts | e in Ad implies u.posts in Ad
-- div,2
all u: User | one a: Ad | a in u.posts => u.posts in Ad
-- div,19
all u: User | one p: u.posts | p in Ad => u.posts in Ad
-- div,3
all u:User | all a:Ad | a in u.posts implies Ad in u.posts
-- div,2
all a : Ad | lone u:User | a in u.posts implies u.posts in a
-- div,2
all u:User | one c:u.posts | c in Ad implies u.posts in Ad
-- div,1
all x : User | one a : x.posts | a in Ad implies x.posts in Ad
-- div,3
all u : User | lone a : Ad | a in u.posts implies u.posts in Ad
-- div,1
all u: User | some a: Ad | a in a.posts implies u.posts in Ad
-- div,2
all u: User | lone e: u.posts | e in Ad implies u.posts in Ad
-- div,1
all u: User | some p: Ad | p in u.posts implies u.posts in Ad
-- div,4
all u : User | lone p : u.posts| p in Ad implies u.posts in Ad
-- div,1
all x:User| some a:Ad| a in x.posts implies x.posts in Ad
-- div,3
all x : User | some y : Ad | y in x.posts implies x.posts in Ad
-- div,6
all u : User | some a : Ad | (u in posts.a) implies (u.posts in Ad)
-- div,1
all u:User,p:Ad,r:Ad | u in posts.p implies u in posts.r
-- div,3
all x:User| one y:Ad | x-> y in posts implies x.posts in Ad
-- div,1
all u: User | some l : u.posts | l in Ad implies u.posts in Ad
-- div,1
all u : User | some a : Ad | u in posts.a implies posts.u in Ad
-- div,5
some a: Ad | all u: User | a in u.posts implies u.posts in Ad
-- div,2
all u: User | some a: Ad | a in u.posts => u.posts in Ad
-- div,35
all u:User | some p:u.posts | p in Ad => u.posts in Ad
-- div,7
all u: User | some e : u.posts | e in Ad implies u.posts in Ad
-- div,1
all x : User | some y : x.posts | y in Ad implies x.posts in Ad
-- div,1
all x : User | some a : x.posts | a in Ad  implies x.posts in Ad
-- div,1
all u : User | one a : Ad | u -> a in posts implies u.posts in Ad
-- div,2
all x : User | one a : x.posts | a in Ad  iff x.posts in Ad
-- div,1
one a:Ad|all x:User| x->a in posts implies x.posts in Ad
-- div,2
all x : User | some p : x.posts | p in Ad implies x.posts in Ad
-- div,1
all u: User | some a: Ad | u.posts in a => u.posts in Ad
-- div,2
all u: User | some a : Ad | u->a in posts => u.posts in Ad
-- div,1
one ad:Ad | all u:User | ad in u.posts implies u.posts in Ad
-- div,1
all u:User | some p:Ad | u->p in posts => u.posts in Ad
-- div,2
some u: User | some a: Ad | a in u.posts implies u.posts in Ad
-- div,3
all u: User, a: Ad, p: Photo | u.posts = a => u.posts=p
-- div,1
all x:User | some a:Ad | x->a in posts implies x.posts in Ad
-- div,8
all u: User | some a: Ad | a in u.posts iff u.posts in Ad
-- div,1
some u: User | some e : u.posts | e in Ad implies u.posts in Ad
-- div,1
some u: User | all ad : Ad | ad in u.posts implies u.posts in Ad
-- div,1
all u: User, a: Ad, p: Photo | u.posts = a => u.posts!=p
-- div,4
all u : User | all x, y : Ad | u -> x in posts implies (u -> y in posts)
-- div,1
all x : User | some ad : Ad | ad in x.posts => x.posts in Ad
-- div,1
all u: User | some al: Ad | al in u.posts => u.posts in Ad
-- div,1
all u: User | some e : User.posts | e in Ad implies u.posts in Ad
-- div,1
all u: User | lone e : User.posts | e in Ad implies u.posts in Ad
-- div,1
all u : User | one add : Ad | add in u.posts implies u.posts in Ad
-- div,1
some p : Photo | p in User.posts and p = Ad implies no User.posts - Ad
-- div,2
all x : User | some y : Photo | x->y in posts implies x.posts in Ad
-- div,1
all u: User, a: Ad, p: Photo | u.posts = a => not u.posts=p
-- div,1
all x : User | some a : Ad | a in x.posts implies no x.posts-Ad
-- div,1
all u: User | some a : Ad | u->a in posts => User.posts in Ad
-- div,1
all u: User | some al: Ad | al.~posts in u => u.posts in Ad
-- div,1
all x : User | some a : Ad | x->a in posts implies no x.posts-Ad
-- div,1
some a: Ad | all i: Influencer | a in i.posts implies i.posts in Ad
-- div,1
all x : User | some a : Ad | x->a in posts implies lone x.posts-Ad
-- div,1
all u1 : User | some add : Ad | add in u1.posts
implies (u1.posts in Ad)
-- div,1
all x : User | some y : Ad | y in x.posts implies no Photo & x.posts
-- div,1
all x : User | some p : Ad | p in x.posts implies no x.posts & Photo
-- div,1
all u: User | some a: Ad | a in u.posts implies u.posts in posts.Ad
-- div,1
all p: Photo, u: User | p in Ad and p in u.posts implies u.posts not in Ad
-- div,1
all x: User | (one p: Photo | p in Ad implies (x.posts & Ad = x.posts))
-- div,2
all u: User, a: Ad | some p: u.posts | p in a => u.posts = a
-- div,2
some a : Ad | some u : User | a in u.posts implies #(u.posts-Ad) = 0
-- div,1
all u: User | one p: Photo-Ad | u.posts in p implies u.posts in Ad
-- div,1
all x: User | (some p: Photo | p in Ad implies (x.posts & Ad = x.posts))
-- div,2
all p:Photo-Ad | all a : Ad | all u : User | u.posts not in a
-- div,1
all u: User, a: Ad | some p: u.posts | p in a => u.posts = Ad
-- div,1
all u: User | one a: Ad | a in u.posts implies u.posts not in Photo-Ad
-- div,1
all u: User | some p: Photo-Ad| u.posts in p implies u.posts in Ad
-- div,2
all u: User, d: Ad | one a: Ad | a in u.posts => u.posts in d
-- div,1
all u: User, a: Ad | some p: u.posts | p in a => u.posts in a
-- div,3
all u:User | some p:Photo-Ad | u->p in posts => u.posts in Ad
-- div,1
some p : Photo, u : User | p in u.posts and p = Ad implies no u.posts - Ad
-- div,1
all u: User, a: Ad | some p: u.posts | p in a => u.posts in Ad
-- div,2
all x : User, a : Ad, p : Photo-Ad | a in x.posts implies Ad not in x.posts
-- div,1
all user : User | some ad : Ad | user-> ad in posts implies user.posts in Ad
-- div,2
all a:Ad, p:Photo-Ad, u:User | u->a in posts and u->p in posts
-- div,2
all x : User, a : Ad, p : Photo-Ad | a in x.posts implies x.posts not in Ad
-- div,1
one u1: User | all p: Photo | u1-> p in posts and p in Ad implies p in Ad
-- div,1
all u: User, d: Ad | one a: Ad | u in a.~posts => u.posts in d
-- div,2
all u: User, a: Ad | some ua: u.posts | ua in a => u.posts in Ad
-- div,1
one u1: User | all p: Photo | u1 -> p in posts and p not in Ad implies p in Ad
-- div,1
some u : User, p : Ad | p in u.posts => all po : u.posts | po in Ad
-- div,1
some z:Ad, x:User | x->z in posts implies all y:Ad | x->y in posts
-- div,1
all u:User-Influencer | some a:Ad | a in u.posts implies u.posts in Ad
-- div,2
all u:User, p:Photo| one a:Ad| u->a in posts implies u.posts in Ad
-- div,1
all u: User, a: Ad | some pa: a.~posts | pa in u => u.posts in Ad
-- div,1
all u: User, a: Ad | some ua: a.~posts | ua in u => u.posts in Ad
-- div,1
all u: User, a: Ad | some al: a.~posts | al in u => u.posts in Ad
-- div,1
all u:User | one p:Photo | p in Ad and p in u.posts implies u.posts in Ad
-- div,3
all x : User | all y : Ad | one a : x.posts | a = y  implies x.posts = y
-- div,2
all u : User | one p : Photo | p in u.posts and p in Ad implies u.posts in Ad
-- div,1
not some a: Ad, p:Photo-Ad, u:User | u->a in posts => u->p not in posts
-- div,1
all x : User | some y : Photo | y in Ad and y in x.posts implies x.posts in Ad
-- div,1
all u : User | some p : Photo | p in u.posts and p in Ad implies u.posts in Ad
-- div,3
all u:User | some a:Ad | u->a in posts => all p:Photo | p in Ad
-- div,1
all x:User | some p:Photo | p in Ad and p in x.posts implies x.posts in Ad
-- div,1
some p: Photo | all u: User | p in u.posts and p in Ad implies u.posts in Ad
-- div,1
all u : User | some y : Photo | y in u.posts and y in Ad implies u.posts in Ad
-- div,1
all u:User | some p:Photo | ((p in u.posts) and (p in Ad)) iff u.posts in Ad
-- div,1
all x : User | some y : Photo | y in Ad and x->y in posts implies x.posts in Ad
-- div,1
all u: User | some p : Photo | u->p in posts && p in Ad => u.posts in Ad
-- div,2
all u: User | one a: Ad | a in u.posts => all d: Ad | u.posts = d
-- div,1
all u : User | one a : Ad | a in u.posts implies all a : u.posts | a = Ad
-- div,1
all u : User | some a : Ad | a in u.posts implies all a : u.posts | a = Ad
-- div,2
all x:User | one y:x.posts | all z:x.posts | y in Ad implies z in Ad
-- div,1
all u : User | lone a : Ad | a in u.posts implies all a : u.posts | a = Ad
-- div,1
all u: User |  some p: u.posts | all a: Ad| p in a => u.posts in a
-- div,1
all u : User | all  p : Ad | one a : Ad| a in u.posts implies p in u.posts
-- div,2
all u : User | one a : Ad | a in u.posts implies all p : u.posts | p in Ad
-- div,1
all u: User | one a: Ad | a in u.posts => all d: Ad | u.posts in d
-- div,2
all x : User | one z: x.posts | z in Ad => ( all p : x.posts | p in Ad)
-- div,1
all u : User | some a : Ad | a in u.posts implies all b : Ad | b in u.posts
-- div,6
all x : User | some z: x.posts | z in Ad => ( all p : x.posts | p in Ad)
-- div,1
all x : User | some y : x.posts | all z : x.posts | (Ad in y) implies z in Ad
-- div,1
all u: User | some a: Ad | a in u.posts implies all p: u.posts | p in Ad
-- div,3
all x : User | one a : x.posts | a in Ad implies x.posts in Ad and a not in x.sees
-- div,2
all x : User | some y : Ad | y in x.posts implies all z : Ad | z in x.posts
-- div,1
all x : User | some y : Ad | y in x.posts implies all z : Ad | x.posts in z
-- div,1
all u : User | some p : Ad | p in u.posts => all po : u.posts | po in Ad
-- div,1
all u1 : User | u1.posts in Ad implies (all ph : Photo |  ph in u1.posts and ph in Ad)
-- div,1
all x : User| some a : Ad | x-> a in posts implies all z : Ad | x->z in posts
-- div,1
all x:User | some z:Ad | x->z in posts implies all y:Ad | x->y in posts
-- div,1
all u : User | some p : u.posts | p in Ad => all po : u.posts | po in Ad
-- div,3
all u : User | all a : Ad | all p : Photo | p in u.posts implies a in u.posts
-- div,1
all u:User | all a:Ad | all p:Photo | a in u.posts implies p in u.posts
-- div,1
all u : User | some p : Ad | all p1 : u.posts | u->p in posts implies p1 = Ad
-- div,1
all u: User | some a: Ad | a in u.posts => (no p: Photo | p not in u.posts)
-- div,1
all u: User, a: Ad | some ua: a.~posts | ua in u.posts => u.posts in Ad
-- div,1
all u : User | some p : Ad | all p1 : u.posts | u->p in posts implies p1 in Ad
-- div,1
all x : User | some y : Photo | all z : x.sees | (Ad in x.posts) implies Ad in z
-- div,1
some p : User.posts | all u : User | (p in u.posts and p in Ad ) implies u.posts in Ad
-- div,2
all x : User |all p : Photo | some a : Ad | a in x.posts implies p not in x.posts
-- div,2
all x : User | some p : Ad | p in x.posts implies all p : Photo | p not in x.posts
-- div,1
all u : User | some p : Photo | all p1 : u.posts | u->p in posts implies p1 = Ad
-- div,1
all u : User | some pos : u.posts | pos in Ad => (all ph : u.posts | ph in Ad)
-- div,1
all x : User | some p : x.posts | p in Ad implies all post : x.posts |  post in Ad
-- div,1
all u: User |  some p: u.posts | all a: Ad| u.posts in a => u.posts in a
-- div,1
all u1 : User | one add : Ad | add in u1.posts
implies (all ph : Ad |  ph in u1.posts)
-- div,1
all p : Photo | one u : Influencer |
(some Ad & u.posts) implies (p in u.posts implies p in Ad)
-- div,1
all u: User | some a: Ad | a in u.posts => (no p: Photo - Ad | p in u.posts)
-- div,1
one a:Ad | all x:User, p:Photo| x->a in posts and x->p in posts implies p in Ad
-- div,1
one p : Ad | all f : Photo-Ad | all x : User | p in x.posts implies f not in x.posts
-- div,1
all u:User | one a:Ad | all p:Photo - Ad | a in u.posts implies p not in u.posts
-- div,1
all u: User | some a: Ad | a in u.posts => (no p: Photo - Ad | p not in u.posts)
-- div,1
all p:Photo-Ad | all a : Ad | all u : User | u.posts in a implies u.posts not in p
-- div,1
all u:User | some a:Ad | all p:Photo - Ad | a in u.posts implies p not in u.posts
-- div,1
all u: User | some a: Ad | a in u.posts implies u.posts in Ad
Influencer.posts in Ad
-- div,1
all u: User | some a: Ad | a in u.posts => (all p: Photo - Ad | p not in u.posts)
-- div,2
all x : User | all p : Photo-Ad | some a : Ad | a in x.posts implies p not in x.posts
-- div,1
all u : User | all p : Photo - Ad | some a : Ad | a in u.posts implies p not in u.posts
-- div,1
all u:User | some a:Ad | some p: Photo - Ad | a in u.posts implies p not in u.posts
-- div,2
all u : User | some p : Photo & Ad | all p1 : u.posts | u->p in posts implies p1 = Ad
-- div,1
all u:User | some a:Ad | u->a in posts => (not some p:Photo-Ad | u->p in posts)
-- div,1
all u : User | all p : Photo | p in u.posts and some a : Ad | a = p implies p-a = none
-- div,1
all u:User | one a:Ad | a in u.posts implies (all p:Photo | p in u.posts and p in Ad)
-- div,2
all u:User | one p:Ad | p in u.posts implies (all p:Photo | p in u.posts implies p in Ad)
-- div,1
all p : Photo | one u : User-Influencer |
(some Ad & u.posts) implies (p in u.posts implies p in Ad)
-- div,1
all u:User| one a:Ad | a in u.posts implies (all p:Photo | p in u.posts implies p in Ad)
-- div,3
all u : User | some a : Ad | all p : Photo | (a in u.posts and p in u.posts) implies p in Ad
-- div,2
all u : User | all n : Photo | some a : Ad | a in u.posts and n in u.posts implies n in Ad
-- div,3
all x: User | some y: Photo | y in x.posts && y in Ad => all p: x.posts | p in Ad
-- div,1
all u : User | some a : Ad | a in u.posts implies (all p : Photo| p in u.posts implies p in Ad)
-- div,1
all u : User | some a : Ad | a in u.posts implies all n : Photo | n in u.posts implies n in Ad
-- div,2
all u:User | some p:Ad | p in u.posts implies (all p:Photo | p in u.posts implies p in Ad)
-- div,1
all u: User| some a: Ad | u->a in posts implies (all p: Photo | p in u.posts implies p in Ad)
-- div,1
all u: User | some p1, p2: Photo | p1 in u.posts and p1 in Ad implies p2 in u.posts and p2 in Ad
-- div,1
all u: User | one a: Ad | u->a in posts implies (all p: Photo| u->p in posts implies p in Ad)
-- div,1
all u:User | some a:Ad | u->a in posts => all p:Photo | u->p in posts => p in Ad
-- div,3
all u : User | all p : u.posts | one a : Ad | p = a implies all a1 : Ad | a in u.posts
-- div,1
all u : User | some ad : Ad | ad in u.posts implies
all p : Photo | p in u.posts and p in Ad
-- div,1
all u:User | some a:Ad | u->a in posts => all p:Photo | u->p in posts and p in Ad
-- div,2
all x : User| some a : Ad | x-> a in posts implies all z : Photo | x->z in posts implies z in Ad
-- div,3
all u: User | some p: Ad | p in u.posts implies all p1: Photo | p1 in u.posts implies p1 in Ad
-- div,1
all u: User | some p: Ad | p in u.posts implies all p1: Photo | p1 in u.posts and p1 in Ad
-- div,1
all u : User | some ad : Ad | all p : Photo | u -> ad in posts && u -> p in posts => p in Ad
-- div,1
all u : User | some ad : Ad | u -> ad in posts => all p : Photo | u -> p in posts && p in Ad
-- div,2
all u : User | some ad : Ad | u -> ad in posts => all p : Photo | u -> p in posts => p in Ad
-- div,1
all u : User | some ad : Ad | all p : Photo | u -> ad in posts => u -> p in posts && p in Ad
-- div,2
all u:User | (one a:Ad | u->a in posts) implies (all p1:Photo | u->p1 in posts and p1 in Ad)
-- div,1
all u:User | one a:Ad | a in u.posts implies all p:Photo-a | p in u.posts implies p in Ad
-- div,1
all x: User | some p1: Ad | p1 in x.posts implies (all p2: Photo | p2 in x.posts and p2 in Ad)
-- div,2
all u:User | some p:Ad | u -> p in posts implies (all photo:Photo | u -> p in posts implies p in Ad)
-- div,1
all u:User | some p1:Ad | u -> p1 in posts implies (all p2:Photo | u -> p2 in posts implies p2 in Ad)
-- div,3
all u1: User | some p1: Ad | p1 in u1.posts implies (all p2: Photo | p2 in u1.posts and p2 in Ad)
-- div,1
all u1 : User | one add : Ad | add in u1.posts
implies (all ph : Photo | ph in u1.posts implies ph in Ad)
-- div,1
all u1 : User | one add : Ad | add in u1.posts
implies (all ph : Photo | ph in u1.posts and ph in Ad)
-- div,1
all u1: User | some ph1: Ad | ph1 in u1.posts implies (all ph : Photo |  ph in u1.posts and ph in Ad)
-- div,2
all u1 : User | one add : Ad | add in u1.posts
implies (some ph : Photo | ph in u1.posts implies ph in Ad)
-- div,1
all u1 : User | some add : Ad | add in u1.posts
implies (all ph : Photo | ph in u1.posts implies ph in Ad)
-- div,1
all u1 : User | some add : Ad | add in u1.posts
implies (all ph : Photo | ph in u1.posts and ph in Ad)
-- div,1
all p : Photo | one u : User |
((some Ad & u.posts) implies (p in u.posts implies p in Ad))
and
(no Ad & u.posts)
-- div,1
all u:User | some p:Ad | u -> p in posts implies (all photo:Photo | u -> photo in posts implies photo in Ad)
-- div,1
all u:User | some a:Ad | a in u.posts implies u.posts in Ad
all u:Influencer | u.posts in Ad
-- div,1
all u : User | one p : Photo | p in u.posts and p in Ad implies (all x : Photo | x in u.posts implies x in Ad)
-- div,1
all x: User | some y: Photo | y in x.posts && y in Ad => all p: Photo | p in x.posts => p in Ad
-- div,12
all x: User | some y: Photo | y in x.posts && y in Ad => (all p: Photo | p in x.posts && p in Ad)
-- div,8
some u : User | some a : Photo | a in Ad and a in u.posts implies all p : Photo | p in u.posts and p in Ad
-- div,1
all u:User | one p:Photo | (p in u.posts and p in Ad) implies (all p1:Photo | p1 in u.posts implies p1 in Ad)
-- div,1
all x: User | some y: Photo | y in x.posts and y not in Ad => (all p: Photo | p in x.posts && p not in Ad)
-- div,1
all u : User | some p : Photo | p in Ad and u->p in posts implies all v : Photo | u->v in posts implies v in Ad
-- div,1
all u : User | one ad : Photo | ad in Ad and ad in u.posts implies
all p : Photo | p in u.posts and p in Ad
-- div,1
all u:User | one p:Photo | (p in u.posts and p in Ad) implies (all p1:Photo | p1 in u.posts and p1 in Ad)
-- div,1
all u : User | one p : Photo | p in u.posts and one a : Ad | a = p implies all p1 : u.posts | p1 = Ad
-- div,1
all u:User | one p:Photo | p in Ad and p in u.posts implies (all p1:Photo | p1 in u.posts implies p1 in Ad)
-- div,1
all u: User | (some p: Photo | p in Ad and u->p in posts implies all o: Photo | 	  p->o in posts implies o in Ad)
-- div,3
all u : User | some p : Photo | (p in u.posts and p in Ad) implies (all p2: Photo | p2 in u.posts implies p2 in Ad)
-- div,1
all user : User | some ad : Ad | user->ad in posts implies all post : univ | user->post in posts and post in Ad
-- div,2
all u : User | some p : Photo | (p in u.posts and p in Ad) implies (all p2: Photo | p2 in u.posts and p2 in Ad)
-- div,3
all u : User | some ad : Photo | ad in Ad and ad in u.posts implies
all p : Photo | p in u.posts and p in Ad
-- div,1
all u:User | (one p:Photo | u->p in posts and p in Ad) implies (all p1:Photo | u->p1 in posts and p1 in Ad)
-- div,1
all u : User | (some p : Photo | u->p in posts and p in Ad implies (all p1: Photo | u->p1 in posts implies p1 in Ad))
-- div,1
all u:User | some p1:Ad | u -> p1 in posts implies (all p2:Photo | p1 != p2 and u -> p2 in posts implies p2 in Ad)
-- div,1
all u : User | some p : Photo | (u -> p in posts and p in Ad) => all p1 : Photo | u -> p1 in posts and p1 in Ad
-- div,1
all x: User | some p1: Photo | all p2: Photo | (p1 in x.posts and p1 in Ad) implies (p2 in x.posts and p2 in Ad)
-- div,1
all x: User | some p1: Photo | p1 in x.posts and p1 in Ad implies (all p2: Photo | p2 in x.posts and p2 in Ad)
-- div,1
one u : User | one p1:Photo| (p1 in Ad and u->p1 in posts) implies (all p2:Photo|u->p2 in posts implies p2 in Ad)
-- div,1
one u : User | some p1:Photo| (p1 in Ad and u->p1 in posts) implies (all p2:Photo|u->p2 in posts implies p2 in Ad)
-- div,1
all user : Influencer | some ad : Ad | user->ad in posts implies all post : univ | user->post in posts and post in Ad
-- div,1
all u:User | some a:Ad | a in u.posts implies u.posts in Ad
all u:User | u in Influencer implies u.posts in Ad
-- div,1
all u1 : User | all ph : Photo |
ph in u1.sees  implies ((some u2 : User | ph in u2.posts and u2 in u1.follows ) or ph  in Ad)
-- div,1
all u1:User | all p:Photo | (u1->p in sees and p not in Ad) implies (some u2:User | u1->u2 in follows and u2->p in posts)
-- div,1
all u : User | one p : Photo | p in u.posts and all a : Ad | a = p implies all p1 : Photo | p1 in u.posts and p1 = Ad
-- div,1
all u : User | one p : Photo | p in u.posts and some a : Ad | a = p implies all p1 : Photo | p1 in u.posts and p1 = Ad
-- div,1
all u:User
| some pht:Photo
| pht in Ad and u->pht in posts implies all otherPht:Photo | u->otherPht in posts implies  otherPht in Ad
-- div,1
