posts :> Ad  = posts & User->Ad
-- div,2
(posts & User->Ad) = (posts :> Ad)
-- div,2
all u : User | u.posts in univ
-- div,1
all x : Ad | x.posts.posts in x
-- div,4
all x : Ad | x.posts.posts in Ad
-- div,2
User.posts not in Ad or User.posts in Ad
-- div,1
(posts - User->Ad) = (posts :> (Photo - Ad))
-- div,1
posts :> Ad = posts - User->(Photo - Ad)
-- div,1
all y : Photo | y in Ad implies y in Ad
-- div,1
all u:User, p:Photo| p.posts in Ad
-- div,1
no((posts :> Ad).Ad & (posts :> (Photo - Ad)).Ad)
-- div,1
all u:User, a:Ad| lone (u.posts & a)
-- div,1
all u:User, a:Ad| (u.posts & a) in Ad
-- div,1
all u:User | (u.posts-Ad)!= 0 implies 1=1
-- div,1
all u:User, a:Ad | a.posts in u.posts
-- div,3
all u : User | no (u.posts & Ad) & (Photo-Ad)
-- div,2
all u : User, y : Photo | y in Ad implies y in Ad
-- div,1
all u: User | u.posts in Ad => u.posts in Ad
-- div,9
all u : User | Ad in u.posts implies Ad in u.posts
-- div,2
all x : User |  x.posts in Ad or x.posts not in Ad
-- div,1
all u : User | u.posts in Ad or u.posts not in Ad
-- div,5
all u : User | u.posts not in Ad or u.posts in Ad
-- div,1
all x : User | x.posts in Photo or x.posts in Ad
-- div,1
all u:User | u.posts in Ad => no u.posts - Ad
-- div,2
all u : User | one u.posts & Ad implies u.posts in Ad
-- div,2
all x : User | one x.posts & Ad implies x.posts in Ad
-- div,2
all u : User | some u.posts - Ad implies u.posts not in Ad
-- div,1
all p:Photo, u:User | p -> u in posts implies p in Ad
-- div,1
all x : User | x.posts in Ad implies x.posts-Ad=none
-- div,1
all u : User | u.posts in Ad or u.posts - Ad not in Ad
-- div,1
all u: User, a: Ad | u.posts in a => u.posts in a
-- div,1
all u : User , a : Ad | a in posts.u implies u.posts in Ad
-- div,1
all u : User, a : Ad | (u in posts.a) implies (posts.u in Ad)
-- div,1
all u: User, a: Ad | u.posts in a => u.posts in Ad
-- div,1
all p:Photo, i:Influencer | p -> i in posts implies p in Ad
-- div,1
all u : User | all p : u.posts | p in Ad implies p in Ad
-- div,2
all u : User | all a : Ad | a in u.posts implies a in Ad
-- div,2
all u:User |all p:Ad |p in u.posts implies p in Ad
-- div,1
all u: User, a: Ad | u.posts = a => no(u.posts - a)
-- div,1
all u : User , ad : Ad | ad in u.posts implies ad in u.posts
-- div,1
all u : User | all p : u.posts | p not in Ad or p in Ad
-- div,1
all u:User |all p:Ad |Ad in u.posts implies p in Ad
-- div,1
all u : User | u.posts in Ad or u.posts - Ad in u.posts
-- div,1
all u: User, a: Ad | u.posts = a => no(u.posts - Ad)
-- div,1
all u : User | all p : posts.u | p in Photo || p in Ad
-- div,1
all u : User | all p : u.posts | p in Ad or not p in Ad
-- div,1
all u : User , ad : Ad | ad in u.posts implies ad in u.(^posts)
-- div,1
all u: User | some u.posts&Ad implies u.posts not in Photo-Ad
-- div,1
all u : User | all p : Photo | p in Ad implies posts.u in Ad
-- div,1
all x : User | all y : Ad | x.posts = y  implies x.posts = y
-- div,1
all u : User, uPosts : u.posts | uPosts in Ad || uPosts not in Ad
-- div,1
all u:User |all a:Ad | a in u.posts implies a in u.posts
-- div,2
all u:User | all p:u.posts |  u.posts in Ad implies p in Ad
-- div,1
all u : User | u.posts in Ad implies (all x : u.posts | x in Ad)
-- div,1
all u : User | all p : posts.u | p in Ad => posts.u in Ad
-- div,1
all u: User, p: Photo | p in (Ad & posts.p) implies u.posts in Ad
-- div,1
all u : User | u.posts in Ad => (all p : u.posts | p in Ad)
-- div,1
all u: User, a: Ad, p: Photo | u.posts = a => u.posts=a
-- div,1
all u : User | u.posts in Ad or all u : User | u.posts in Photo
-- div,1
all u : User | u.posts = u.posts & Ad or u.posts = u.posts & Photo
-- div,2
all u: User, a: Ad | u.posts in a => (all p: u.posts | p in a)
-- div,1
all u : User | all  p : Photo | p in u.posts and p in Ad implies p in Ad
-- div,1
all u : User, uPosts : u.posts | uPosts in Ad => u.posts not in Photo-Ad
-- div,1
all u1: User | all p: Photo | u1-> p in posts and p in Ad implies p in Ad
-- div,1
all x:User | all y:x.posts | some z:y | z in Ad implies y in Ad
-- div,1
all u: User, a: Ad | some al: Ad | al in u.posts => u.posts in Ad
-- div,1
all u1: User | all p: Photo | u1 -> p in posts and p not in Ad implies p not in Ad
-- div,1
all u:User,p:Ad,r:Ad | u in posts.p implies u in posts.r implies r in Ad
-- div,1
all u : User | u.posts in Photo-Ad => all p : u.posts | p in Photo-Ad
-- div,1
all u : User | all a : Ad | all p : Photo | a in posts.u implies a+p = a
-- div,1
all x:User | (one y:x.posts | y in Ad) implies (all z:x.posts | z in Ad)
-- div,1
all x:User | all y:x.posts | some z:x.posts | z in Ad implies y in Ad
-- div,1
all u : User| all p : Ad|all p2 : u.posts| p in u.posts implies p in Ad
-- div,1
all u : User | all a : Ad | all p : Photo | a in posts.u implies a-p = none
-- div,1
all x : User | all y: Ad | all z : Photo-Ad | y in posts.x implies (z not in posts.x)
-- div,1
all a:Ad, u:User | u->a in posts implies (some p:Photo | u->p in posts and p in Ad)
-- div,1
all a:Ad, u:User | u->a in posts implies (some p:Photo | u->p in posts implies p in Ad)
-- div,1
all u:User | (one a:Ad | u->a in posts) implies (all p1:Photo | u->p1 in posts implies p1 in Ad)
-- div,1
all u : User | all a : Ad | all p : Photo | (a in posts.u and p in posts.u) implies a-p = none
-- div,1
all u : User | all a : Ad | a in posts.u implies all p : Photo | p in posts.u and p-a = none
-- div,1
all u : User | all a : Ad | a in posts.u implies all p : Photo | p in posts.u and a-p = none
-- div,1
all u1,u2:User | all a:Ad | u1->a in posts implies (some p:Photo | u1->p in posts implies p in Ad )
-- div,1
all u1,u2:User | all a:Ad | u1->a in posts implies (some p:Photo | u1->p in posts and p in Ad )
-- div,1
all x, y : univ | x->y in posts and x in Influencer and y in Ad implies (all z : univ | x->z in posts implies z in Ad)
-- div,1
all user : User | some ad : univ | user->ad in posts and ad in Ad implies all post : univ | user->post in posts and post in Ad
-- div,1
