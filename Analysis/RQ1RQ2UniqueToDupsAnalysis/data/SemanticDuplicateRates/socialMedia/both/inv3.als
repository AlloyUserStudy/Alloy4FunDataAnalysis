-- equiv pair start,3
Ad in User.sees
-- div,2
all a : Ad | some sees.a
-- div,1
-- equiv pair end
-- equiv pair start,2
all x : Ad | one sees.x
-- div,1
all x : User | all y : User | all z : Photo | y->x in follows && z->y in posts => z->x in sees

all x : Ad | one sees.x
-- div,1
-- equiv pair end
-- equiv pair start,36
sees.(~posts) in follows
-- div,1
all u : User | posts.(u.sees) in u.follows
-- div,2
all u : User | u -> u.sees.(~posts) in follows
-- div,1
all u:User | posts.(u.sees) in u.follows + Ad
-- div,1
all x : User | all y : x.sees | posts.y in x.follows
-- div,2
all u: User, p: Photo | p in u.sees => p.~posts in u.follows
-- div,1
all x,y: User, f:Photo | f in x.sees and f in y.posts implies y in x.follows
-- div,2
all u,x:User, p:Photo| u->p in sees and x->p in posts implies u->x in follows
-- div,1
all u,u1: User, p: Photo| p in u.sees and p in u1.posts implies u1 in u.follows
-- div,1
all p:Photo, u1,u2:User | p in u1.posts and p in u2.sees implies u1 in u2.follows
-- div,1
all u1, u2 : User, p : Photo | (u1 in posts.p && u2 in sees.p) implies (u2 in follows.u1)
-- div,1
all x1,x2:User,p:Photo | p in x1.sees and p in x2.posts implies x2 in x1.follows
-- div,3
all u, u1:User, p:Photo | u->p in sees implies u1->p in posts implies u->u1 in follows
-- div,1
all u1, u2 : User, p : Photo | p in u1.sees and p in u2.posts => u2 in u1.follows
-- div,1
all u1, u2 : User, p : Photo | (( u1->p in sees && u2 -> p in posts ) => u1 -> u2 in follows)
-- div,1
all u,u1:User | all p:Photo | p in u.posts and p in u1.sees implies u in u1.follows
-- div,1
all u1,u2 : User | all p : Photo | p in u2.posts and p in u1.sees implies u2 in u1.follows
-- div,3
all p : Photo | all u1, u2 : User | u1 in sees.p and u2 in posts.p => u1 in follows.u2
-- div,3
all p : Photo | all u1,u2 : User | p in u2.posts and p in u1.sees implies u2 in u1.follows
-- div,1
all u1,u2 : User | all p : Photo | u1->p in sees and u2->p in posts implies u1->u2 in follows
-- div,1
all u1,u2:User | all p:Photo | u2->p in posts and u1->p in sees implies u1->u2 in follows
-- div,1
all u1 : User | all u2 : User | all p : u2.posts | u1 -> p in sees implies u2 in u1.follows
-- div,1
all p:Photo | all u:User,u2:User | p in u.sees and p in u2.posts implies u2 in u.follows
-- div,1
all x: User | all y : User | all p : Photo | (y->p in posts and x->p in sees) implies x->y in follows
-- div,1
all user1, user2 : User | all photo : Photo | (photo in user1.posts and photo in user2.sees) implies user1 in user2.follows
-- div,1
all user1, user2: User | all photo: Photo | (photo in user1.sees and photo in user2.posts) implies user2 in user1.follows
-- div,1
all u1,u2 : User | all p : Photo | (p in u1.sees and p in u2.posts) implies u2 in u1.follows
all u1,u2 : User | all p : Photo | (p in u1.sees and p in u2.posts and u2 not in u1.follows) implies p in Ad
-- div,1
-- equiv pair end
-- equiv pair start,24
all u:User | Ad in u.sees
-- div,2
all a: Ad, u: User | a in u.sees
-- div,3
all p: Ad, u: User | p in u.sees
-- div,1
all a: Ad, u: User | u->a in sees
-- div,1
all x : Ad | all y : User |  y in sees.x
-- div,2
all x:User | all a:Ad | x in sees.a
-- div,1
all a : Ad | all u : User | a in u.sees
-- div,4
all u: User | all a : Ad | a in u.sees
-- div,1
all x : Ad | all y : User | x in y.sees
-- div,2
all x: User | all y: Ad | x->y in sees
-- div,1
all u,y : User | all a : Ad | a in u.sees
-- div,1
all u : User ,p : Photo | p in Ad => p in u.sees
-- div,2
all x : User | (all y : Photo | all z: Ad | y in x.sees and y!=z and y in x.follows.posts ) || (all z: Ad | z in x.sees)
-- div,1
all x : User | all y : Photo | (all z: Ad | y in x.sees and y!=z and y in x.follows.posts ) || (all z: Ad | z in x.sees)
-- div,1
all u : User, p : Photo | some f : User | u->p in sees and f->p in posts and p not in Ad implies u->f in follows or u = f
all u : User | all a : Ad | u->a in sees
-- div,1
-- equiv pair end
-- equiv pair start,1
some (sees & follows.posts)
-- div,1
-- equiv pair end
-- equiv pair start,1
User.sees not in User.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | Ad not in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
one u:User | u.sees in follows.u
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | u.sees in u.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | x not in follows.x
-- div,1
-- equiv pair end
-- equiv pair start,2
all u:User | some u.follows.posts
-- div,2
-- equiv pair end
-- equiv pair start,3
all u:User | Ad in u.follows.posts
-- div,3
-- equiv pair end
-- equiv pair start,1
one x: User | x->x.follows in sees
-- div,1
-- equiv pair end
-- equiv pair start,3
all u:User | u.posts not in u.sees
-- div,3
-- equiv pair end
-- equiv pair start,1
all u : User | one u.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,2
all x: User | x->x.follows in sees
-- div,1
all x: User | x->follows.x in sees
-- div,1
-- equiv pair end
-- equiv pair start,6
all x, y : User | x.sees in y.posts
-- div,1
all u1,u2 : User | u1.sees in u2.posts
-- div,2
all x, y:User, p:Photo | x.sees in y.posts
-- div,1
all disj u1: User, u2: User | u1.sees in u2.posts
-- div,1
all x : User | all y : User | x.sees in y.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
User.sees not in Ad
Ad in User.sees
-- div,1
-- equiv pair end
-- equiv pair start,5
all u : User | u.sees not in u.posts
-- div,5
-- equiv pair end
-- equiv pair start,1
all u: User | u.sees = u.follows.sees
-- div,1
-- equiv pair end
-- equiv pair start,4
all u: User, p: Photo | (p in u.sees)
-- div,1
all x : User | all y : Photo | (x -> y in sees)
-- div,1
all u : User | all p : Photo | u -> p in sees
-- div,1
all x : User | all p : Photo - Ad | p in x.sees

all x : Ad | all y : User | x in y.sees
-- div,1
-- equiv pair end
-- equiv pair start,9
all x : Photo | x not in posts.x.sees
-- div,1
all u : User, p : u.posts | p not in u.sees
-- div,7
all u : User | all p : u.posts | p not in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User | Ad not in u.sees.posts
-- div,1
all x:User | some y:Photo | y in Ad
-- div,1
-- equiv pair end
-- equiv pair start,5
all x : Ad, y : User | y not in sees.x
-- div,1
all x : User | all y : x.sees | y not in Ad
-- div,1
all x : User | all y : Ad | y not in x.sees
-- div,2
all u: User | all p: u.sees | p not in Ad
-- div,1
-- equiv pair end
-- equiv pair start,20
all u:User | u.follows.posts in u.sees
-- div,9
all x: User | x->x.follows.posts in sees
-- div,3
all u, v: User | u in v.follows => u.posts in v.sees
-- div,1
all u: User | all p: u.follows.posts |  p in u.sees
-- div,1
all u : User, p : Photo| (p in u.follows.posts) implies (p in u.sees)
-- div,1
all p: Photo, u: User | p in u.follows.posts => p in u.sees
-- div,1
all u:User | u -> (u.sees - Ad) in sees implies u -> u.follows.posts in sees
-- div,2
all x, z : User | all y : Photo | x->z in follows and z->y in posts implies x->y in sees
-- div,1
all p : Photo | all u1,u2 : User | u2 in u1.follows and p in u2.posts implies p in u1.sees
-- div,1
-- equiv pair end
-- equiv pair start,4
all u:User | Ad not in u.follows.posts
-- div,2
all u : User | not Ad in u.follows.posts
-- div,2
-- equiv pair end
-- equiv pair start,3
all u: User | u.sees in u.follows.sees
-- div,1
all x: Photo | sees.x in follows.sees.x
-- div,1
all u: User | u.sees in u'.follows.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
one a: Ad | all u: User | u->a in sees
-- div,1
-- equiv pair end
-- equiv pair start,7
all u: User | u.follows.posts not in Ad
-- div,4
all u: User | u.follows.posts not in Ad and u.sees.posts in Ad
-- div,1
all u: User | u.follows.posts not in Ad
all u: User | u.sees.posts in Ad
-- div,2
-- equiv pair end
-- equiv pair start,7
all x : User | sees.x = follows.x.posts
-- div,1
all x : User | follows.x.posts in sees.x
-- div,2
all x : Photo, y : User | x in sees.x iff x in follows.y.posts
-- div,1
all x : Photo | all y : User | x in sees.x iff x in follows.y.posts
-- div,1
all u1,u2 : User | all p : Photo | p in u2.posts and u1 in u2.follows implies u1 in u2.sees
-- div,2
-- equiv pair end
-- equiv pair start,1
all u: User | one (posts.(u.sees - Ad))
-- div,1
-- equiv pair end
-- equiv pair start,2
some sees :> (follows.posts.Photo + Ad)
-- div,2
-- equiv pair end
-- equiv pair start,1
all u:User | u.follows.posts in u.posts
-- div,1
-- equiv pair end
-- equiv pair start,2
all u:User, p:Photo| p in u.follows.sees
-- div,1
all p: Photo|all u: User|some (sees.p & u.follows)
-- div,1
-- equiv pair end
-- equiv pair start,3
all u: User | u in u.follows.posts.~sees
-- div,1
all u:User | u.sees not in Photo-u.follows.posts
-- div,2
-- equiv pair end
-- equiv pair start,16
all x : User |all p : Photo | p not in Ad
-- div,2
all x : Ad | all y : User | x in sees.y
-- div,1
all x : User | all y : Ad | sees.x not in y
-- div,1
all x : User , y : User , z : Photo | z not in Ad
-- div,1
all u1,u2 : User | all p1 : Photo | p1 not in Ad
-- div,1
all x : User | all y : Photo | all z: Ad | y in x.sees and y!=z
-- div,1
all p: Photo | all u: User |  all a: Ad | p in u.follows and
a in u.sees
-- div,1
all x : User | all y : Photo | all z: Ad | y in x.sees and y not in x.posts and y!=z
-- div,2
all x : User | all y : Photo| all z: Ad | y in x.sees and y!=z and y in x.follows.posts
-- div,3
all u1, u2 : User, p : Photo , a : Ad | (p != a && u1 in posts.p && u2 in sees.p) implies (u2 in follows.u1)

all a : Ad | all u : User | u in sees.a && a in sees.u
-- div,2
all u, z : User | all p : Photo | all a : Ad | z->p in posts and p!=a and u!=z and u->p in sees implies u->z in follows
all u, f : User | all a : Ad | u->a in sees and f->a in posts and f!=u
-- div,1
-- equiv pair end
-- equiv pair start,3
all u:User | u.sees-Ad in follows.u.posts
-- div,1
all u: User, p: Photo - Ad | u in p.~sees => u in p.~posts.follows
-- div,1
all x : User | all p : Photo | x in sees.p => (p in follows.x.posts || p in Ad)
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User | u.posts - Ad not in u.sees
-- div,2
-- equiv pair end
-- equiv pair start,1
all u : User | u.follows = posts.(u.sees)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1,u2 : User | u1.sees in u2.posts-Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all a : Ad | one u : User | u->a in posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: User | no x.sees or x in x.follows
-- div,1
-- equiv pair end
-- equiv pair start,2
all u:User |u.sees not in u.follows.posts
-- div,2
-- equiv pair end
-- equiv pair start,1
some sees.(Photo-Ad) & follows.posts.Photo
-- div,1
-- equiv pair end
-- equiv pair start,3
all x : User | all y : Ad | x.sees not in y
-- div,3
-- equiv pair end
-- equiv pair start,5
all u : User | u.sees&Ad in u.follows.posts
-- div,2
all u : User, y : Photo| y in u.sees & Ad implies y in u.follows.posts
-- div,1
all x : User | all y : Ad | y not in x.follows.posts implies y not in x.sees
-- div,1
all x : User | all y : x.sees | (y not in Ad) or (some k : x.follows | y in k.posts)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | some y : Ad | x.sees not in y
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User, p: Photo | p.~sees in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | sees.~posts.User in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User | u.follows = posts.(u.sees-Ad)
-- div,2
-- equiv pair end
-- equiv pair start,1
all u: User | all p: Photo-Ad | some posts.p
-- div,1
-- equiv pair end
-- equiv pair start,5
all u:User | u.posts - Ad in u.follows.posts
-- div,5
-- equiv pair end
-- equiv pair start,1
all u : User, a : Ad | u.posts not in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Photo| some (sees.p & posts.p).follows
-- div,1
-- equiv pair end
-- equiv pair start,1
one u : User | all p : Photo | u -> p in sees
-- div,1
-- equiv pair end
-- equiv pair start,1
some sees.Photo :> (follows.posts.Photo - Ad)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | #(u.sees) = #(u.follows.posts)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | some y : User | y in x.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all y : Photo-Ad | all x : User | x.sees in y
-- div,1
-- equiv pair end
-- equiv pair start,14
all u: User, p: Photo | p.~sees in u.~follows
-- div,1
all u,u2:User, p:Photo | u->p in sees implies u->u2 in follows
-- div,1
all u1,u2 : User, p : Photo | p in u1.sees => u2 in u1.follows
-- div,1
all x,y: User | all p : Photo | x->p in sees implies x->y in follows
-- div,1
all u, j : User | all p : Photo | u -> p in sees implies u -> j in follows
-- div,1
all u : User, p : Photo, ux : User | u->p in sees implies u->ux in follows
-- div,1
all u1,u2 : User | all p : Photo | u1->p in sees implies u1->u2 in follows
-- div,1
all x: User | all y : User | all p : Photo | x->p in sees implies x->y in follows
-- div,1
all x : User | all y : Photo | all u : User | u not in x.follows implies y not in x.sees
-- div,1
all x : User | all p : Photo | all f : User | x->p in sees implies x->f in follows
-- div,1
all x : User | all y : User | all z : Photo | (x -> y not in follows) implies (x -> z not in sees)
-- div,1
all u, j : User | all p : Photo | u -> p in sees implies u -> j in follows
all u : User| all i : Influencer| all p : Photo | u -> p in sees implies u -> i in follows
-- div,3
-- equiv pair end
-- equiv pair start,3
all x : Photo-Ad | all y : User | y in sees.x
-- div,1
all x : User | all p : Photo | p not in Ad implies x->p in sees
-- div,1
all x : User | all p : Photo | p not in Ad and p not in posts.x implies x->p in sees
-- div,1
-- equiv pair end
-- equiv pair start,7
all x : User | x.follows.posts in (Photo - Ad)
-- div,1
all u: User | u.follows.posts in Photo-Ad
-- div,2
all u:User, p:Photo | p in Ad implies p not in u.follows.posts
-- div,1
all a,u,f,p : univ | u in User and u-> f in follows and f -> p in posts and a in Ad implies p!=a
-- div,2
all a,u,f,p,s : univ | u in User and u-> f in follows and f -> p in posts and a in Ad implies p!=a
-- div,1
-- equiv pair end
-- equiv pair start,13
all u:User |  (u.follows.posts + Ad) in u.sees
-- div,2
all u : User | u.follows.posts in u.sees
all a : Ad, u : User | a in u.sees
-- div,2
all u : User, p : Photo| ((p in u.follows.posts and p not in Ad) or (p in Ad)) implies (p in u.sees)
-- div,1
all u : User | u.follows.posts in u.sees
all a : Ad | all u : User | a in u.sees
-- div,1
all u : User | u.follows.posts - Ad in u.sees - Ad
all a : Ad, u : User | a in u.sees
-- div,1
all u : User, p : Photo | p in Ad => p in u.sees
all u : User, p : Photo | p not in Ad and p in u.follows.posts => p in u.sees
-- div,1
(all x, z: User | all p: Photo | p in z.posts and z in x.follows => x in sees.p) && all a: Ad | all y: User | y in sees.a
-- div,2
all p : Photo, u1,u2 : User | p in u2.posts and u2 in u1.follows and p != Ad implies p in u1.sees

all ad : Ad, u : User | ad in u.sees
-- div,1
all u: User | all a: Ad | a in u.sees

all u1, u2: User | all p: Photo | u2 in u1.follows
and p in u2.posts implies p in u1.sees
-- div,1
all u1,u2:User | all p1,p2:Photo|((p1 not in Ad) implies (((u1->p1 in posts) and (u2->u1 in follows)) implies (u2->p1 in sees))) and (all u:User|p2 in Ad implies u->p2 in sees)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | u.follows.sees in u.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | posts.(u.sees) not in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, a : Ad | u.sees= u.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,4
all u : User | u.sees.~posts in u.follows.posts
-- div,1
all u : User | sees.~posts.User in u.follows.posts
-- div,1
all x : User | all y : x.sees | y not in User.posts
-- div,2
-- equiv pair end
-- equiv pair start,1
all u : User | u.follows in posts.((u.sees)-Ad)
-- div,1
-- equiv pair end
-- equiv pair start,5
all u: User, p: Photo-Ad | u.follows.posts in p
-- div,4
all u: User | all p: Photo-Ad | u.follows.posts in p
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User, o: User | u.sees in o.follows.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all a : Ad | one u : Influencer | u->a in posts
-- div,1
-- equiv pair end
-- equiv pair start,2
all x:User | all p:Photo | posts.p in follows.x
-- div,2
-- equiv pair end
-- equiv pair start,4
all u : User, p : u.posts - Ad | p not in u.sees
-- div,1
all u : User, p : u.posts | p not in Ad implies p not in u.sees
-- div,1
all x: User | all y: x.sees - Ad | y not in x.posts
-- div,1
all u : User | all p : Photo | u->p in sees and p not in Ad implies u not in posts.p
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | some y : User | x.sees in y.posts
-- div,1
-- equiv pair end
-- equiv pair start,3
User.sees = User.follows.posts + Ad + User.posts
-- div,2
User.sees = User.follows.posts + Ad + User.posts - User.suggested
-- div,1
-- equiv pair end
-- equiv pair start,235
all u: User | (posts.(u.sees - Ad)) in u.follows
-- div,1
all u : User | no posts.(u.sees - Ad) - u.follows
-- div,2
all u : User | all p : u.sees - Ad | posts.p in u.follows
-- div,2
all x: User | all y: x.sees - Ad | posts.y in x.follows
-- div,1
all x : User | all y : x.sees | y in Ad or posts.y in x.follows
-- div,1
all x : User | all y : x.sees | posts.y in x.follows or y in Ad
-- div,2
all u : User, p : Photo - Ad | p in u.sees implies posts.p in u.follows
-- div,1
all p : Photo - Ad, u : User | p in u.sees implies posts.p in u.follows
-- div,1
all x : User | all y: x.sees | y not in Ad => posts.y in x.follows
-- div,1
all u :User | all p : u.sees | (p not in Ad) implies (posts.p in u.follows)
-- div,2
all u:User, p:Photo | p in u.sees => p in Ad or posts.p in u.follows
-- div,2
all u : User, p : Photo | p not in Ad && p in u.sees implies posts.p in u.follows
-- div,1
all p : Photo - Ad | all u : User | p in u.sees implies posts.p in u.follows
-- div,2
all u: User, p: Photo | (p in u.sees implies p.~posts in u.follows) or p in Ad
-- div,2
all u: User, p: Photo | p in u.sees implies p in Ad or p.~posts in u.follows
-- div,1
all u1 : User, p: Photo | ((p in u1.sees) and (p not in Ad)) implies (posts.p in u1.follows)
-- div,1
all u: User, p: Photo | p not in Ad && p in u.sees => p.~posts in u.follows
-- div,3
all u1,u2 : User, p: Photo | ((p in u1.sees) and (p not in Ad)) implies ((posts.p in u1.follows))
-- div,1
all u,i:User, p:Photo-Ad| p in u.sees and p in i.posts implies  i in u.follows
-- div,1
all u:User | not some p:Photo-Ad | u->p in sees and posts . p not in u.follows
-- div,1
all u : User | all p : Photo | p in u.sees implies (posts.p in u.follows) or (p in Ad)
-- div,1
all p: Photo | all u: User| p not in Ad and p in u.sees implies posts.p in u.follows
-- div,3
all u,x:User, p:Photo-Ad| u->p in sees and x->p in posts implies u->x in follows
-- div,2
all p:Photo-Ad,  x,y:User| x->p in sees and y->p in posts implies x->y in follows
-- div,1
all p : Photo | all u1: User | p in u1.sees implies ( p in Ad or posts.p in u1.follows)
-- div,1
all p : Photo - Ad, u1,u2 : User | u1 in posts.p && u2 in sees.p => u2 in follows.u1
-- div,1
all u1, u2 : User, p : Photo-Ad | p in u1.sees and p in u2.posts implies u2 in u1.follows
-- div,1
all u : User | all p: Photo | p not in Ad and p in u.sees implies (p.~posts in u.follows)
-- div,1
all p:Photo-Ad, u1,u2:User | p in u1.posts and p in u2.sees implies u1 in u2.follows
-- div,6
all p : Photo - Ad, u1, u2 : User | u1 in sees.p && u2 in posts.p => u1 in follows.u2
-- div,6
all u1, u2 : User, p : Photo - Ad | p in u2.posts and p in u1.sees implies u2 in u1.follows
-- div,1
all u1,u2:User, p:Photo-Ad | u1 in sees.p and u2 in posts.p implies u2 in u1.follows
-- div,2
all p : Photo-Ad, u1,u2 : User | p in u1.sees and p in u2.posts implies  u2 in u1.follows
-- div,1
all u1,u2 : User, p : Photo-Ad | (u1 in sees.p && u2 in posts.p) implies (u1 in follows.u2)
-- div,6
all u1,u2:User, p:Photo-Ad | p in u1.posts and p in u2.sees implies u1 in u2.follows
-- div,1
all x, z: User, y: Photo | y in x.sees and y in z.posts and y not in Ad implies z in x.follows
-- div,1
all u, x : User, p : Photo | p not in Ad and p in u.sees and p in x.posts implies x in u.follows
-- div,2
all x, z : User, y : Photo | (y not in Ad) and (z in posts.y) and (x in sees.y) implies (x in follows.z)
-- div,2
all p: Photo-Ad, u1,u2: User | u1 in sees.p and u2 in posts.p implies u1->u2 in follows
-- div,1
all u1,u2 : User, p : Photo - Ad | u1->p in sees and p in u2.posts implies u2 in u1.follows
-- div,2
all u : User, p : Photo | (p in u.sees) implies ((p not in Ad and posts.p in u.follows) or p in Ad)
-- div,1
all p: Photo-Ad, u1,u2: User | u1 in sees.p and u2->p in posts implies u1->u2 in follows
-- div,1
all u1,u2 : User, p : Photo - Ad | u1->p in sees and u2->p in posts implies u1->u2 in follows
-- div,1
all u1 : User | all ph : Photo | ph in u1.sees implies (ph in Ad or posts.ph in u1.follows)
-- div,1
all p: Photo-Ad, u1,u2: User | u1->p in sees and u2->p in posts implies u1->u2 in follows
-- div,1
all u,u1: User, p: Photo| p not in Ad and p in u.sees and p in u1.posts implies u1 in u.follows
-- div,1
all x : Photo-Ad | all y, z : User | y in sees.x and z in posts.x implies y in follows.z
-- div,1
all p : Photo - Ad | all u,y : User | (p in u.sees and p in y.posts) implies y in u.follows
-- div,1
all u , y : User | all p: Photo - Ad | (y in posts.p and u in sees.p) implies u in follows.y
-- div,1
all x : Photo-Ad | all y, z : User | y in sees.x and z in posts.x implies y -> z in follows
-- div,1
all u1 : User, p: Photo | (p in u1.sees) implies ((p not in Ad and posts.p in u1.follows) or p in Ad)
-- div,1
all u1, u2 : User | all ph : Photo | ph in u1.sees implies (ph in Ad or posts.ph in u1.follows)
-- div,1
all p:Photo, u1,u2:User | p in u2.posts and p in u1.sees and p not in Ad implies u2 in u1.follows
-- div,1
all p : Photo, u1,u2 : User | (p not in Ad and p in u1.sees and p in u2.posts) implies (u2 in u1.follows)
-- div,3
all p:Photo,x0,x2:User | p in x2.posts and p in x0.sees and p not in Ad implies x2 in x0.follows
-- div,4
all x : Photo-Ad | all y, z : User | y -> x in sees and z -> x in posts implies y -> z in follows
-- div,2
all u,x:User| all p:Photo - Ad| u->p in sees and x->p in posts implies u->x in follows
-- div,1
all u,u1:User | all p:Photo - Ad | p in u.posts and p in u1.sees implies u in u1.follows
-- div,1
all p: Photo, u1,u2: User | p not in Ad and u1->p in sees and u2->p in posts implies u1 in follows.u2
-- div,1
all u:User, u2:User, p:Photo-Ad | (u in sees.p and u2 in posts.p) implies u in follows.u2
-- div,2
all u1, u2 : User, p: Photo | p in u1.posts => p not in Ad and p in u2.sees => u1 in u2.follows
-- div,4
all u1, u2 : User, p: Photo | p in u1.posts => p not in Ad and p in u2.sees implies u2->u1 in follows
-- div,2
all u1,u2 : User | all p : (Photo-Ad) | p in u1.sees and p in u2.posts implies u2 in u1.follows
-- div,3
all p : Photo - Ad| all u1, u2 : User | (p in u1.sees and p in u2.posts) implies u2 in u1.follows
-- div,2
all p: Photo, u1,u2: User | p not in Ad and u1->p in sees and u2->p in posts implies u1->u2 in follows
-- div,2
all p : Photo - Ad | all u1, u2 : User | u1 in sees.p and u2 in posts.p => u1 in follows.u2
-- div,1
all p : Photo - Ad| all u1,u2 : User | p in u2.posts and p in u1.sees implies u2 in u1.follows
-- div,6
all u1, u2 : User, p: Photo | u1 in posts.p implies p not in Ad and p in u2.sees implies u2->u1 in follows
-- div,1
(all ref0:(one User),ref1:(one Photo)|(((ref1 in (ref0 . (User <: sees))) => ((ref1 . (~ (User <: posts))) in (ref0 . (User <: follows)))) || (ref1 in Ad)))
-- div,1
all u1,u2 : User | all p : Photo - Ad | p in u2.posts and p in u1.sees implies u2 in u1.follows
-- div,6
all u1, u2: User, p:Photo | p in Ad or ((u1->p in sees and u2->p in posts) => u1->u2 in follows)
-- div,4
all u1,u2:User, p:Photo | u1->p in sees and u2->p in posts implies p in Ad or u1->u2 in follows
-- div,1
all u1, u2 : User, p: Photo | u1 in posts.p implies p not in Ad and u2->p in sees implies u2->u1 in follows
-- div,1
all u1, u2 : User, p : Photo | (u1 -> p in sees and u2 -> p in posts) => (u1 -> u2 in follows or p in Ad)
-- div,1
all x,y: User | all p: Photo | p in x.sees and p in y.posts implies (y in x.follows or p in Ad)
-- div,6
all u1, u2 : User, p: Photo | u1->p in posts implies p not in Ad and u2->p in sees implies u2->u1 in follows
-- div,2
all p : Photo-Ad | all u1, u2 : User | (u1->p in sees and u2->p in posts) => u1->u2 in follows
-- div,2
all x,y: User | all p: Photo | p not in Ad and x->p in sees and y->p in posts implies x->y in follows
-- div,1
all x,z : User | all p : Photo | x->p in sees and p not in Ad and z->p in posts implies x->z in follows
-- div,1
all x, y : univ | x->y in sees implies y in Ad or all z : univ | z->y in posts implies x->z in follows
-- div,3
all u:User, u2:User, p:Photo | (u2 not in u.follows and p in u2.posts and p in u.sees) implies p in Ad
-- div,1
all x : User, y : Photo, z : User | y not in Ad and z -> y in posts and x -> y in sees implies x -> z in 		follows
-- div,3
all x : Photo | x not in Ad implies all y,z : User | y->x in posts and z->x in sees implies z->y in follows
-- div,3
all u:User, u2:User, p:Photo | p in u.sees implies (p in Ad or ( p in u2.posts implies u2 in u.follows ))
-- div,1
all u1,u2 : User | all p : Photo | (p in u1.posts and p in u2.sees and p not in Ad) implies u1 in u2.follows
-- div,1
all p : Photo | all u1, u2 : User | p not in Ad and u1 in sees.p and u2 in posts.p => u1 in follows.u2
-- div,1
all u: User, p: Photo, us: User | p in u.sees implies (p in Ad || (p in us.posts implies us in u.follows))
-- div,2
all p : Photo | all u1, u2 :  User | p in u1.sees and p in u2.posts and p not in Ad implies u2 in u1.follows
-- div,1
all u1,u2: User | all p: Photo | (p in u1.sees and p in u2.posts and p not in Ad) implies u2 in u1.follows
-- div,6
all u1,u2 : User | all p : Photo | (p in u2.posts and p in u1.sees) implies (u2 in u1.follows or p in Ad)
-- div,1
all u:User, u2:User, p:Photo | (p not in Ad and u->p in sees and u2->p in posts) implies u2 in u.follows
-- div,1
all u: User, p: Photo, us: User | u->p in sees implies (p in Ad || (us->p in posts implies us in u.follows))
-- div,1
all u: User, u2: User, y: Photo | (y not in Ad and u->y in sees and u2->y in posts) implies (u->u2 in follows)
-- div,2
all u: User, p: Photo, us: User | p in u.sees implies (p in Ad || (us->p in posts implies u->us in follows))
-- div,1
all u1, u2 : User | all p : univ | p not in Ad and u1->p in posts and u2->p in sees implies u2->u1 in follows
-- div,3
all u:User, u2:User, p:Photo | (p not in Ad and u->p in sees and u2->p in posts) implies u->u2 in follows
-- div,5
all u1, u2 : User | all p : univ | u1->p in posts and u2->p in sees and u2->u1 not in follows implies p in Ad
-- div,1
all u1: User, u2: User, p: Photo | p in u1.sees and p in u2.posts and u2 not in u1.follows implies p in Ad
-- div,2
all u1,u2 : User | all p : Photo | (u1->p in sees and u2->p in posts and p not in Ad) implies u1->u2 in follows
-- div,1
all u: User, p: Photo, us: User | u->p in sees implies (p in Ad || (us->p in posts implies u->us in follows))
-- div,2
all u1: User, u2 : User, p : Photo | (p not in Ad and u1->p in sees and u2->p in posts) implies u1->u2 in follows
-- div,2
all u1,u2 : User | all ph : Photo | (ph in u1.sees) implies (ph in Ad) or (ph in u2.posts implies u2 in u1.follows)
-- div,2
all u1: User, p: Photo, u2: User | u1->p in sees implies (p in Ad || (u2->p in posts implies u1->u2 in follows))
-- div,1
all p: Photo, u1,u2: User| (p in u1.posts and p in u2.sees) implies ((p in Ad) or (p not in Ad and u1 in u2.follows))
-- div,2
all u1 : User | all u2 : User | all p : u2.posts | p not in Ad and u1 -> p in sees implies u2 in u1.follows
-- div,1
all a : User, b : Photo | b in a.sees implies b in Ad or (all c : User | b in c.posts implies c in a.follows)
-- div,1
all x : User | all y : User | all p : Photo - Ad |(p in y.posts and p in x.sees) implies y in x.follows
-- div,1
all u : User, p : Photo | all f : User | u->p in sees and f->p in posts and p not in Ad implies u->f in follows
-- div,1
all x : User, y: Photo | x -> y in sees implies (y in Ad or all v: User | v -> y in posts implies x -> v in follows)
-- div,7
all user1,user2 : User | all p : Photo - Ad | (p in user1.sees and p in user2.posts) implies user2 in user1.follows
-- div,2
all u1, u2 : User, p : Photo | (p in u1.sees and p in u2.posts => u2 in u1.follows) or p in u1.sees and p in Ad
-- div,1
all p:Photo - Ad | all u1:User | all u2:User | (p in u1.posts and p in u2.sees) implies u1 in u2.follows
-- div,5
all p : Photo - Ad | all u : User | all usee : User | p in usee.sees and p in u.posts implies u in usee.follows
-- div,1
all user1, user2: User | all photo: Photo - Ad | (photo in user1.sees and photo in user2.posts) implies user2 in user1.follows
-- div,1
all user1, user2 : User | all photo : Photo - Ad| (photo in user1.posts and photo in user2.sees) implies user1 in user2.follows
-- div,2
all photo: Photo - Ad | all user1, user2: User | photo in user1.sees and photo in user2.posts implies user2 in user1.follows
-- div,1
all user : User, photo : Photo | (photo in user.sees) implies (photo in Ad) or
(all followed : User | (photo in followed.posts) implies (followed in user.follows))
-- div,4
all user : User, photo : Photo | (photo in user.sees) implies (photo in Ad) or
(all followed : User | (photo in followed.posts) implies (user->followed in follows))
-- div,1
all user : User, photo : Photo | (photo in user.sees) implies (photo in Ad) or
(all followed : User | (followed->photo in posts) implies (user->followed in follows))
-- div,1
all user : User, photo : Photo | (photo in user.sees) implies (photo in Ad) or
(all followed : univ | (followed in User) and (followed->photo in posts) implies (user->followed in follows))
-- div,1
all user : User, photo : Photo | (user->photo in sees) implies (photo in Ad) or
(all followed : univ | (followed in User) and (followed->photo in posts) implies (user->followed in follows))
-- div,1
all user, photo : univ | user in User and photo in Photo and user->photo in sees implies (photo in Ad) or
(all followed : univ | followed in User and followed->photo in posts implies user->followed in follows)
-- div,7
all u1, u2 : User | all p : univ | p not in Ad and u1->p in posts and u2->p in sees implies u2->u1 in follows
all u1, u2 : User | all p : univ | u1->p in posts and u2->p in sees and u2->u1 not in follows implies p in Ad
-- div,1
all user, photo : univ | (user in User) and (photo in Photo) and (user->photo in sees) implies (photo in Ad) or
(all followed : univ | (followed in User) and (followed->photo in posts) implies (user->followed in follows))

all u1,u2 : User | all ph : Photo | (ph in u1.sees) implies (ph in Ad) or (ph in u2.posts implies u2 in u1.follows)
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User, a : Ad | u.follows.posts in u.sees
-- div,1
all u : User | all a : Ad | u.follows.posts in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Photo | one sees.x implies one follows.x
-- div,1
-- equiv pair end
-- equiv pair start,1
all a,b : User | all c : Photo | b -> c in posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Photo|all u: User|lone(sees.p & u.follows)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | all y : User | (x -> y in follows)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | (User-u.follows).posts not in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all a : Ad | all b : Influencer | b -> a in posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | x.sees - Ad not in x.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,4
all u : User, u1 : u.follows | u.sees in u1.posts
-- div,1
all u:User | all uf : u.follows | u.sees in uf.posts
-- div,1
all u : User, p : Photo | p in u.sees implies u.follows in posts.p
-- div,1
all u : User, p : Photo, ux : User | u->p in sees implies (u->ux in follows implies ux->p in posts)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | u in posts.Ad implies u.posts in Ad
-- div,1
-- equiv pair end
-- equiv pair start,3
all u: User, p: Photo - Ad | p.~sees in  u.follows
-- div,1
all u1,u2 : User, p : Photo - Ad | u2->p in sees implies u1->u2 in follows
-- div,1
all x,z : User | all p : Photo | x->p in sees and p not in Ad implies z->x in follows
-- div,1
-- equiv pair end
-- equiv pair start,2
User.sees in User.follows.posts + Influencer.posts
-- div,2
-- equiv pair end
-- equiv pair start,1
all x: User | all y: x.sees - Ad | x.posts not in y
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | all y : Photo | y in follows.x.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, p : Photo - Ad | some u.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,6
all u : User, a : Ad | u.sees = u.follows.posts + a
-- div,1
all x:User | all y:Ad| x.sees = x.follows.posts + y
-- div,5
-- equiv pair end
-- equiv pair start,1
all u : User | (User.sees - Ad) = User.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,3
all x : User | x.sees in (x.follows.posts + x.posts)
-- div,1
all u : User | u.sees in u.follows.posts + posts.Ad + u.posts
-- div,2
-- equiv pair end
-- equiv pair start,2
all u:User | u.sees not in (Photo-u.follows.posts-Ad)
-- div,1
all x:User | some y:x.sees | y in Ad or y in x.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, a : Ad | u.follows.posts in u.sees + Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj u1: User, u2: User | some u1.sees & u2.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User, p: Photo | u in u.follows => u in p.~sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:User | all y:Photo| x.sees = x.follows.posts + y
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User, p: Photo - Ad | u in u.follows.posts.~sees
-- div,1
-- equiv pair end
-- equiv pair start,2
User.sees not in User.posts
all y : User | Ad in y.sees
-- div,2
-- equiv pair end
-- equiv pair start,1
all u: User | (u.sees = u.follows.posts + Ad + u.posts)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, p : Photo - Ad | some (u.follows & sees.p)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo - Ad | all u : User | posts.p in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User | some p: Photo, a:Ad | u->p in sees => p!=a
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Influencer | all y : x.sees | y not in User.posts
-- div,1
-- equiv pair end
-- equiv pair start,3
all x,y : User | x.sees in y.posts implies y in x.follows
-- div,1
all x,y : User | x.sees in y.posts implies x->y in follows
-- div,2
-- equiv pair end
-- equiv pair start,5
all u:User | all uf : u.follows | u.sees in (uf.posts+Ad)
-- div,1
all u : User, p : Photo - Ad | p in u.sees implies u.follows in posts.p
-- div,2
all photo : Photo - Ad | all user : User | all follow : user.follows | photo in user.sees implies photo in follow.posts
-- div,2
-- equiv pair end
-- equiv pair start,5
all x : User | some x.sees-Ad implies one x.follows.posts
-- div,5
-- equiv pair end
-- equiv pair start,1
all disj u1: User, u2: User | some u1.sees & u2.posts + Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all a : Ad | (u.follows.posts & a) in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User | all a : Ad | u.sees in (u.follows.posts & a)
-- div,1
all u: User, i: Ad | u.sees in u.follows.posts && u.sees in i
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all p : Photo | u->p in sees and p not in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User, p: Photo - Ad | u in u.follows => u in p.~sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all a : Ad | u.sees in (u.follows.posts + a)
-- div,1
-- equiv pair end
-- equiv pair start,1
one x:User | some y:Photo | y in Ad or y in x.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: User | x.sees != x.posts
all y : User | Ad in y.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u,u2 : User | u2 in u.follows implies u.posts in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,5
all x:User | some y:Photo | y in Ad or y in x.follows.posts
-- div,5
-- equiv pair end
-- equiv pair start,1
all u: User, o: User, p: Ad | u.sees in (o.follows.sees - p)
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj u1: User, u2: User | some u1.sees & (u2.posts + Ad)
-- div,1
-- equiv pair end
-- equiv pair start,2
User.sees - Ad not in User.posts
all y : User | Ad in y.sees
-- div,2
-- equiv pair end
-- equiv pair start,1
all u : User | all p : Photo - Ad | u.follows.posts in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all x, y : User | all z : Ad | x.sees in z and y in x.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | u.sees in Ad implies u.sees in u.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | u.follows.posts in u.sees and u.posts in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | some p : Photo | sees.u - Ad in u.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,2
all ad : Ad | all u: User | ad not in u.posts and ad in u.sees
-- div,2
-- equiv pair end
-- equiv pair start,1
all a,b:User | some p:Photo|b in a.follows  implies p not in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | all y : Photo | y in x.sees and y not in x.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all a:Ad | some u:User | a in u.posts implies (a not in u.sees)
-- div,1
-- equiv pair end
-- equiv pair start,1
all a,b:User | some p:Photo|b in a.follows  implies Ad not in p
-- div,1
-- equiv pair end
-- equiv pair start,1
one x: User | x.sees not in x.posts
all y : User | Ad in y.sees
-- div,1
-- equiv pair end
-- equiv pair start,3
all x: User | x.posts not in x.sees
all y : User | Ad in y.sees
-- div,3
-- equiv pair end
-- equiv pair start,2
all x: User | x.sees not in x.posts
all y : User | Ad in y.sees
-- div,1
all a : Ad | all u : User | a in u.sees
all u : User | u.sees not in u.posts
-- div,1
-- equiv pair end
-- equiv pair start,3
all u : User, a : Ad | u.follows.posts in u.sees and a in u.sees
-- div,1
all u : User, a : Ad | u.follows.posts - a in u.sees and a in u.sees
-- div,1
all u : User | all a : Ad | u.follows.posts in u.sees and a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,2
all u:User | all ad :Ad | ad not in u.posts implies ad in u.sees
-- div,1
all u:User | all ad:Ad | u->ad not in posts implies u->ad in sees
-- div,1
-- equiv pair end
-- equiv pair start,3
all u:User | all ad :Ad | ad in u.sees implies ad not in u.posts
-- div,1
all ad : Ad | all u: User | ad in u.sees implies ad not in u.posts
-- div,1
all u:User | all ad:Ad | u->ad in sees implies u->ad not in posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | x.sees in x.follows.posts or x.sees = (Photo + Ad)
-- div,1
-- equiv pair end
-- equiv pair start,2
all x : User | all y: User | x.sees in y.posts iff x in y.follows
-- div,2
-- equiv pair end
-- equiv pair start,2
all x, y:User, p:Photo | x.sees in y.posts implies y in x.follows
-- div,2
-- equiv pair end
-- equiv pair start,1
all u: User, p: Photo - Ad | u in p.~sees => u in p.~sees.follows
-- div,1
-- equiv pair end
-- equiv pair start,4
all x, y : User | all z : Ad | x.sees not in z and y in x.follows
-- div,4
-- equiv pair end
-- equiv pair start,2
all u: User, p: Photo-Ad | one posts.p and (u.follows.posts) in p
-- div,2
-- equiv pair end
-- equiv pair start,1
all x : User | all y: User | (y.posts in x.sees) iff y in x.follows
-- div,1
-- equiv pair end
-- equiv pair start,2
all x : User | all y: User | (y.posts in x.sees) iff x in y.follows
-- div,2
-- equiv pair end
-- equiv pair start,2
all u: User, p: Photo - Ad | u not in u.follows => u not in p.~sees
-- div,2
-- equiv pair end
-- equiv pair start,1
User.sees = (User.follows.posts + Ad + User.posts) + User.suggested
-- div,1
-- equiv pair end
-- equiv pair start,1
all a,b : User | all c : Photo | b -> c in posts implies c not in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User, p: Photo | (p in u.sees) => (p in u.posts) or (p in Ad)
-- div,1
-- equiv pair end
-- equiv pair start,3
all u : User | all a : Ad | (u.follows.posts + a + u.posts) in u.sees
-- div,1
all u : User | all a : Ad | u.follows.posts in u.sees and a in u.sees and u.posts in u.sees
-- div,2
-- equiv pair end
-- equiv pair start,1
all u : User | all a : Ad | u.sees in u.follows.posts and a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all ad:Ad, p:Photo, u:User | p not in Ad implies posts.p in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all a : Ad | (u.follows.posts & a & u.posts) in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | some p : Photo | p in u.sees iff u in (posts.p).follows
-- div,1
-- equiv pair end
-- equiv pair start,3
all u:User, p:Photo| p in u.follows.sees
all a:Ad, u:User| a in u.sees
-- div,1
all u:User, p:Photo | p in u.follows.sees
all u:User, a: Ad  | a in u.sees
-- div,2
-- equiv pair end
-- equiv pair start,1
all u : User ,p : Photo | p in Ad => p in u.sees || p in u.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,6
all u : User, p : Photo-Ad| (p in u.follows.posts) implies (p in u.sees)
-- div,1
all p: Photo - Ad, u: User | p in u.follows.posts => p in u.sees
-- div,1
all p: Photo, u: User | p in u.follows.posts => (p in u.sees or p in Ad)
-- div,1
all u : User | all p : Photo - Ad | p in u.follows.posts implies p in u.sees
-- div,1
all u : User | all p : Photo - Ad | p in u.follows.posts implies u in sees.p
-- div,1
all p : Photo | all u1,u2 : User | u2 in u1.follows and p in u2.posts and p not in Ad implies p in u1.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | some y : User | x.sees in y.posts && not x.sees in posts.x
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | some y : User | x.sees in y.posts && not x.sees in x.posts
-- div,1
-- equiv pair end
-- equiv pair start,6
all x,y : User, p : Photo | p in x.sees && p in y.posts => y in follows.x
-- div,2
all x,y : User, z : Photo | x->z in posts and y->z in sees implies x->y in follows
-- div,1
all p: Photo | all u,u1: User | p in u.posts and p in u1.sees implies u1 in u.follows
-- div,1
all p : Photo | all u1,u2 : User | p in u2.posts and p in u1.sees implies u2 in follows.u1
-- div,1
all p : Photo | all u1,u2 : User | p in u2.posts and p in u1.sees implies u1 in u2.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | all y : x.follows.posts | all z: Ad | y in x.sees and y!=z
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: User | no x.sees or x in x.follows
all a: Ad, u: User | a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u, v: User | u in v.follows => u.posts in v.sees
no p: Photo | p in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
one u, j : User | all p : Photo | u -> p in sees implies u -> j in follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Photo, y : User | x in sees.x iff x in follows.y.posts and x in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all a : Ad | u.follows.posts in u.sees or u.posts in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,7
all u1,u2 : User, p : Photo - Ad | u2->p in sees implies u2->u1 in follows
-- div,1
all u1, u2 : User, p : Photo | u1 -> p in sees => (u1 -> u2 in follows or p in Ad)
-- div,1
all x,z : User | all p : Photo | x->p in sees and p not in Ad implies x->z in follows
-- div,2
all u:User, u2:User, p:Photo | u2 not in u.follows and p in u.sees implies p in Ad
-- div,1
all u,u2:User, p:Photo | u->p in sees implies ((u->u2 in follows and p not in Ad) or (p in Ad))
-- div,1
all u, j : User | all p : Photo-Ad | u -> p in sees implies u -> j in follows




all u : User | all  a : Ad-Photo | u -> a in sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all a : Ad | u.follows.posts in u.sees and u.posts in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all p : Photo - Ad | p in u.follows.posts implies p in sees.u
-- div,1
-- equiv pair end
-- equiv pair start,8
all u : User | all p : u.follows.posts | (p in u.sees) implies (p not in Ad)
-- div,1
all u:User, p:Photo | p in u.sees and p in Ad implies p not in u.follows.posts
-- div,1
all u:User| all p:Photo | (p in u.sees and p in u.follows.posts) implies p not in Ad
-- div,1
all x,y: User | all z: Ad | x->y in follows and y->z in posts implies x->z not in sees
-- div,2
all x,y: User | all z: Photo | x->y in follows and y->z in posts and z in Ad implies z not in x.sees
-- div,1
all x,y: User | all z: Photo | x->y in follows and y->z in posts and z in Ad implies x->z not in sees
-- div,1
all u : User | all p : u.follows.posts | all ad: Ad| ad in u.sees and (p in u.sees) implies (p not in Ad)
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User, u1 : u.follows | all a : Ad | u.sees in u1.posts or u.sees in a
-- div,1
all u : User | all  u1 : u.follows | all a : Ad | u.sees in u1.posts or u.sees in a
-- div,1
-- equiv pair end
-- equiv pair start,2
all x, y:User, a:Ad | x.sees in y.posts implies y in x.follows or a in x.sees
-- div,1
all x, y:User, a:Ad | x.sees in y.posts implies (y in x.follows or a in x.sees)
-- div,1
-- equiv pair end
-- equiv pair start,4
all a:Ad, u, u2: User | a in u.sees and u2.posts in u.sees => u2 in u.follows
-- div,2
all a:Ad, u, u2: User, p: Photo | a in u.sees and u2.posts in u.sees => u2 in u.follows
-- div,2
-- equiv pair end
-- equiv pair start,1
all x, y: User, f: Photo | y in follows.x implies f in posts.y and f in sees.x
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User, p: Photo - Ad | u in u.follows => (u in p.~sees or u in Ad.~sees)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, a : Ad | u.follows.posts - a - u.posts in u.sees and a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, u1 : u.follows | all a : Ad | u.sees in u1.posts or u.sees in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | some x.sees-Ad implies one x.follows.posts and no follows & iden
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User | u.follows.posts in u.sees and u.posts in u.sees and Ad in u.sees
-- div,1
all u:User | u.follows.posts & (Photo-Ad) in u.sees

all u:User | Ad in u.sees
all u:User |u.posts in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,4
all u1:User | all p:u1.posts | one u2:u1.follows | p not in Ad and p in u2.posts
-- div,3
all u1:User | all p:u1.posts | one u2:u1.follows | (p not in Ad and p in u2.posts) or (p in Ad and p not in u1.posts)
-- div,1
-- equiv pair end
-- equiv pair start,8
all p:Photo-Ad, x,y:User| x->p in sees and y->p in posts implies y->x in follows
-- div,1
all u1,u2:User, p:Photo-Ad | u1 in sees.p and p in u2.posts implies u1 in u2.follows
-- div,1
all u1,u2:User, p:Photo-Ad | u1 in sees.p and u2 in posts.p implies u1 in u2.follows
-- div,1
all u1, u2 : User, p : Photo | p in u1.posts => p not in Ad and p in u2.sees => u2 in u1.follows
-- div,1
all x,y: User | all p: Photo | p in x.sees and p in y.posts implies (x in y.follows or p in Ad)
-- div,1
all p: Photo | all u,u1: User | p not in Ad and p in u.posts and p in u1.sees implies u1 in u.follows
-- div,1
all x,y : User, p : Photo | ((p in x.sees && p in y.posts && p not in Ad) => y in follows.x) || p in Ad
-- div,1
all u1,u2 : User | all p : Photo | (u1->p in posts and u2->p in sees and p not in Ad) implies u1->u2 in follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | one p : Photo | p in u.sees iff (p in Ad or p in u.follows.posts)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:User |all a:Ad| a not in x.follows.posts
all x:User |all a:Ad| a in x.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:User | some y:Photo | y in Ad or y in x.follows.posts and y not in x.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, p : Photo | p in u.sees implies p not in Ad && posts.p in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User | some p : Photo | p in u.sees iff (p in Ad or p in u.follows.posts)
-- div,2
-- equiv pair end
-- equiv pair start,1
all u: User | all p: u.follows.posts | all ad: Ad |  p in u.sees and ad in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all  u1 : User - u | all a : Ad | u.sees in u1.posts or u.sees in a
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all p : u.follows.posts | all ad : Ad | ad in u.sees and p not in Ad
-- div,1
-- equiv pair end
-- equiv pair start,4
all u : User, p : u.posts | p not in u.sees
all u : User | u.sees in u.follows.sees
-- div,4
-- equiv pair end
-- equiv pair start,1
all x:User | x not in x.follows
all x:User | all y:Ad| x.sees = x.follows.posts + y
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User, p: Photo - Ad | u in u.follows => (p in p.~posts.sees or u in Ad.~sees)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User, p: Photo - Ad | u not in u.follows => u not in p.~sees or u in Ad.~sees
-- div,1
-- equiv pair end
-- equiv pair start,2
all u: User, p: Photo - Ad | u in u.follows => (u in p.~posts.sees or u in Ad.~sees)
-- div,1
all u: User, p: Photo - Ad | u in u.follows => (u in p.~posts.~sees or u in Ad.~sees)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Photo |all u1,u2:User | p in u2.posts and u2 in u1.follows implies Ad not in p
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | (all y : x.sees | y not in User.posts) and
(all z : Ad | z in x.sees)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | all y : x.sees | some k : x.follows | (y not in Ad) or (y in k.posts)
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User, p : Photo - Ad | p in u.sees implies (some x : User - u | p in x.posts)
-- div,1
all u:User, p:Photo-Ad | p in u.sees implies some v:User-u | p in v.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User |some p : Photo | p not in Ad and p in (x.follows).posts and p in x.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User |some p : Photo | p not in Ad and p in x.sees iff p in (x.follows).posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | some p : Photo | p in u.sees and p not in Ad iff u in (posts.p).follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User, p: Photo - Ad | u in u.follows => ((u not in p.~sees) or (u in Ad.~sees))
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | all p:Photo | p in User.sees and u in User.follows implies (p in u.posts)
-- div,1
-- equiv pair end
-- equiv pair start,1
some x : User |some p : Photo | p not in Ad and p in (x.follows).posts and p in x.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u,x:User| one p:Photo - Ad| u->p in sees and x->p in posts implies u->x in follows
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User | all  u1 : u.follows -u  | all a : Ad | u.sees in u1.posts or u.sees in a
-- div,2
-- equiv pair end
-- equiv pair start,1
all u: User, p: Photo - Ad | u in u.posts.~sees => (p in p.~posts.sees or u in Ad.~sees)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all a : Ad | u.follows.posts in u.sees or a in u.sees or u.posts in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, p : Photo | some f : User | u->p in sees => u->f in follows
User in sees.Ad
-- div,1
-- equiv pair end
-- equiv pair start,4
all x1,x2:User,p:Photo | p in x1.sees and p in x2.posts implies x2 in x1.follows or x1=x2
-- div,2
all p : Photo | all u1, u2 : User | u1 in sees.p and u2 in posts.p and u1 != u2 => u1 in follows.u2
-- div,2
-- equiv pair end
-- equiv pair start,2
all x : Photo-Ad | all y,z : User | (y in sees.x and z in posts.x) implies z in x.follows
-- div,1
all u: User, u2: User, y: Photo | (y not in Ad and u->y in sees and u2->y in posts) implies (u->y in follows)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p,p2 : Photo | lone u , u2 : User | p in u.sees and u2 in u.follows and p in u2.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Photo | all u:User | p in u.sees and p not in Ad implies one u2:User | p in u2.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, a : Ad | u.follows.posts in u.sees and a in u.sees and u.posts not in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Influencer | all y : Photo | all z: Ad | y in x.sees and y not in x.posts and y!=z
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all a : Ad | u.follows.posts in u.sees and a in u.sees or u.posts in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Photo -Ad | all u1,u2:User | u1 in u2.follows and p in u1.posts implies p in u1.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1:User | some p:Photo, u2:User | (u1->p in sees and p not in Ad) => u1->u2 in follows
-- div,1
-- equiv pair end
-- equiv pair start,1
some u1,u2: User | all p: Photo | (p in u1.sees and p in u2.posts) implies u2 in u1.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all a : Ad | u.sees in u.follows.posts and a in u.sees and u.posts in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1:User , u2:User | u1 -> (u1.sees - Ad) in sees implies u2 -> u1.follows.posts in sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1,u2 : User | u2.posts in u1.sees implies u2 in u1.follows

all a : Ad | a in User.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Photo, u1,u2: User| p in u1.sees implies ((p not in Ad and p in u2.posts) or p in Ad)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all p : Photo - Ad | p in u.follows.posts and p in u.posts implies u in sees.p
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1,u2:User | some p:Photo-Ad | u1->p in sees implies u2->p in posts and u1->u2 in follows
-- div,1
-- equiv pair end
-- equiv pair start,8
all x,y : User, p : Photo, a : Ad | (p != a && p in x.sees && p in y.posts) => y in follows.x
-- div,2
all x,y : User, p : Photo, a : Ad | ((p in x.sees && p in y.posts) => (y in follows.x)) || (p = a)
-- div,1
all x,y : User, p : Photo, a : Ad | ((p in x.sees && p in y.posts && p != a) => y in follows.x) || (p = a)
-- div,1
all x,y : User, p : Photo, a : Ad | ((p in x.sees && p in y.posts) => (y in follows.x && p != a)) || (p = a)
-- div,3
all u1,u2 : User | all p1 : Photo | all ad : Ad | p1 in u1.sees and p1 in u2.posts and p1 != ad implies u1 in u2.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1:User , u2:User | u1 -> (u2.posts - Ad) in sees  implies u2 -> u1.follows.posts in sees
-- div,1
-- equiv pair end
-- equiv pair start,2
all p:Photo | some x,y:User | p in x.sees implies (p in y.posts and y in x.follows) or p in Ad
-- div,1
all p : Photo | (some u1 : User | u1->p in sees and p not in Ad implies (some u2:User | u2->p in posts and u1->u2 in follows))
-- div,1
-- equiv pair end
-- equiv pair start,3
all u : User | all p : Photo | u->p in sees and p not in Ad implies u not in follows.(posts.p)
-- div,1
all u:User| all p:Photo | (p not in Ad) implies not (p in u.sees and p in u.follows.posts)
-- div,1
all u:User | all uf: u.follows | all p:Photo | (p in uf.posts) implies (p not in Ad) && (p in u.sees) implies (p in Ad)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1:User | all p:u1.posts | one u2:u1.follows | (p not in Ad and p in u2.posts) or (p in Ad)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x,y : User, p : Photo, a : Ad | (p in x.sees && p in y.posts) => (y in follows.x && p != a)
-- div,1
-- equiv pair end
-- equiv pair start,2
all a,u,f,s : univ | u in User and u-> f in follows and u -> s in sees and a in Ad implies s!=a
-- div,1
all u1,u2 : User | all p : Photo | p in u1.sees implies ((p in Ad and u2 not in u1.follows) or (p not in Ad ))
-- div,1
-- equiv pair end
-- equiv pair start,3
all u : User, p : Photo - Ad | p in u.sees implies u.follows in posts.p
all a : Ad | some sees.a
-- div,3
-- equiv pair end
-- equiv pair start,1
all x, z : User, y : Photo | no Ad and (z in posts.y) and (x in sees.y) implies (x in follows.z)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User, p: Photo - Ad | u in u.follows.posts.~sees => (p in p.~posts.sees or u in Ad.~sees)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo | some disj u1,u2 : User |  p in u1.sees and p in u2.posts implies u2 in u1.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User, p: Photo - Ad | u in u.follows => u in p.~sees
all u: User | u.sees = u.follows.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, p : Photo - Ad | p in u.sees implies u.follows in posts.p
all a : Ad | sum sees.a > 0
-- div,1
-- equiv pair end
-- equiv pair start,3
all u:User | some p: Photo - Ad | some x:User |p in u.sees implies  x in u.follows and p in x.posts
-- div,1
all u:User | some p:Photo-Ad | u->p in sees implies some u2:User| u2->p in posts and u->u2 in follows
-- div,2
-- equiv pair end
-- equiv pair start,1
all x,y: User | all p: Photo | p != Ad implies (p in x.sees && p in x.posts) implies x in y.follows
-- div,1
-- equiv pair end
-- equiv pair start,3
all u:User | all uf : u.follows | u.sees in uf.posts
all pa: Photo-Ad | all us:User | pa in us.sees
-- div,3
-- equiv pair end
-- equiv pair start,7
all u, j : User | all p : Photo | u -> p in sees implies u -> j in follows
all a : Ad | some sees.a
-- div,4
all ad: Ad | ad in User.sees
all photo: Photo | all user1, user2: User | photo in user1.sees implies user2 in user1.follows
-- div,1
all u, j : User | all p : Photo | u -> p in sees implies u -> j in follows
all u : User| all i : Influencer| all p : Photo | u -> p in sees implies u -> i in follows




all a : Ad | some sees.a
-- div,1
all u, j : User | all p : Photo | u -> p in sees implies u -> j in follows
all u : User| all i : Influencer| all p : Photo | u -> p in sees implies u -> i in follows



all a : Ad | some u : User | u -> a in sees
-- div,1
-- equiv pair end
-- equiv pair start,2
all u,u1:User | all p:Photo | p in u.posts and p in u1.sees implies u in u1.follows and p not in Ad
-- div,1
all u1, u2: User | all p: Photo | u1->p in sees and u2->p in posts implies p not in Ad and u1->u2 in follows
-- div,1
-- equiv pair end
-- equiv pair start,2
all x : User | all y : Photo | all z: Ad | y in x.sees and (y!=z and y in x.follows.posts || y = z)
-- div,2
-- equiv pair end
-- equiv pair start,3
all x:User | some y:User, p:Photo | p in x.sees implies (p in y.posts and y in x.follows) or p in Ad
-- div,1
all u1:User | some p:Photo, u2:User | (u1->p in sees and p not in Ad) => u1->u2 in follows and u2->p in posts
-- div,1
all u1:User | some p:Photo| (u1->p in sees and p not in Ad) => (some u2:User| u1->u2 in follows and u2->p in posts)
-- div,1
-- equiv pair end
-- equiv pair start,5
all u:User | some p: Photo - Ad | some x:User | (p in x.posts and p in u.sees) implies x in u.follows
-- div,4
all u:User | some p: Photo - Ad | some x:User | (p in x.posts and p in u.sees) implies x in u.follows
all u:User | all a: Ad | a in u.sees implies a in Ad
-- div,1
-- equiv pair end
-- equiv pair start,2
all u,u2:User | all p:Photo | u != u2 and u->u2 in follows and u->p in sees implies (u2->p in posts )
-- div,2
-- equiv pair end
-- equiv pair start,1
all p:Photo |all u1,u2:User | p in u2.posts and u2 in u1.follows implies p in u1.sees and Ad not in p
-- div,1
-- equiv pair end
-- equiv pair start,1
all x, z : User, y : Photo | no sees.Ad and (z in posts.y) and (x in sees.y) implies (x in follows.z)
-- div,1
-- equiv pair end
-- equiv pair start,1
all add: Ad, p: Photo, u1,u2: User| p in u1.sees implies ((p not in Ad and p in u2.posts) or p in Ad)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User | all p: u.follows.posts | all ad: Ad |  p in u.sees and ad in u.sees and u.posts in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,9
all u1: User, u2: User, p: Photo, a: Ad | u1->p in sees implies u2->p in posts implies u1->u2 in follows
-- div,1
all p : Photo | all a : Ad | all u1, u2 : User | (p in u1.sees and p in u2.posts) implies u2 in u1.follows
-- div,1
all u1: User, p: Photo, a: Ad | u1->p in sees implies all u2: User | u2->p in posts implies u1->u2 in follows
-- div,7
-- equiv pair end
-- equiv pair start,1
all user1,user2 : User | all p : Photo - Ad | (p in user1.sees and p in user2.posts) implies user1=user2
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo-Ad | some disj u1,u2 : User |  ((p in u1.sees and p in u2.posts) implies u2 in u1.follows)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u,f,p,s : univ | u in User and u-> f in follows and f -> p in posts and u -> s in sees implies s = p
-- div,1
-- equiv pair end
-- equiv pair start,1
all p,p2 : Photo | lone u , u2 : User | p in u.sees and (( u2 in u.follows and p in u2.posts) or p in Ad)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Photo - Ad | some u1:User | all u2:User | (p in u1.posts and p in u2.sees) implies u1 in u2.follows
-- div,1
-- equiv pair end
-- equiv pair start,4
all x: User | ( all p : x.sees | p not in Ad implies (one u : User | p in u.posts implies u in x.follows))
-- div,4
-- equiv pair end
-- equiv pair start,7
all disj u,u2 : User, p:Photo | (p not in Ad and u->p in sees and u2->p in posts) implies u->u2 in follows
-- div,1
all disj u,u2 : User | all p:Photo | (p not in Ad and u->p in sees and u2->p in posts) implies u->u2 in follows
-- div,1
all p: Photo | all u,u1: User | p not in Ad and p in u.posts and p in u1.sees and u!=u1 implies u1->u in follows
-- div,1
all u1: User, u2: User, p: Photo | u1 != u2 and p in u1.sees and p not in Ad and p in u2.posts implies u2 in u1.follows
-- div,1
all u1: User, u2: User, p: Photo | u1 != u2 and p in u1.sees and p in u2.posts and u2 not in u1.follows implies p in Ad
-- div,1
all p:Photo | all u:User,u2:User | u != u2 and p in u.sees and p in u2.posts and p not in Ad implies u2 in u.follows
-- div,1
all u : User, p : Photo | all f : User | u->p in sees and f->p in posts and p not in Ad implies u->f in follows or u = f
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, p : Photo | some f : User |
u->f in follows && f->p in posts => u->p in sees
User in sees.Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User  | some p: Photo - Ad | some x:User | (p in x.posts and p in u.sees) implies x not in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
one u1,u2: User | all p: Photo | u1->p in sees and u2->p in posts and p not in Ad implies u1->u2 in follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo | some u1,u2 : User |  (p in u1.sees and p in u2.posts) implies u2 in u1.follows else p in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
some u1,u2: User | all p: Photo | (p in u1.sees and p in u2.posts and p not in Ad) implies u2 in u1.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo | some u : User | p in u.sees and p in Ad or one u1 : User | p in u1.posts and
u1 in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,6
all u1, u2 : User, p : Photo , a : Ad | (p != a && u1 in posts.p && u2 in sees.p) implies (u2 in follows.u1)
-- div,1
all u1,u2 : User | all p1 : Photo | all ad : Ad | p1 in u1.sees and p1 in u2.posts and p1 != ad implies u2 in u1.follows
-- div,2
all u1,u2 : User | all p1 : Photo | all ad : Ad | p1 in u1.sees and p1 in u2.posts and p1 != ad implies u2 in u1.follows
all ad : Ad | all u1 : User | ad in u1.sees or ad not in u1.sees
-- div,3
-- equiv pair end
-- equiv pair start,1
all u1, u2: User | some p: Photo | u1->p in sees and u2->p in posts implies p not in Ad and u1->u2 in follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1:User | some p:Photo, u2:User | (u1->p in sees and p not in Ad and u2->p in posts) => u1->u2 in follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:User | some y:User, p:Photo | p in x.sees implies (p in y.posts and y in x.follows and x!=y) or p in Ad
-- div,1
-- equiv pair end
-- equiv pair start,5
all p:Photo | all u:User,u2:User | p in u.sees and p in u2.posts implies u2 in u.follows and p not in u.posts
-- div,2
all p:Photo | all u:User,u2:User | p in u.sees and p in u2.posts implies u2 in u.follows
all p:Photo | all u:User | p in u.sees implies p not in u.posts
-- div,1
all p:Photo | all u:User,u2:User | p in u.sees and p in u2.posts implies u2 in u.follows
all p:Photo | all u:User | p in u.sees implies p not in u.posts
all p:Photo | all u:Influencer | p in u.sees implies p not in u.posts
-- div,1
all p:Photo | all u:User | p in u.sees implies p not in u.posts
all p:Photo | all u:Influencer | p in u.sees implies p not in u.posts
all p:Photo | all u:User,u2:User | p in u.sees and p in u2.posts implies u2 in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,5
all x,y: User | all p: Photo | p != Ad  && x != y implies (p in x.sees && p in y.posts) implies x in y.follows
-- div,5
-- equiv pair end
-- equiv pair start,2
all x,y: User | all p: Photo | p != Ad  && x != y implies (p in x.sees && p in x.posts) implies x in y.follows
-- div,2
-- equiv pair end
-- equiv pair start,1
all u:User, p:Photo | u->p in sees implies ((lone u2:User | u->u2 in follows and u2->p in posts) or (p in Ad))
-- div,1
-- equiv pair end
-- equiv pair start,4
all x,y: User | all p: Photo | p != Ad and x != y implies (p in x.sees and p in y.posts) implies y in x.follows
-- div,4
-- equiv pair end
-- equiv pair start,1
all p: Photo | all u,u1: User | p not in Ad and p in u.posts and p in u1.sees and u!=u1 implies u1 in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Photo | all u:User | p in u.sees and p not in Ad implies one u2:User | p in u2.posts and p not in u.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo | some disj u1,u2 : User |  (p in u1.sees and p in u2.posts) implies u2 in u1.follows else p in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | all y : Photo | all u : User | all a : Ad | y in a and u not in x.follows implies y not in x.sees
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Photo | some disj u1,u2 : User |  ((p in u1.sees and p in u2.posts) implies u2 in u1.follows) or p in Ad
-- div,1
all p : Photo | some disj u1,u2 : User |  p in Ad or (p in u1.sees and p in u2.posts) implies u2 in u1.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1 : User | all ph : Photo |  some inf : Influencer |
u1 -> ph in sees implies (ph in inf.posts or ph in Ad)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1:User | all p:Photo | (u1->p in sees and p not in Ad) implies some u2:User | u1->u2 in follows and u1 != u2
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | Ad in u.sees
all u : User | all p : u.sees - Ad | some f : u.follows | p in f.posts or p in u.posts
-- div,1
-- equiv pair end
-- equiv pair start,4
all u1,u2 : User | all p : Photo | u1->p in sees implies u1->u2 in follows
all u : User | all a : Ad | a in u.sees
-- div,1
all u, j : User | all p : Photo | u -> p in sees implies u -> j in follows
all u : User| all i : Influencer| all p : Photo | u -> p in sees implies u -> i in follows



all a : Ad | all u : User | u -> a in sees
-- div,1
all u, j : User | all p : Photo | u -> p in sees implies u -> j in follows
all u : User| all i : Influencer| all p : Photo | u -> p in sees implies u -> i in follows



all u : User | all  a : Ad | u -> a in sees
-- div,1
all u, j : User | all p : Photo | u -> p in sees implies u -> j in follows
all u : User| all i : Influencer| all p : Photo | u -> p in sees implies u -> i in follows



all u : User | all  a : Ad | u -> a in sees
all i : Influencer | all  a : Ad | i -> a in sees
-- div,1
-- equiv pair end
-- equiv pair start,1
one u1,u2:User|all p1,p2:Photo|p1 not in Ad implies (u1->u2 in follows and u2->p1 in posts implies u1->p1 in sees)
-- div,1
-- equiv pair end
-- equiv pair start,2
User.sees = User.follows.posts + Ad + User.posts
Influencer.sees = Influencer.follows.posts + Ad + Influencer.posts
-- div,1
User.sees = User.follows.posts + Ad + User.posts - User.suggested
Influencer.sees = Influencer.follows.posts + Ad + Influencer.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all p,p2 : Photo | lone u , u2 : User | u.posts not in u.sees and p in u.sees and u2 in u.follows and p in u2.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | all y : Photo | all u : User | all a : Ad | y not in a and u not in x.follows implies y not in x.sees
-- div,1
-- equiv pair end
-- equiv pair start,2
all u1:User | all p:u1.posts | one u2:u1.follows | p not in Ad and p in u2.posts
all a:Ad | all u:User | a in u.sees
-- div,2
-- equiv pair end
-- equiv pair start,3
all x,y:User | all a:Ad | x->a in sees implies x->y in follows and y->a in posts
all x:User | all a:Ad | x->a in sees
-- div,3
-- equiv pair end
-- equiv pair start,2
all a : Ad | one u : Influencer | u->a in posts
all a,b : User | all p : Photo | a->b in follows implies a->p in sees
-- div,1
all a : Ad | one u : Influencer | u->a in posts
all a,b : User | all p : Photo | a->b in follows implies a->p in sees
all a,b : User | all p : Photo | b->a in follows implies b->p in sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1,u2:User, p:Photo | p in u1.posts implies p not in Ad
all p:Photo , a: Ad , u:User | p in u.sees implies p in a
-- div,1
-- equiv pair end
-- equiv pair start,4
all a : Ad | a in User.sees
all p : Photo | all u1,u2 : User | p in u2.posts and p in u1.sees implies u2 in u1.follows
-- div,1
all user1, user2 : User | all photo : Photo | (photo in user1.posts and photo in user2.sees) implies user1 in user2.follows
all ad : Ad | ad in User.sees
-- div,1
all user1, user2: User | all photo: Photo | (photo in user1.sees and photo in user2.posts) implies user2 in user1.follows
all ad : Ad | ad in User.sees
-- div,1
all ad: Ad | ad in User.sees
all photo: Photo | all user1, user2: User | photo in user1.sees and photo in user2.posts implies user2 in user1.follows
-- div,1
-- equiv pair end
-- equiv pair start,2
all p: Photo, u1,u2: User| p in u1.sees implies ((p not in Ad and p in u2.posts) or (p in Ad and p not in User.posts))
-- div,2
-- equiv pair end
-- equiv pair start,1
all u,f : User ,p, s : Photo ,a : Ad | u -> s in sees implies u-> f in follows and f -> p in posts and s = p  or s = a
-- div,1
-- equiv pair end
-- equiv pair start,2
all x,y : User, z : Photo | x->z in posts and y->z in sees implies x->y in follows
all x : User, y : Ad | x->y in sees
-- div,1
all u1,u2 : User | all p : Photo | (u1->p in posts and u2->p in sees) implies u1->u2 in follows
all a : Ad | all u : User | u->a in sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1,u2:User, p:Photo | p in u1.posts implies p not in Ad
all p:Photo , a: Ad , u:User | p in u.sees implies p in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all x,y : User, p : Photo, a : Ad | ((p in x.sees && p in y.posts && x != y) => (y in follows.x && p != a)) || (p = a)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1,u2 : User | all p : Photo | u1!=u2 and u1->p in sees implies ((u2->p in posts and u1->u2 in follows) or (p in Ad))
-- div,1
-- equiv pair end
-- equiv pair start,2
all p:Photo | all u:User,u2:User | p in u.sees and p in u2.posts and p != Ad implies u2 in u.follows and p not in u.posts
-- div,2
-- equiv pair end
-- equiv pair start,4
all a : Ad | a in User.sees
all p : Photo - Ad| all u1,u2 : User | p in u2.posts and p in u1.sees implies u2 in u1.follows
-- div,1
all u, x : User, p : Photo | p not in Ad and p in u.sees and p in x.posts implies x in u.follows
all a : Ad | some u : User | a in u.sees
-- div,1
all user1, user2 : User | all photo : Photo - Ad| (photo in user1.posts and photo in user2.sees) implies user1 in user2.follows
all ad : Ad | ad in User.sees
-- div,1
all ad: Ad | ad in User.sees
all photo: Photo - Ad | all user1, user2: User | photo in user1.sees and photo in user2.posts implies user2 in user1.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:User | some y:User, p:Photo | p in x.sees implies (p in y.posts and y in x.follows and x not in x.follows) or p in Ad
-- div,1
-- equiv pair end
-- equiv pair start,2
all p:Photo,u1:User | p not in Ad and (u1 -> p in sees implies (all u2:User | u2 -> p in posts implies u1 -> u2 in follows))
-- div,2
-- equiv pair end
-- equiv pair start,1
all p:Photo,u1:User | p not in Ad and (u1 -> p in sees implies (all u2:User | u2 -> p in posts implies u2 -> u1 in follows))
-- div,1
-- equiv pair end
-- equiv pair start,2
all a : Ad | a in User.sees
all u1, u2 : User, p : Photo | p in u1.posts => p not in Ad and p in u2.sees => u2 in u1.follows
-- div,1
all u1,u2 : User | all p : Photo | (u1->p in posts and u2->p in sees and p not in Ad) implies u1->u2 in follows
all a : Ad | some u : User | u->a in sees
-- div,1
-- equiv pair end
-- equiv pair start,2
all u, j : User | all p : Photo-Ad | u -> p in sees implies u -> j in follows




all u : User | all  a : Ad | u -> a in sees
-- div,1
all u1: User, u2: User, p: Photo | p in u1.sees and p not in Ad implies u2 in u1.follows
all a: Ad, u: User | a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,14
all u1, u2 : User, p : Photo | (u1 in posts.p && u2 in sees.p) implies (u2 in follows.u1)

all u : User, a : Ad | u in sees.a
-- div,3
all a : Ad, u:User | u->a in sees
all u1, u2 : User, p:Photo | u1 -> p in sees and u2 -> p in posts implies u1->u2 in follows
-- div,1
all u,uu:User, pht:Photo | uu->pht in posts and u->uu not in follows implies u->pht not in sees



all ad:Ad, u:User | u->ad in sees
-- div,2
all u,u1:User | all p:Photo | p in u.posts and p in u1.sees implies u in u1.follows
all a : Ad | all u : User | a in u.sees
-- div,1
all u1,u2 : User | all p : Photo | p in u2.posts and p in u1.sees implies u2 in u1.follows
all a : Ad | all u : User | a in u.sees
-- div,2
all user1, user2 : User | all photo : Photo | (photo in user1.posts and photo in user2.sees) implies user1 in user2.follows
all user : User | Ad in user.sees
-- div,1
all user1, user2 : User | all photo : Photo | (photo in user1.posts and photo in user2.sees) implies user1 in user2.follows
all user : User | all ad : Ad | ad in user.sees
-- div,1
all user1, user2: User | all photo: Photo | (photo in user1.sees and photo in user2.posts) implies user2 in user1.follows
all ad : Ad | all user: User | ad in user.sees
-- div,1
all user1, user2 : User | all photo : Photo | (photo in user1.posts and photo in user2.sees) implies user1 in user2.follows
all user : User | all photo : Photo | all ad : Ad | (photo in user.sees) or (ad in user.sees)
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Photo | (some u1 : User | u1->p in sees implies p not in Ad and (some u2:User | u2->p in posts and u1->u2 in follows))
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1:User | all p:u1.posts | one u2:u1.follows | p not in Ad and p in u2.posts
all a:Ad | all u:User-Influencer | a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo | some disj u1,u2 : User |  p in Ad or (p in u1.sees and p in u2.posts) implies u2 in u1.follows or p in u1.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u,f,p,s,a : univ | u in User and u-> f in follows and f -> p in posts and u -> s in sees and a in Ad implies s = p or s = a
-- div,1
-- equiv pair end
-- equiv pair start,1
all x,y : User, p : Photo, a : Ad | ((p in x.sees && p in y.posts && not p in x.posts) => (y in follows.x && p != a)) || (p = a)
-- div,1
-- equiv pair end
-- equiv pair start,27
all u1 : User, p: Photo | ((p in u1.sees) and (p not in Ad)) implies (posts.p in u1.follows)
all u1 : User, a: Ad | a in u1.sees
-- div,1
all u1, u2 : User, p : Photo-Ad | (u1 in sees.p && u2 in posts.p) implies u1 in follows.u2

all u : User, a : Ad | u in sees.a
-- div,2
all u1, u2 : User, p : Photo-Ad | (u1 in sees.p && u2 in posts.p) implies (u1 in follows.u2)
all a : Ad, u : User | u in sees.a
-- div,1
all a: Ad, u: User | a in u.sees
all p: Photo-Ad, u1,u2: User | p in u1.posts and p in u2.sees implies u1 in u2.follows
-- div,1
all a, c : User, b : Photo | ((b not in Ad) and (b in a.sees) and (b in c.posts)) implies c in a.follows

all a : User, b : Ad | b in a.sees
-- div,2
all u, x : User, p : Photo | p not in Ad and p in u.sees and p in x.posts implies x in u.follows
all a : Ad, u : User | a in u.sees
-- div,2
all u1, u2 : User, p: Photo | p in u1.posts => p not in Ad and p in u2.sees => u1 in u2.follows
all x : Ad, u: User | x in u.sees
-- div,2
all u1, u2 : User, p : Photo-Ad | (u1 in sees.p && u2 in posts.p) implies (u1 in follows.u2)
all u : User | all a : Ad | u in sees.a
-- div,1
all u : User | all a : Ad | a in u.sees
all p : Photo - Ad | all u,y : User | (p in u.sees and p in y.posts) implies y in u.follows
-- div,1
all u1: User, u2: User, p: Photo | p in u1.sees and p not in Ad and p in u2.posts implies u2 in u1.follows
all a: Ad, u: User | u in sees.a
-- div,1
all u1: User, u2: User, p: Photo | p in u1.sees and p not in Ad and p in u2.posts implies u2 in u1.follows
all a: Ad, u: User | a in u.sees
-- div,2
all u: User, u2: User, y: Photo | (y not in Ad and u->y in sees and u2->y in posts) implies (u->u2 in follows)
all u: User, y: Ad | u->y in sees
-- div,1
(all a: Ad | all u: User | u->a in sees)
(all p: Photo-Ad | all u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows)
-- div,5
all p: Photo, u: User, u2: User | p not in Ad and p in u2.posts and p in u.sees implies u2 in u.follows
all p: Photo, u: User | p in Ad implies p in u.sees
-- div,1
all x : User | all y : User | all p : Photo - Ad |(p in y.posts and p in x.sees) implies y in x.follows

all x : Ad | all y : User | x in y.sees
-- div,2
(all a: Ad | all u: User | u->a in sees)
(all p: Photo-Ad | all u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows)


all x, y : univ | x->y in sees implies y in Ad or all z : univ | z->y in posts implies x->z in follows
-- div,2
-- equiv pair end
-- equiv pair start,1
all x: User | all z: User | all p: Photo | p in z.posts and z in x.follows => x in sees.p && all a: Ad | all y: User | y in sees.a
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1, u2 : User, p : Photo | not (u1 -> p in sees and u1 -> u2 in follows)
not some add : Ad | all u : User | u -> add not in sees
-- div,1
-- equiv pair end
-- equiv pair start,2
all x: User | all z: User - x| all p: Photo | p in z.posts and z in x.follows => x in sees.p && all a: Ad | all y: User | y in sees.a
-- div,1
all x: User | all z: User | all p: Photo | x != z and p in z.posts and z in x.follows => x in sees.p && all a: Ad | all y: User | y in sees.a
-- div,1
-- equiv pair end
-- equiv pair start,4
all u:User | some p: Photo - Ad | some x:User |p in u.sees implies  x in u.follows and p in x.posts
all a:Ad | all u:User | a in u.sees
-- div,4
-- equiv pair end
-- equiv pair start,1
all x : User | all y : User | all p : Photo - Ad | (y.posts in x.sees) implies (y in x.follows)

all x : Ad | all y : User | x in y.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: Photo - Ad | one u:User | x in u.sees implies some p:User | p in u.follows and x in p.posts
all a: Ad | all u: User | a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,2
all u:User | some p: Photo - Ad | some x:User | (p in x.posts and p in u.sees) implies x in u.follows
all a:Ad | all u:User | a in u.sees
-- div,2
-- equiv pair end
-- equiv pair start,1
all u:User | some p: Photo - Ad | some x:User | (p in x.posts and x in u.sees) implies x in u.follows
all a:Ad | all u:User | a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | some u2:User | all ph : Photo | ph in u.sees implies
(
(ph not in Ad and (ph in u2.posts and u in u2.follows))
or
(ph in Ad)
)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User  | some p: Photo - Ad | some x:User | (p in x.posts and p in u.sees) implies x in u.follows
all a:Ad | one u:User | a not in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,9
all u1, u2 : User, p : Photo , a : Ad | (p != a && u1 in posts.p && u2 in sees.p) implies (u2 in follows.u1)

all u : User, a : Ad | u in sees.a
-- div,1
all u1, u2 : User, p : Photo , a : Ad| (p != a && u1 in sees.p && u2 in posts.p) implies u1 in follows.u2

all a : Ad, u : User | u in sees.a
-- div,4
all u1, u2 : User, p : Photo , a : Ad | (p != a && u1 in sees.p && u2 in posts.p) implies (u1 in follows.u2)

all a : Ad | all u : User | u in sees.a
-- div,1
all u1, u2 : User, p : Photo , a : Ad | (p != a && u1 in posts.p && u2 in sees.p) implies (u2 in follows.u1)

all a : Ad | all u : User | u in sees.a
-- div,1
all u1, u2 : User, p : Photo , a : Ad | (p != a && u1 in posts.p && u2 in sees.p) implies (u2 in follows.u1)

all u : User, a : Ad | (u in sees.a) && (a in u.sees)
-- div,1
all u1, u2 : User, p : Photo , a : Ad | (p != a && u1 in posts.p && u2 in sees.p) implies (u2 in follows.u1)

all a : Ad | all u : User | (u in sees.a) && (a in u.sees)
-- div,1
-- equiv pair end
-- equiv pair start,3
all u,uu:User, pht:Photo | uu->pht in posts and u->uu not in follows and pht in Ad implies u->pht not in sees



all ad:Ad, u:User | u->ad in sees
-- div,3
-- equiv pair end
-- equiv pair start,2
(all a, c : User, b : Photo | ((b not in Ad) and (b in a.sees) and (b in c.posts)) implies c in a.follows) or (all a : User, b : Ad | b in a.sees)
-- div,1
all u:User, u2:User, p:Photo-Ad | ((u in sees.p and u2 in posts.p) implies u in follows.u2) or (all u:User, a:Ad | u in sees.a)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1, u2 : User, p : Photo | not (u1 -> p in sees and u1 -> u2 in follows and p not in Ad)
not some ad : Ad | all u : User | u -> ad not in sees
-- div,1
-- equiv pair end
-- equiv pair start,3
all u1: User, u2: User, p: Photo | u1 != u2 and p in Ad and p in u1.sees and p in u2.posts implies u2 in u1.follows
all a: Ad, u: User | u in sees.a
-- div,1
all u1: User, u2: User, p: Photo | u1 != u2 and p in Ad and p in u1.sees and p in u2.posts implies u2 in u1.follows
all a: Ad, u: User | a in u.sees
-- div,2
-- equiv pair end
-- equiv pair start,1
all u1: User, u2: User, p: Photo | u1 != u2 and p in u1.sees and p not in Ad and u2 in u1.follows implies p in u2.posts
all a: Ad, u: User | a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1: User, u2: User, p: Photo | u1 != u2 and p in u1.sees and p not in Ad and p in u2.posts implies u2 in u1.follows
all a: Ad, u: User | a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,2
all user1, user2: User | all photo: Photo | (photo in user1.sees and photo in user2.posts) implies user2 in user1.follows
some ad : Ad | ad in User.sees
-- div,1
some ad: Ad | ad in User.sees
all photo: Photo | all user1, user2: User | photo in user1.sees and photo in user2.posts implies user2 in user1.follows
-- div,1
-- equiv pair end
-- equiv pair start,3
all u1,u2 : User | all p : Photo | (u1->p in posts and u2->p in sees and p not in Ad) implies u1->u2 in follows
all a : Ad | all u : User | u->a in sees
-- div,3
-- equiv pair end
-- equiv pair start,2
all p : Photo | some disj u1,u2 : User | ( (p in u1.sees and p in u2.posts) implies u2 in u1.follows else p in Ad) or p in u1.posts implies p in u1.sees
-- div,2
-- equiv pair end
-- equiv pair start,1
all u, j : User | all p : Photo-Ad | u -> p in sees implies u -> j in follows




all u : User | all  a : Ad | u -> a in sees implies u -> a not in posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1,u2 : User | all p : Photo | (u1->p in posts and u2->p in sees and p not in Ad) implies u1->u2 in follows
all a : Ad | lone u : User | u->a in sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1, u2 : User, p : Photo , a : Ad| (u1 != u2 && p != a && u1 in sees.p && u2 in posts.p) implies u1 in follows.u2

all a : Ad, u : User | u in sees.a
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | some p: Photo - Ad | some x:User | (p in x.posts and p in u.sees) implies x in u.follows
all a:Ad | some i:User |  all u:User-i | a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo | all u1 : User| all u2 : User | all i : Influencer |
(p in u1.sees implies ((p in u2.posts and u2 in u1.follows and p not in Ad) or (p in Ad)))
-- div,1
-- equiv pair end
-- equiv pair start,2
all user1, user2 : User | all photo : Photo | (photo in user1.posts and photo in user2.sees) implies user1 in user2.follows
some user : User | Ad in user.sees
-- div,1
all user1, user2 : User | all photo : Photo | (photo in user1.posts and photo in user2.sees) implies user1 in user2.follows
some user : User | all ad : Ad | ad in user.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User  | some p: Photo - Ad | some x:User | (p in x.posts and p in u.sees) implies x in u.follows
all p:Photo | all u : User | p in u.posts implies p in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,4
all p:Photo | all u:User | p in u.sees implies p not in u.posts

all p:Photo | all u:User,u2:User | p in u.sees and p in u2.posts and p != Ad implies u2 in u.follows
-- div,3
all p:Photo | all u:User | p in u.sees implies p not in u.posts
all a:Ad | all u:User | a in u.sees implies a not in u.posts

all p:Photo | all u:User,u2:User | p in u.sees and p in u2.posts and p != Ad implies u2 in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,3
all u:User  | some p: Photo - Ad | some x:User | (p in x.posts and p in u.sees) implies x in u.follows
all a:Ad | all u : User | a in u.posts implies a not in u.sees
-- div,3
-- equiv pair end
-- equiv pair start,4
all u:User  | some p: Photo - Ad | some x:User | (p in x.posts and p in u.sees) implies x in u.follows
all a:Ad | some u:User | a in u.posts implies (a not in u.sees)
-- div,4
-- equiv pair end
-- equiv pair start,1
all u1, u2 : User, p : Photo | not (u1 -> p in sees and u1 -> u2 in follows and u2 -> p in posts and p not in Ad)
not some ad : Ad | all u : User | u -> ad not in sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u,u2:User | all p:Photo | u != u2 and u->u2 in follows and u->p in sees implies (u2->p in posts )
all u:User | all ad:Ad | u->ad in sees implies u->ad not in posts
-- div,1
-- equiv pair end
-- equiv pair start,6
all u:User  | some p: Photo - Ad | some x:User | (p in x.posts and p in u.sees) implies x in u.follows
all p:Photo | all u : User | p in u.posts implies p not in u.sees
-- div,4
all u:User  | some p: Photo - Ad | some x:User | (p in x.posts and p in u.sees) implies x in u.follows
all u:User | all p: Photo | p in u.posts implies p not in u.sees
-- div,2
-- equiv pair end
-- equiv pair start,2
all p:Photo | all u:User | p in u.sees implies p not in u.posts

all p:Photo | all u:User,u2:User | p in u.sees and p in u2.posts and p not in Ad implies u2 in u.follows
-- div,1
all p:Photo | all u:User | p in u.sees implies p not in u.posts

all p:Photo | all u:User,u2:User | u != u2 and p in u.sees and p in u2.posts and p not in Ad implies u2 in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
(all a: Ad | all u: User | u->a not in posts implies u->a in sees) and (all p: Photo-Ad | all u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows)
-- div,1
-- equiv pair end
-- equiv pair start,3
all u:User | some p: Photo - Ad | some x:User | (p in x.posts and p in u.sees) implies x in u.follows
all a:Ad | some i:User |  all u:User-i | a in i.posts and a in u.sees
-- div,2
all u:User | some p: Photo - Ad | some x:User | (p in x.posts and p in u.sees) implies x in u.follows
all a:Ad | some i:User | all u:User - i | a in u.sees and a in i.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all user1, user2: User | all photo: Photo | (photo in user1.sees and photo in user2.posts) implies user2 in user1.follows
all ad : Ad | ad in User.sees and ad in User.posts
-- div,1
-- equiv pair end
-- equiv pair start,3
all user1, user2: User | all photo: Photo | (photo in user1.sees and photo in user2.posts) implies user2 in user1.follows
all ad : Ad | ad in User.sees and ad not in User.posts
-- div,1
all ad: Ad | ad in User.sees and ad not in User.posts
all photo: Photo | all user1, user2: User | photo in user1.sees and photo in user2.posts implies user2 in user1.follows
-- div,1
all ad: Ad | ad not in User.posts
all ad: Ad | ad in User.sees
all photo: Photo | all user1, user2: User | photo in user1.sees and photo in user2.posts implies user2 in user1.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all user : User, photo : Photo | (photo in user.sees) implies (photo = Ad) or
(all followed : univ | (followed in User) and (followed->photo in posts) implies (user->followed in follows))
-- div,1
-- equiv pair end
-- equiv pair start,2
all user1, user2: User | all photo: Photo | (photo in user1.sees and photo in user2.posts) implies user2 in user1.follows
all ad : Ad | all user : User | ad in user.posts implies ad in user.sees
-- div,2
-- equiv pair end
-- equiv pair start,1
all p:Photo | all u:User | p in u.sees and p not in Ad implies p not in u.posts

all p:Photo | all u:User,u2:User | u != u2 and p in u.sees and p in u2.posts and p not in Ad implies u2 in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all user1, user2: User | all photo: Photo | (photo in user1.sees and photo in user2.posts) implies user2 in user1.follows
all ad : Ad | all user: User | all i : Influencer | ad in user.sees and ad in i.sees
-- div,1
-- equiv pair end
-- equiv pair start,3
all p : Photo, u1,u2 : User | p in u2.posts and u2 in u1.follows and p != Ad implies p in u1.sees

all ad : Ad, u1,u2 : User | ad in u1.sees implies ad in u2.posts and u2 not in u1.follows or u2 in u1.follows
-- div,1
all p : Photo, u1,u2 : User | p in u2.^posts and u2 in u1.follows and p != Ad implies p in u1.sees

all ad : Ad, u1,u2 : User | ad in u1.sees implies ad in u2.posts and u2 not in u1.follows or u2 in u1.follows
-- div,1
all p : Photo, u1,u2 : User | p in u2.*posts and u2 in u1.follows and p != Ad implies p in u1.sees

all ad : Ad, u1,u2 : User | ad in u1.sees implies ad in u2.posts and u2 not in u1.follows or u2 in u1.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo, u1,u2 : User | p in u2.~posts and u2 in u1.follows and p != Ad implies p in u1.sees

all ad : Ad, u1,u2 : User | ad in u1.sees implies ad in u2.posts and u2 not in u1.follows or u2 in u1.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo | all u1 : User-Influencer | all u2 : User | all i : Influencer |
(p in u1.sees implies ((p in u2.posts and u2 in u1.follows and p not in Ad) or (p in Ad))) or (p in u1.sees implies p in i.posts)
-- div,1
-- equiv pair end
-- equiv pair start,3
(all a: Ad | all u: User | u->a in sees)
(all p: Photo-Ad | all u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows)
(all u : User | all p: Photo | u->p in posts implies u->p not in sees)
-- div,2
(all a: Ad | all u: User | u->a in sees) and
(all p: Photo-Ad | all u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows) and
(all u : User | all p: Photo | (u->p in posts implies u->p not in sees) and (u->p in sees implies u->p not in posts))
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1, u2 : User | all ph : Photo | ph in u1.posts and ph in u2.sees implies u1 in u2.follows

all u1, u2 : User | all ph : Photo | some ad : Ad | ph in u1.sees and ph in u2.posts and u1 not in follows.u2 implies ph = ad
-- div,1
-- equiv pair end
-- equiv pair start,8
all u1, u2 : User | all ph : Photo | ph in u1.posts and ph in u2.sees implies u1 in u2.follows and u1 != u2

all u1, u2 : User | all ph : Photo | some ad : Ad | ph in u1.sees and ph in u2.posts and u1 not in follows.u2 implies ph = ad
-- div,1
all u1, u2 : User | all ph : Photo | ph in u1.posts and ph in u2.sees implies u1 in u2.follows and u1 != u2

all u1, u2 : User | all ph : Photo | some ad : Ad | ph in u1.sees and ph in u2.posts and u1 not in follows.u2 implies ph = ad and u1 != u2
-- div,2
all u1, u2 : User | all ph : Photo | (ph in u1.posts and ph in u2.sees) implies (u1 in u2.follows and u1 != u2)

all u1, u2 : User | all ph : Photo | some ad : Ad | (ph in u1.sees and ph in u2.posts and u1 not in follows.u2) implies (ph = ad and u1 != u2)

all u1 : User | all ph : Ad | ph in u1.posts implies ph not in u1.sees
-- div,1
all u1, u2 : User | all ph : Photo | (ph in u1.posts and ph in u2.sees) implies (u1 in u2.follows and u1 != u2)

all u1, u2 : User | all ph : Photo | some ad : Ad | (ph in u1.sees and ph in u2.posts and u1 not in follows.u2) implies (ph = ad and u1 != u2)

all u1 : User | all ph : Photo | ph in u1.posts implies ph not in u1.sees
-- div,1
all u1, u2 : User | all ph : Photo | (ph in u1.posts and ph in u2.sees) implies (u1 in u2.follows and u1 != u2)

all u1, u2 : User | all ph : Photo | some ad : Ad | (ph in u1.sees and ph in u2.posts and u1 not in follows.u2 and u1 != u2) implies ph = ad

all u1 : User | all ph : Ad | ph in u1.posts implies ph not in u1.sees

all u1 : Influencer | all ph : Ad | ph in u1.posts implies ph not in u1.sees
-- div,1
all u1, u2 : User | all ph : Photo | (ph in u1.posts and ph in u2.sees) implies (u1 in u2.follows and u1 != u2)

all u1, u2 : User | all ph : Photo | some ad : Ad | (ph in u1.sees and ph in u2.posts and u1 not in follows.u2) implies (ph = ad and u1 != u2)

all u1 : User | all ph : Ad | ph in u1.posts implies ph not in u1.sees

all u1 : Influencer | all ph : Ad | ph in u1.posts implies ph not in u1.sees
-- div,2
-- equiv pair end
-- equiv pair start,1
(all a: Ad | all u: User | u->a in sees) and
(all p: Photo-Ad | all u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows) and
(all u : User | all p: Ad | (u->p in posts implies u->p not in sees) and (u->p in sees implies u->p not in posts))
-- div,1
-- equiv pair end
-- equiv pair start,1
all u, j : User | all p : Photo | u -> p in sees implies u -> j in follows
all u : User| all i : Influencer| all p : Photo | u -> p in sees implies u -> i in follows



all u : User | all  a : Ad | u -> a in sees implies u -> a not in posts
all i : Influencer | all  a : Ad | i -> a in sees implies i -> a not in posts
-- div,1
-- equiv pair end
