sees.Ad
-- div,1
sees.~posts
-- div,1
all a:Ad | sees.a
-- div,1
all x: User | x.sees
-- div,1
all u:User | sees.Ad
-- div,1
all x : User | x.sees
-- div,1
sees :> follows.posts
-- div,1
all u:User | u.sees.Ad
-- div,2
all x : Photo | x not Ad
-- div,1
all x : User | x sees Ad
-- div,1
all u : User | u.follows
-- div,1
some sees in follows.posts
-- div,1
all x : User | sees.x.posts
-- div,1
all x: User | sees.x not Ad
-- div,1
Ad + (sees & follows.posts)
-- div,1
all x : User | x.sees not Ad
-- div,1
sees in (follows.posts - Ad)
-- div,1
all p:Photo | sees.p.follows
-- div,1
all u:User | u.follows.posts
-- div,14
all u:User |  u.follows.posts
-- div,1
all u : User | u.follows.posts
-- div,4
all u:User | sees in follows.u
-- div,1
all x : User | x.sees not Adds
-- div,1
all u : User | sees.u in posts
-- div,1
all x : User | x sees Photo.Ad
-- div,1
all x : User, y : Ad | x sees y
-- div,1
all x : User, y : Ad | x.sees.y
-- div,1
all u:User|u.sees-Ad in follows
-- div,1
all x:User | all a:Ad | a.sees.x
-- div,1
all x:User | all a:Ad | sees.x.a
-- div,1
all u : User | u.sees no u.posts
-- div,1
sees :> follows.posts.Photo + Ad
-- div,1
one u:User | u.posts & follows.u
-- div,5
all x:User | all a:Ad | sees.a.x
-- div,1
all u:User|u.(sees-Ad in follows)
-- div,1
all x : User | x.sees not is a Ad
-- div,1
all u : User | u.sees & u.follows
-- div,1
all x: Photo | sees.x -> follows.x
-- div,2
all p:Photo-Ad |
all a:Ad | sees.a
-- div,1
all u:User | sees in follows.Photo
-- div,1
all x: User |  x.sees in suggested
-- div,1
all x : User | x.sees -> x.follows
-- div,1
all u : User | u.follows.posts.sees
-- div,1
all u:User|u.(sees-Ad) in follows.u
-- div,1
all x : User | sees.posts.follows.x
-- div,1
all u:User | (u.follows).(Photo-Ad)
-- div,1
sees in follows.posts + (User + Ad)
-- div,1
all x:User | some p:Photo | p not Ad
-- div,2
all u:User | u.sees in follows.posts
-- div,2
all x : Ad | all y : User | y.sees.x
-- div,2
all u:User | u.follows.posts in posts
-- div,1
all u : User | u.sees Photo not in Ad
-- div,1
sees in (follows.posts + (User + Ad))
-- div,1
all u:User |  no Ad in u.follow.posts
-- div,4
all u : User | u.sees.u.follows.posts
-- div,1
all u:User | u.sees & u.follows.posts
-- div,1
all u:User | no Ad in u.follows.posts
-- div,1
all u: User | u.sees implies u.follows
-- div,1
User.sees & User.follows.posts
-- div,1
all x : User |  follows.posts.(x.sees)
-- div,1
all u : User | follows.u.posts in sees
-- div,1
all u:User | sees.follows in follows.u
-- div,1
all u : User | u.follows & sees.~posts
-- div,1
all u : User | u.Ad in u.follows.posts
-- div,1
all u:User | no  Ad in u.follows.posts
-- div,1
all x:User | x.follows.posts is x.sees
-- div,1
all u : User | u.follows.posts in sees
-- div,2
all u: User | u.sees - u.follows.posts
-- div,1
all x : Photo, y : User | x some sees.y
-- div,1
all u:User|u.sees.Photo-Ad in follows.u
-- div,1
all x : Photo, y : User | y some sees.x
-- div,1
all u : User | posts in u.follows.posts
-- div,1
all u:User |  sees.follows in follows.u
-- div,1
all u : User | u.follows in sees.~posts
-- div,1
all u : User | u.follows.posts & u.sees
-- div,1
all u : User | no Ad in u.follows.posts
-- div,1
all u: User |  u.sees.(u.follows.posts)
-- div,1
all u : User | sees.~posts in u.follows
-- div,1
all u : User | u.sees & u.follows.posts
-- div,2
all x : User | x sees.y implies y not Ad
-- div,1
all x : User | one x in photos.follows.x
-- div,1
all u : User, p : Photo - Ad | u.posts.p
-- div,1
all u : User | u.sees implies no u.posts
-- div,1
all u : User | u.sees in Ad || u.follows
-- div,1
all x : User | x sees posts in x.follows
-- div,1
sees :> (follows.posts.Photo + Ad)
-- div,1
all u : User | u.follows.posts in follows
-- div,1
all x : Photo, y : User | y some folows.x
-- div,1
all u:User | u.sees.Ad in u.follows.posts
-- div,2
all u : User | sees-Ad in u.follows.posts
-- div,1
all x : User |  all y : Photo | follows.x
-- div,1
all x : User |  all y : Photo | x.follows
-- div,1
some x: Influencer|User-x one Useer.sees.x
-- div,1
all p:Photo-Ad, u:User | follows.u.posts.p
-- div,1
all u : User | u.sees some u.follows.posts
-- div,1
all u: User | u.sees in (u.follows and Ad)
-- div,1
all u : User | sees & Ad in u.follows.post
-- div,2
all x : User , y : User , z : Photo | Ad.z
-- div,1
all u : User | u.sees in (Ad || u.follows)
-- div,1
all x: User | not x.sees or x in x.follows
-- div,1
all x : User , y : User , z : Photo | z.Ad
-- div,1
all p:Photo-Ad , u:User | u.follows.sees.p
-- div,1
all u : User | u.sees.Ad in u.follows.post
-- div,1
all u : User, p : Photo - Ad | u & posts.p
-- div,1
all x : Photo, y : User | y some follows.x
-- div,1
all u:User | u.sees.Photo in follows.Photo
-- div,1
all p:Photo-Ad, u:User | u.follows.posts.p
-- div,1
all u: User | u.sees&~Ad in u.follows.posts
-- div,1
all p:Photo-Ad , u:User | u.follows.posts.p
-- div,1
all u:User | all p:Photo |  u.follows.posts
-- div,1
all u : User | u.sees Ad in u.follows.posts
-- div,1
all u : User | sees - Ad in u.follows.posts
-- div,1
all u:User | u.sees = u.follows.posts -> Ad
-- div,1
all u : User | u.sees.Ad in u.follows.posts
-- div,1
all u : User, p : Photo | sees.p Photo - Ad
-- div,4
all u:User | u.sees = (u.follows).(Photo-Ad)
-- div,2
all u : User | u.sees.~Ad in u.follows.posts
-- div,1
all u : User | u.sees != Ad in u.follow.post
-- div,1
all u: User, p: Photo-Ad | u.follows.posts.p
-- div,1
all u : User | u -> u not in u.follows.posts
-- div,1
all u:User | no u.sees.Ad in u.follows.posts
-- div,1
all u:User | no u.sees-Ad in u.follows.posts
-- div,1
all x : User | one x in sees.posts.follows.x
-- div,1
all x : Photo | one sees.x implies follows.x
-- div,1
all u: User | u.sees implies u.follows.posts
-- div,2
all u:User | u.sees in u.follows.posts or Ad
-- div,1
all u:User | u.sees = Photo.(u.follows).posts
-- div,1
all u : User | (Photo - Ad) & u.follows.posts
-- div,2
all u : User | u.sees implies u.follows.posts
-- div,3
all u : User | u.sees - u.follows-posts in Ad
-- div,1
all u : User | u.sees.(Photo-Ad) in follows.u
-- div,1
all u : User | u.posts != Ad in u.follow.post
-- div,1
all u:User | (u.sees - Ad) -> u.follows.posts
-- div,1
all u: User | u.sees implies (u.follows + Ad)
-- div,1
all u : User | u.follows.posts implies u.sees
-- div,1
all u : User | u.sees in Ad in u.follows.post
-- div,1
all u : User | u.sees in u.follows.(posts-Ad)
-- div,1
all u:User | u.sees = Photo.(u.follows.posts)
-- div,1
all u : User | u.sees in u.follows.posts && Ad
-- div,1
all x : User | x sees in (x.follos.posts + Ad)
-- div,1
all u:User | (u.follows.posts.Photo in u.sees)
-- div,1
all u : User | u.posts != Ad in u.follow.posts
-- div,1
all u:User | u.sees in (u.follows.posts or Ad)
-- div,2
all u : User | u.sees - Ad and u.follows.posts
-- div,1
all u : User, s : u.sees | s.User in u.follows
-- div,1
all x : User | x.sees in x.follows.posts or Ad
-- div,2
all u : User | all p: Photo - Ad | u.follows.p
-- div,1
all x: User | all p: Photo | one (x in x.sees)
-- div,1
all u : User | all p: Photo - Ad | p.follows.u
-- div,1
all u : User | no u.sees&Ad in u.follows.posts
-- div,1
all x : User | (x.sees)-Ad and x.follows.posts
-- div,1
all u : User | u.sees in Ad || u.follows.posts
-- div,1
all u : User | u.sees - iden in u.follows.posts
-- div,1
sees.(Photo-Ad) & follows.posts.Photo
-- div,2
all x : User | x.sees in x.follows.posts not Ad
-- div,1
all u: User | u.sees-Ad implies u.follows.posts
-- div,1
all x, y : User | x sees y.posts -> x.follows.y
-- div,2
all x : User | x sees in (x.follows.posts + Ad)
-- div,1
all u : User | (u.sees in Ad) in u.follows.post
-- div,1
all u : User,p : Photo | p in Ad -> p in u.sees
-- div,1
all u : User | u.sees in u.follows.posts not Ad
-- div,1
all x : User | x.sees-Ad implies x.follows.posts
-- div,3
all u:User | all p:Photo |u in u.follows.posts.p
-- div,1
all u: User | all s: u.sees | s in follows.posts
-- div,1
all x : User | x.sees in (x.follows.posts or Ad)
-- div,1
all u: User | u.sees in (u.follows.posts and Ad)
-- div,1
all u: User | u.sees.(u.follows.posts) not in Ad
-- div,1
all u: User | u.sees implies (u.follows or p.Ad)
-- div,1
all u : User, p : Photo - Ad | u.follows.posts.p
-- div,1
all x : User | some x.sees-Ad in x.follows.posts
-- div,1
all u : User ,p : Photo | p in Ad -> p in u.sees
-- div,1
all u: User | u.sees-u.sees.Ad in u.follows.posts
-- div,7
all u : User | u.sees.Photo-Ad in u.follows.posts
-- div,1
all p: Photo - Ad| sees.p implies follows.posts.p
-- div,1
all u : User, p : Photo - Ad | u.follows & sees.p
-- div,1
all u : User | u.sees not in Ad in u.follow.posts
-- div,2
all u: User | u.sees in u.follows.posts not in Ad
-- div,1
all u : User | u.sees some u.follows.posts not Ad
-- div,1
all x : User | x.sees - Ad implies x.follows.posts
-- div,4
all u : User | u.sees implies u.follows.posts - Ad
-- div,1
all u : User | sees.~posts - Ad in u.follows.posts
-- div,1
all x : User | all y : Photo | x.sees -> x.follows
-- div,4
all u : User, p : Photo - Ad | p & u.follows.posts
-- div,1
all u : User, p : Photo - Ad | u.follows & posts.p
-- div,1
all x: Influencer|all y: User| posts.y  one sees.x
-- div,1
all u : User | u.sees implies some u.follows.posts
-- div,2
all x, y : User | x sees y.posts -> y in x.follows
-- div,1
all u:User | (u.sees - Ad) implies u.follows.posts
-- div,1
some sees :> (follows.posts.Photo + Influencer.Ad)
-- div,1
all u : User | none u.sees - (Ad + u.follows.post)
-- div,1
all u:User | u.sees = (u.follows.posts).(Photo-Ad)
-- div,1
all u : User | u.sees - Ad implies u.follows.posts
-- div,1
all x : User | x.sees & Ad implies x.follows.posts
-- div,1
all u : User | u.sees.Photo implies u.follows.posts
-- div,1
all x : User | x.sees in Ad implies x.follows.posts
-- div,1
all u: User | u.sees in (u.follows.posts not in Ad)
-- div,1
all u : User, p : Photo | sees = Ad+u.follows.posts
-- div,1
all x : User | x.sees in Ad or follows.posts.x.sees
-- div,1
all x : User | Ad(x.sees) or follows.posts.(x.sees)
-- div,1
all u : User | u.sees.(Photo-Ad) in follows.u.posts
-- div,1
all x : User | x.sees in x.follows.posts or x.posts
-- div,1
all x: Influencer|some y: User| posts.y  one sees.x
-- div,1
all x : User | x.sees in x.follows.posts=(Photo-Ad)
-- div,1
all u: User | all p: Photo-Ad | some u.sees.posts.p
-- div,1
all u : User | u.sees.(Photo-Ad) in u.follows.posts
-- div,1
all u : User | u.posts - Ad implies u.follows.posts
-- div,1
all x, y : User |  x.sees.posts.y -> y in follows.x
-- div,1
all x : Photo | all p : User | follows.p and sees.x
-- div,1
all x : User | all y : Photo | y -> follows.x.posts
-- div,1
all x,y: User | x.sees in y.posts -> y in x.follows
-- div,1
all x, y : User |  x.sees.y.posts -> y in follows.x
-- div,1
all u:User | all p:sees | p in u.follows or p in Ad
-- div,1
all x,y : User | x.sees not in Ad implies x.follows
-- div,1
all x : User | x.sees in x.follows.posts and not Ad
-- div,1
all u: User | u.sees implies (u.follows.posts + Ad)
-- div,1
all u : User | u.sees implies u.follows.posts not Ad
-- div,1
all u : User | (u.follows.posts not in Ad) in u.sees
-- div,1
all u:User | no p:u.posts | p->User not in u.follows
-- div,2
all x,y : User | y in follows.x -> posts.y in sees.x
-- div,2
all u: User | u.sees in u.follows.posts and Photo-Ad
-- div,1
all u : User, p : Photo | sees-Ad in u.follows.posts
-- div,1
all x : User | x.sees-Ad implies one x.follows.posts
-- div,1
all x: Influencer|all y: User| one posts.y in sees.x
-- div,1
all u : User, p : Photo | sees in Ad+u.follows.posts
-- div,2
all u:User, p:Photo| lone (follows.posts.u & p-Ad.u)
-- div,1
all u : User, p : Photo - Ad | u.p & u.follows.posts
-- div,1
all x : User | all y : Photo | x.sees -> x.suggested
-- div,1
all u : User | some (u.sees - Ad in u.follows.posts)
-- div,1
all u : User | User.posts.(sees.u - Ad) in u.follows
-- div,1
all x,y : User | y in follows.x -> y.posts in sees.x
-- div,1
all x : User |  all y : Photo | x.sees in y.follows.x
-- div,1
all u:User | u not sees follows.ad in u.follows.posts
-- div,2
all x, y : User | y in follows.x -> posts.y in sees.x
-- div,1
all x : User | x.sees in Ad or x.follows.posts.x.sees
-- div,1
all x : User | all y : Ad | x sees.y implies y not Ad
-- div,1
all u : User | u.follows.posts in (u.sees and not Ad)
-- div,1
all u: User | all p: Photo in u.sees | p not in Photo
-- div,1
all x : User | x.sees in (x.follows.posts or x.posts)
-- div,1
all u : User ,p : Photo | p in Ad => p in u.sees || p
-- div,1
all x, y : User | posts.y in sees.x -> y in follows.x
-- div,1
all x, y:User | x.sees in y.posts implies x.follows.y
-- div,2
all x, y : User | y.posts in x.sees -> y in follows.x
-- div,1
all x : User |  all y : Photo | x.sees in y.x.follows
-- div,1
all x : User |  all y : Photo | x.sees in follows.y.x
-- div,1
all x : User |  all y : Photo | x.sees in follows.x.y
-- div,1
all x : User | x.sees in Ad or follows.posts.(x.sees)
-- div,1
all x, y : User | y.posts in x.sees -> y in x.follows
-- div,2
all x, y : User | y in follows.x -> y.posts in sees.x
-- div,1
all x, y : User | y.posts in sees.x -> y in x.follows
-- div,1
all u : User | u.sees not in Ad not in u.follows.posts
-- div,1
all u: User, p: Photo-Ad | u.sees.p in u.follows.posts
-- div,2
all u:User | no u.sees in u.follows.posts & (Photo-Ad)
-- div,1
all u:User |  u.sees implies p in u.follows.posts + Ad
-- div,1
all u:User | (u.sees - Ad) in posts -> u.follows.posts
-- div,1
all u : User | (u.follows.posts and u.posts) in u.sees
-- div,1
all x: Influencer|all y: User| one (posts.y in sees.x)
-- div,2
all x, y : User |  y in follows.x -> posts.y in x.sees
-- div,1
all u : User | all a : Ad | u.sees.a in u.follows.post
-- div,1
all u: User | u.sees implies u.follows.posts not in Ad
-- div,2
all u:User | (u.follows.posts in u.sees) not in u.sees
-- div,1
all x: User | all y: x.sees - Ad | y.User in x.follows
-- div,1
all x, y : User |  y in x.follows -> posts.y in x.sees
-- div,1
all u : User, p : Photo-Ad | posts.p & u.follows.posts
-- div,1
all x, y : User |  y in follows.x -> y.posts in x.sees
-- div,1
all x : User | all p : Photo and not Ad | x->y in sees
-- div,1
all u : User | u.sees some u.follows.posts.(Photos-Ad)
-- div,1
all x : User | x.sees in x.follows.posts in (Photo-Ad)
-- div,1
all u: User | u.follows.posts implies (u.follows + Ad)
-- div,1
all u : User, p : Photo - Ad | u.follows.posts & sees.p
-- div,1
all u : User | u.sees implies u.follows.posts not in Ad
-- div,1
all u:User | u not sees u.follows.ad in u.follows.posts
-- div,3
all u : User, a : Ad | u.follows.posts in u.sees and Ad
-- div,1
all u: User | u.sees.Photo-u.sees.Ad in u.follows.posts
-- div,1
some x: Influencer|all y: User| one (posts.y in sees.x)
-- div,1
all x : Photo, y : User | y some sees.x & y not in x.Ad
-- div,1
all x : Photo, y : User | y some sees.x & y not in Ad.x
-- div,1
all u : User, p : Photo - Ad | u.sees & u.follows.posts
-- div,1
all x : User | x.sees in (x.follows.posts in (Photo-Ad))
-- div,1
all x : User | x.sees in x.follows.posts or x.sees -> Ad
-- div,1
all u:User, p:Photo| p in u.sees -> p in u.follows.posts
-- div,3
all x : User |  all y : Photo | x.sees in (y in follows)
-- div,1
all x : User | all y : Ad | x sees.y implies y not in Ad
-- div,1
all u: User, p: Photo | u.sees in (u.posts in u.follows)
-- div,1
all u:User | u.sees implies u.follows.posts & (Photo-Ad)
-- div,1
all u1:User, u2:User | u1.sees implies (u2 in u1.follow)
-- div,4
all u : User, p : Photo - Ad | posts.p & u.follows.posts
-- div,1
all x : User | all y : Photo-Ad | x.sees -> (x.follows).y
-- div,1
all u : User | all p: Photo | posts.u.sees.p in u.follows
-- div,1
all u : User | u.sees in u.follows.posts and u.sees-posts
-- div,1
all u: User | all p: Photo | u.follows.sees in p.Photo-Ad
-- div,1
all u:User, p:Photo | lone (follows.posts.u & p.Photo-Ad)
-- div,1
all u:User | (u.follows.posts in u.sees) not in u.sees.ad
-- div,3
all u: User, p: Photo-Ad | u.follows.posts implies u.sees
-- div,1
all u:User | (u.follows.posts in u.sees) not in u.sees.Ad
-- div,2
all u:univ, p: univ | lone (follows.posts.u & p.Photo-Ad)
-- div,1
all u:User, p: univ | lone (follows.posts.u & p.Photo-Ad)
-- div,1
all x:User | all p:Photo not in Ad | posts.p in follows.x
-- div,1
all u: User | all p: Photo | u.follows.sees in u.sees.p-Ad
-- div,1
all x : User | all p : Photo | x.sees.p in x.follows.posts
-- div,1
all u: User | all p: Photo | u.follows.posts in p.Photo-Ad
-- div,3
all x : User |  all y : Photo | x.sees in (y in x.follows)
-- div,1
all x : User |  all y : Photo | x.sees in (y in follows.x)
-- div,1
all p : Photo-Ad | all x : User | p in sees.x -> follows.x
-- div,1
all x: User | x.posts & x.sees
all y : User | Ad in y.sees
-- div,1
all x : User | all y : x.sees | y in Ad or x.follows.posts
-- div,1
all x : User | x.sees implies some y: User | y in x.follows
-- div,3
all u:User, p:Photo-Ad | sees.p implies posts.p = follows.u
-- div,2
all u: User | all p: Photo-Ad | some u.sees.follows.posts.p
-- div,1
all u:User, p:Photo-Ad | sees.u implies posts.p = follows.u
-- div,3
all x:User | all y:Ad| x.sees(x.follows.posts) || x.sees(y)
-- div,1
all x : User | all y : Photo | x sees.y implies y not in Ad
-- div,1
all u : User | all p: Photo | posts.(u.sees.p) in u.follows
-- div,1
all u:User | ((u.follows.posts in u.sees) not in u.sees.ad)
-- div,1
all u : User | u.sees in u.follows.posts and u.(sees-posts)
-- div,1
all x:User | all y:Ad| x.sees(x.follows.posts) or x.sees(y)
-- div,1
all u : User | all a : Ad | u.sees in (u.follows.posts && a)
-- div,1
all u:User | u -> (u.sees - Ad) implies u -> u.follows.posts
-- div,1
all x : User | all y : x.sees| y not in Ad -> y in x.follows
-- div,1
all u: User | all p: Photo | p is Ad or p in u.follows.posts
-- div,1
all x : User | all y : sees.x | y is Photo -> y in x.follows
-- div,1
all x : User | all y : Photo | (x in sees) -> (x in follows)
-- div,1
all x : User | all y : User | all z : Photo | x <: sees.z[y]
-- div,1
all x : User | all y : User | all z : Photo | x :> sees.z[y]
-- div,1
all u1, u2 : User, p : Photo | u1 in sees -> p => p not in Ad
-- div,1
all x : User |  all y : Photo | x.sees in (x -> y in follows)
-- div,2
all x,y : User | all z : Photo | x sees.z implies x follows.y
-- div,1
all x : User |  all y : Photo | x.sees in (y -> x in follows)
-- div,1
all u : User, p : Photo - Ad | posts.p & sees.u.follows.posts
-- div,1
all x : User | all y : x.sees | (y != Ad) -> (y in x.follows)
-- div,1
all p : Photo | sees.p and p not in Ad implies follows.sees.p
-- div,1
all x : User | x.sees in x.follows.posts

all y : Ad | y.sees
-- div,1
all u:User | u.sees-Ad in u.follows.posts
all u:User | u.sees
-- div,1
all u : User, p : Photo | p in u.sees -> p in u.follows.posts
-- div,1
all x: User | (x.posts) & (x.sees)
all y : User | Ad in y.sees
-- div,1
all u:User | all ad:Ad | u->ad not in posts implies ad in sees
-- div,1
all u: User | all p: Photo-Ad | p in u.sees in u.follows.posts
-- div,1
all u: User, p: Photo-Ad | u.follows.posts implies u.sees in p
-- div,2
all u: User | all p: Photo | u.follows.sees in u.sees.Photo-Ad
-- div,1
all p : Photo - Ad, u : User | p in u.sees implies p in follows
-- div,1
all x: User | all y: User | x.sees in y.posts -> y in x.follows
-- div,1
all u:User | (u.follows.posts in u.sees) not in u.sees.posts.Ad
-- div,1
all u:User | (u.follows.posts in u.sees) not in u.sees.posts.ad
-- div,1
all u : User, p : Photo-Ad | sees.u implies posts.p = follows.u
-- div,2
all u:User | (u.sees - Ad) in posts -> u.follows.posts in posts
-- div,1
all u: User | all p: Photo | u.follows.sees.posts in p.Photo-Ad
-- div,1
all x,y : User | all a : Ad | x.sees not in a implies x.follows
-- div,1
all u : User, p : Photo - Ad | some (u.follows.posts & p.sees.u)
-- div,1
all p:Photo, u1, u2:User | p -> u1 in sees implies u2 in follows
-- div,1
all x,y : User | x != y and y in x.follows => x.sees and y.posts
-- div,2
all u: User, p: Photo | p in u.sees => p in (follows.posts + Ad)
-- div,1
all x : User | x sees in x.follos.posts

all x : Ad | one sees.x
-- div,1
all u: User | all p: Photo-Ad | (p in u.sees) in u.follows.posts
-- div,1
all u : User | some p : Photo | p in u.sees iff p.posts.follows.u
-- div,1
all x : User | all y : sees.x | y is Photo -> y.post in x.follows
-- div,1
all x : User |  all y : Photo | x.sees in y.x.follows and y != Ad
-- div,2
all u : User | some p : Photo | p in u.sees iff posts.p.follows.u
-- div,2
all x : User | all y : sees.x | y is Photo -> post.y in x.follows
-- div,1
all x : User | all y : x.sees | (y not in Ad) -> (y in x.follows)
-- div,2
all u : User, p : Photo - Ad | sees.u implies posts.p = follows.u
-- div,1
all x : User |  all y : Photo | x.sees in x.y.follows and y != Ad
-- div,1
all x : User |  all y : Photo | x.sees in x.follows.y and y != Ad
-- div,1
all x : User | x sees in x.follows.posts

all x : Ad | one sees.x
-- div,1
all x, z: User, y: Photo | y.Ad or z in x.follows and y in z.posts
-- div,2
all x : User | all y : sees.x | y not is Ad -> y.post in x.follows
-- div,1
all u : User | all p : Photo | u -> p not in Ad in u.follows.posts
-- div,1
all x : User | all y : x.sees | (y iff not Ad) -> (y in x.follows)
-- div,1
all x : User | all y : sees.x | y not is Ad -> y.post in follows.x
-- div,1
all u : User, p : Photo | p in u.sees => p.follows.posts or p in Ad
-- div,2
all u : User, p : Photo | u.sees.p implies u.follows.posts.p not Ad
-- div,1
all u:User, p:Photo - Ad | some v:User | u in sees.p in u.follows.v
-- div,1
all x : User | x sees in (x.follows.posts)

all x : Ad | one sees.x
-- div,1
all u : User, p : Photo | p in u.sees => u.follows.posts or p in Ad
-- div,1
all u : User, y : Photo| y in u.sees.Ad implies y in u.follows.posts
-- div,1
all u : User, p : Photo | p in sees[u] => p.follows.posts or p in Ad
-- div,1
all u:User | u -> (u.sees - Ad) in sees implies u -> u.follows.posts
-- div,1
all u:User, p:Photo | (u.follows.posts in u.sees) implies p.Photo-Ad
-- div,1
all u: User, p: Photo | (p in u.sees) => (p in (follows.posts + Ad))
-- div,3
all x : User | all y : Photo | all z : Ad | y in follows.x.posts or z
-- div,2
all u: User, p: Photo | (p in u.sees) => (p in (follows.posts ++ Ad))
-- div,3
all x,y: User | x.sees in y.posts && y in x.follows && y.posts not Ad
-- div,1
all x : User | follows.posts.x and posts.x not in Ad implies follows.x
-- div,1
all x : User | all a: Ad | some x.sees.a implies one x.follows.posts.a
-- div,1
all u : User | all p : Photo not in Ad | u.sees not in p and u.follows
-- div,1
all x : User | follows.x.posts and x.posts not in Ad implies follows.x
-- div,1
all u : User , f : u.follows , p : Photo - Ad | u.sees.p and f.posts.p
-- div,1
all x : User | all y : Photo | (x -> y in sees) -> (x -> y in follows)
-- div,4
all x : User | follows.x.posts and posts.x not in Ad implies follows.x
-- div,1
all x : User | all y : x.sees | (y not in Ad) -> (User.y in x.follows)
-- div,1
all u : User, p : Photo | p in sees[u] => posts[follows[p]] or p in Ad
-- div,1
all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.posts ++ Ad))
-- div,1
all x : User | all y : sees.x | y not is Ad implies y.post in follows.x
-- div,3
all u:User | all p: Photo-Ad | u.sees implies p in u.follows.posts + Ad
-- div,1
all x : User | all y : x.sees | (y not in Ad) -> (y.posts in x.follows)
-- div,1
all x : User | some y : Photo | (x -> y in sees) -> (x -> y in follows)
-- div,1
all u : User | all p : Photo-Ad | u.sees.p implies p in u.follows.posts
-- div,1
all u : User | u.sees implies some z: User | z.posts and z in u.follows
-- div,1
all x : User | all y : x.sees | (y not in Ad) -> (posts.y in x.follows)
-- div,2
all u : User | all p : sees.u | p is Photo implies posts.p in follows.u
-- div,1
all x : User | all y : User | (x -> y in follows) -> (x -> y in follows)
-- div,1
all u : User, p : Photo | p in u.sees -> p in u.follows.posts or p in Ad
-- div,1
all u:User | u.sees-Ad in u.follows.posts




all u:User | u.sees.Ad = Ad
-- div,1
all u:User | u.sees-Ad in u.follows.posts
all u:User | all  a:Ad | u.sees
-- div,1
all na : Photo - Ad | all u : User | na in u.sees implies u.follows.posts
-- div,2
all x:Photo,y:User| y.sees in y.follows.posts
all x:Ad,y:User| y.sees & x
-- div,1
all u : User | u.sees some u.follows.posts not Ad
all a : Ad | User.sees.a
-- div,1
all u : User | all p : Photo not in Ad | u.sees not in p & u.follows.posts
-- div,1
all x : User | all y : User | all z : Photo | x follows.y => x :> sees.z[y]
-- div,1
all x : User | x.sees in x.follows.posts - Ad or x.sees not x.follows.posts
-- div,1
all x, y : User | x.sees in y.posts and y in x.follows and x.sees is not Ad
-- div,1
all u : User | all p : Photo | p in sees[u] => posts[follows[p]] or p in Ad
-- div,1
all u : User | all p : Photo | p in sees[u] => follows[posts[p]] or p in Ad
-- div,1
all x,y : User | all z : Photo | x sees.z implies x follows.y and y posts.z
-- div,1
all x : User | all y : User | all z : Photo | x follows.y && x :> sees.z[y]
-- div,1
all u : User, p : Photo | u->p in sees =>
p in Ad || some u.follows.posts.p
-- div,1
all u : User | all p : Photo | p in u.sees implies some u.follows in posts.p
-- div,1
all u:User, p:Photo - Ad | some v:User | u in sees.p implies u.follows.posts
-- div,2
all u : User | u.sees implies all p : Photo | p in u.follows.posts not in Ad
-- div,1
all x : User | x.sees in (x.follows.posts - Ad) or x.sees not x.follows.posts
-- div,1
all x : User | all y : Photo | y in x.sees and y not in x.posts and y not Add
-- div,1
all u : User, p : Photo | p in u.sees implies (p in Ad or p in follows.posts)
-- div,1
all x, y : User | x.sees in y.posts and not x.sees is a Ad and y in x.follows
-- div,1
all x, y : User | x.sees in y.posts and x.sees not is a Ad and y in x.follows
-- div,1
all x : User | all a : Ad | x -> x.follows.posts - Ad in sees & x -> a in sees
-- div,1
all u : User, p : Photo | p in u.sees implies p not Ad && posts.p in u.follows
-- div,1
all u:User | some p:Photo-Ad | u.follows.posts
all u:User | all  a:Ad | u.sees
-- div,2
all x: User, y: User, z : Photo | y in follows.x and z in posts.y iff x sees z
-- div,1
all u:User | u.sees = u.follows.posts.Photo-Ad




all u:User | u.sees.Ad = Ad
-- div,2
all u : User ,p : Photo | p in  p in u.sees => p in Ad || p in u.follows.posts
-- div,1
all x,y: User | all p: Photo | p not Ad && x.sees in y.posts && y in x.follows
-- div,1
all x: User, y: User, z : Photo | y in follows.x and z in posts.y iff x sees.z
-- div,2
all u : User, p : Photo | p in u.sees implies p not Ad && p.posts in u.follows
-- div,1
all x : User | x.sees in x.follows.posts=(Photo - Ad) or x.sees in (Photo + Ad)
-- div,1
all u : User | all p : Photo | u.sees.p implies p in u.follows.posts or p in Ad
-- div,1
(all u:User | all p: Photo-Ad | p in u.sees implies p in u.follows.posts or Ad)
-- div,1
all x : User | x.sees - Ad in x.follows.posts and all y : Ad | y in x in x.sees
-- div,1
all u, v: User | u in v.follows => u.posts in v.sees and (u.posts & v.sees & Ad)
-- div,1
all x: User, y: User, z : Photo | y in follows.x and z in posts.y iff x-> sees.z
-- div,1
all u : User | all p : Photo | p in sees[u] implies follows[posts[p]] or p in Ad
-- div,1
all x : User | all p : Photo | p in x.follows.posts and p not in Ad => x.follows
-- div,1
all x: User, y: User, z : Photo | y in follows.x and z in posts.y iff x-> sees z
-- div,1
all u1, u2 : User, p : Photo | p in u1.sees -> u2 in u1.follows and p in u2.posts
-- div,1
all p : Photo - Ad, u1,u2 : User | u1.sees.p and u2.posts.p implies u1.follows.u2
-- div,1
all p : Photo | all u1,u2 : User | p in u2.posts and u2 in u1.follows => u1.sees.p
-- div,1
all u : User | all p : Photo | p in u.sees implies p in u.follows.posts or p is Ad
-- div,1
all x : Photo-Ad | all y,z : User | y in sees.x and z in posts.x -> z in x.follows
-- div,1
all u : User | u.sees implies all p : Photo | p in u.follows.posts and p not in Ad
-- div,1
all x : User | all y : Photo | y in x.sees and y not in x.posts and y is not an Ad
-- div,1
all x : User | all y : User | all z : Photo | x follows.y && y posts.z => x sees.z
-- div,2
all x : User | all y : Photo | y in x.sees and y not in x.posts and y is not an ad
-- div,1
all x : User | x.sees in x.follows.posts in (Photo - Ad) or x.sees in (Photo + Ad)
-- div,1
all x : User | all y : follows.x | y in sees.x
all u : User | all a : Ad | u.sees.a
-- div,3
all u:User | u.sees-u.follows.posts.Photo-Ad = none




all u:User | u.sees.Ad = Ad
-- div,1
all u:User, p:Photo| p in u.follows.sees
all p:Photo, u:User| p in Ad & p in u.sees
-- div,1
all u:User | none u.sees-u.follows.posts.Photo-Ad




all u:User | none u.sees.Ad-Ad
-- div,1
all u:User | u.sees.Photo-Ad = u.follows.posts.Photo




all u:User | u.sees.Ad = Ad
-- div,1
all x,z : User | all p : Photo | x->p in sees and no p in Ad implies x->z in follows
-- div,1
all x : User | all y : x.sees | some k : x.follows | (y not in Ad) -> (y in k.posts)
-- div,1
all u : User | all p : Photo | u.sees.p implies p in u.follows.posts or p in Ad is Ad
-- div,1
all u : User | all p : Photo-Ad | p in u.sees implies p in u.follows.posts or p is Ad
-- div,1
all u:User, p:Photo | p in u.sees implies (p not in Ad && u.follows.posts) || p in Ad
-- div,1
all x:User |all a:Ad| a not in x.follows.posts
all x:User |all a:Ad| a in x.sees in Ad
-- div,1
all x,y : User | all p : Photo in x.sees | (p in y.posts & x->y in follows) or p in Ad
-- div,1
all x,y,z : univ | x->y in sees and y not Ad implies z->y in posts and x->z in follows
-- div,1
all u:User | (u.follows.posts in u.sees) implies u.follows.posts != u.follows.posts.Ad
-- div,1
all u:User | u.sees.(Photo-Ad) = u.follows.posts.Photo




all u:User | u.sees.Ad = Ad
-- div,1
all u:User, p:Photo | p in u.sees implies (p not in Ad and u.follows.posts) || p in Ad
-- div,1
all x : User | all y : Photo | x.sees -> x.follows
all x : User | x.sees -> x.suggested
-- div,11
all x, y : User | x.sees in y.posts and y in x.follows and all p : x.sees | p is not Ad
-- div,1
all u : User, p : Photo | p in u.sees implies some z: User | z.posts and z in u.follows
-- div,1
all x : User | all y : User |all p : Photo| y in x.follows and p in y.posts and x sees.y
-- div,1
all u:User | u.sees-u.follows.posts.Photo-Ad = none




all u:User | u.sees.Ad-Ad = none
-- div,1
all x : User | all y : Photo | x.sees -> x.follows

all x : User | x.sees -> x.suggested
-- div,2
all u : User, p : Photo | some f : User | u->p in sees -> u->f in follows
User in sees.Ad
-- div,1
all x,y: User, f:Photo | f in x.sees and f in y.posts and f not Ad implies y in x.follows
-- div,1
all x : User | all y : User | all z : Photo | y->x in follows && z->y in posts => x sees.z
-- div,1
all x : User | all y : User | all z : Photo | y->x in follows && z->y in posts -> x sees.z
-- div,1
all p : Photo | all u1 : User | all u2 : User |
p in u1.sees -> ( p not in Ad) or (p in Ad)
-- div,1
all u : User, p : Photo | u->p in sees -> (some f : User | u->f in follows)
User in sees.Ad
-- div,1
all p : Photo | one disj u1,u2 : User |  p in u1.sees and p in u2.posts -> u2 in u1.follows
-- div,1
all u:User, p:Photo - Ad | some v:User | u in sees.p implies v in posts.p & u in u.follows.v
-- div,1
all p : Photo | some disj u1,u2 : User |  p in u1.sees and p in u2.posts -> u2 in u1.follows
-- div,2
all p : Photo-Ad | all u1, u2 : User | (u1->p in sees & u2->p in posts) => u1->u2 in follows
-- div,1
one a: Ad | all u: User | u->a in sees
one x: User | all p: x.follows.Photo-Ad | x->p in sees
-- div,1
all u : User | all p : Photo | u->p in sees and p not in Ad implies u not in follows(posts.p)
-- div,1
all x,y: User | all p: Photo | p != Ad implies (p in x.sees && p in x.posts)-> x in y.follows
-- div,1
all x : User | all y : User | all z : Photo | (x -> y not in follows) -> (x -> z not in sees)
-- div,1
all u:User, p:Photo - Ad | some v:User | u in sees.p implies v in posts.p and u in u.follows.v
-- div,1
all u : User, p : Photo - Ad | p in u.sees implies u.follows in posts.p
all a : Ad | sees.a > 0
-- div,1
all u : User, p : Photo - Ad | p in u.sees implies u.follows in posts.p
all a : Ad | User sees.a
-- div,1
all x : User | all y : User |all p : Photo| y in x.follows and p in y.posts and x in sees.y and p
-- div,1
all u1,u2 : User, p: Photo | u1.sees.p and p not in Ad implies p in u2.posts and u2 in u1.follows
-- div,1
all u:User | u.posts not in u.sees
all u:User | all p:Photo | p in u.sees implies u.follows->posts
-- div,1
all u: User, p: Photo - Ad | u in u.follows => u in p.~sees
all u: User | u.sees = u.follows.Photo
-- div,1
all x: User, y: User, z : Photo | y in follows.x and z in posts.y and  x in sees.z and z is not Ad
-- div,1
all p : Photo-Ad | all u : User | u.p.sees implies some v : User | v->p in posts && u->v in follows
-- div,1
all u : User | all p : Photo in u.sees | p in Ad or some u1 : User | p in u1.post e u1 in u.follows
-- div,1
all u: User | all p: Photo-Ad | u.sees.p implies (some y: User | u->y in follows and y->p in posts)
-- div,1
all u: User, p : Photo | u -> p in sees => p&Ad || some f : User | u->f in follows && f->p in posts
-- div,1
all u1,u2 : User, p: Photo | u1.sees.p and p not in Ad implies (p in u2.posts and u2 in u1.follows)
-- div,1
all u: User, u2: User, y: Photo | (y not in Ad and u->y in sees and u2->y) implies (u->y in follows)
-- div,1
all x : User | all y : Photo | all u : User | y not Ad && u not in x.follows implies y not in x.sees
-- div,1
all u1, u2:User, p:Photo | u1 -> p in sees and u2 -> p posts and u1 -> u2
sees in User set ->  set Ad
-- div,1
all x : User | all y : Photo | all u : User | y not Ad and u not in x.follows implies y not in x.sees
-- div,1
all u:User | all p:Photo,follow:User | p in u.sees and follow in u.follows implies p in follow->posts
-- div,2
all u : User | all p : Photo in u.sees | p in Ad or some u1 : User | p in u1.post and u1 in u.follows
-- div,2
all u1,u2 : User, p: Photo | (u1.sees.p and p not in Ad) implies (p in u2.posts and u2 in u1.follows)
-- div,1
all x:User, p:Photo| x->p in sees and p not in Ad implies all u:User| x->u in follows and u->p u.posts
-- div,2
all u : User, p : Photo - Ad | p in u.sees implies u.follows in posts.p
all a : Ad, u : User | u.sees.a
-- div,1
all u1,u2 : User, p: Photo | (u1.sees.p and (p not in Ad)) implies (p in u2.posts and u2 in u1.follows)
-- div,1
all u,u2:User | all p:Photo | u != u2 and u->u2 in u.follows and u->p in sees implies (u2->p in posts )
-- div,1
all u1, u2:User, p:Photo | u1 -> p in sees and u2 -> p in posts and u1 -> u2
sees in User set ->  set Ad
-- div,1
all x:User, p:Photo| x->p in sees and p not in Ad implies all u:User| x->u in follows and u->p in u.posts
-- div,1
all x : User | all y : User | all p : Photo | y in follows.x and p in y.posts and p not Ad and x in sees.p
-- div,1
all u,u2:User | all p:Photo | u != u2 and u->u2 in u.follows and u->p in sees implies (u2->p in u2.posts )
-- div,1
all u : User | all p : Photo | p in u.sees -> p in Ad or some u1 : User | p in u1.posts and u1 in u.follows
-- div,1
all u1,u2 : User, p: Photo | (u1.sees.p and (p not in Ad)) implies ((p in u2.posts) and (u2 in u1.follows))
-- div,2
all x : User | all y : sees.x | y is Photo implies y.post in follows.x
all x : User | all y : Ad | x.sees.y
-- div,2
all x,y : User | (x.sees in y.posts) implies (y.posts in Ad) or (some 								  			  y.posts in x.follows )
-- div,1
all u1 : User | all u2 : User | all p : u2.posts and p not in Ad | u1 -> p in sees implies u2 in u1.follows
-- div,1
all x : User | all y : sees.x | y not is Ad implies y.post in follows.x
all x : User | all y : Ad | x.sees.y
-- div,4
all u : User, p : Photo - Ad | p in u.sees implies u.follows in posts.p
all a : Ad, u : User | u.sees some a
-- div,1
all x,y: User | all p: Photo | p != Ad  & x != y implies (p in x.sees && p in x.posts) implies x in y.follows
-- div,1
all x : User | all y : User |all p : Photo| y in x.follows and p in y.posts and x in sees.y and p is not in Ad
-- div,1
all u1 : User| some u2 : User | all p : Photo | u1->p in sees implies p in Ad or u2.posts and u2 in u1.follows
-- div,1
all x : User , y : User , z : Photo | z not in Ad and z in y.posts and x in follows.y => z in x.sees else sees.z
-- div,1
all x,y : User | all a : Ad | x.sees in y.posts implies y.posts in a or some 								  			  y.posts in x.follows
-- div,1
all x,y: User | all p: Photo | p not Ad  and x != y implies (p in x.sees && p in y.posts) implies x in y.follows
-- div,1
all u1,u2:User, p:Photo | p.posts.u1 implies p not in Ad
all p:Photo , a: Ad , u:User | u.sees.p implies p in Ad
-- div,1
all x,y : User | all a : Ad | x.sees in y.posts implies y.posts in a and some 								  			  y.posts in x.follows
-- div,1
all p: Photo, u1,u2: User| p in u1.sees implies ((p not in Ad and p in u2.posts) or (p in Ad and p not in posts))
-- div,1
all p:Photo | all u:User,u2:User | u != u2 and p in u.sees and p in u2.posts and p not Ad implies u2 in u.follows
-- div,1
all x : User | all p : Photo | some y : User | p in x.sees implies ((p in y.posts & x->y in follows) or (p in Ad))
-- div,1
all u1,u2:User, p:Photo | p in u1.posts implies p not in Ad
all p:Photo , a: Ad , u:User | u.sees.p implies p in Ad
-- div,1
all u1 : User, i : Photo | (no Ad.i and u1 in sees.i) implies (some u2 : User | u1 in follows.u2 and u2 in posts.i)
-- div,1
all p : Photo | all u1 : User | all u2 : User |
p in u1.sees -> (p in u2.posts and u2 in u1.follows and p not in Ad)
-- div,1
all u1 : User, i : Photo | ((no Ad.i) and u1 in sees.i) implies (some u2 : User | u1 in follows.u2 and u2 in posts.i)
-- div,1
all x,y : User | all a : Ad | x.sees in y.posts implies (y.posts in a) or (some 								  			  y.posts in x.follows )
-- div,1
all x,y : User | all a : Ad | (x.sees in y.posts) implies (y.posts in a) or (some 								  			  y.posts in x.follows )
-- div,2
all u : User, p : Photo | p in Ad => u.sees.p
all u : User, p : Photo | p not in Ad and p in u.follows.posts => u.sees.p
-- div,1
all u1 : User, i : Photo | (i not in Ad and u1 in sees.i) implies (some u2 : User | some u1.follows.u2 and u2 in posts.i)
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows
all ad : univ | sees.ad
-- div,1
all x, y : User | all z : Ad | x.sees not in z and y in x.follows

all x : User | all y : Photo | x.sees in y and y is a Ad
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows
all ad,u : univ | sees.ad
-- div,1
all u1 : User | all ph : Photo |
u1 -> ph in sees -> ((some u2 : User | ph in u2.posts and u1 -> u2 in follows ) or ph in Ad)
-- div,1
all u: User | all a: Ad | a in u.sees
all u1, u2: User | all p: Photo | u2 in u1.follows
and p i u2.posts implies p in u1.sees
-- div,1
all u: User | all a: Ad | a in u.sees
all u1, u2: User | all p: Photo | u2 in u1.follows and p i u2.posts implies p in u1.sees
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows
all ad,u : univ | u.sees.ad
-- div,1
all u1 : User | all ph : Photo |
ph in u1.sees  implies ((some u2 : User | ph in u2.posts and some u2.u1.follows ) or ph  in Ad)
-- div,1
all u1: User, u2: User, p: Photo | p in u1.sees and p not in Ad and p in u2.posts implies u2 in u1.follows
all a: Ad | a in sees
-- div,1
all u1 : User | all ph : Photo |
ph in u1.sees  implies ((some u2 : User | ph in u2.posts and some u1.follows.u2 ) or ph  in Ad)
-- div,1
all p : Photo | all u1 : User | all u2 : User |
p in u1.sees -> (p in u2.posts and u2 in u1.follows and p not in Ad) or (p in Ad)
-- div,4
all p : Photo | all u1 : User | all u2 : User |
p in u1.sees -> ((p in u2.posts and u2 in u1.follows and p not in Ad) or (p in Ad))
-- div,1
all p : Photo, u1,u2 : User | p in u1.sees implies p in u2.posts and u2 in u1.follows and not Ad.p
all u : User, ad : Ad | ad in u.sees
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all ad : Ad, u : User | ad in *(u.sees)
-- div,1
all u1, u2 : User, p : Photo , a : Ad | (p != a && u1 in posts.p && u2 in sees.p) implies (u2 in follows.u1)

all u : User, a : Ad | u->a
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all ad : Ad, u : User | ad in ^(u.sees)
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all u : User, ad : Ad | ad in *(u.sees)
-- div,1
all u:User | all p:Photo,follow:User | p in u.sees and follow in u.follows implies p -> follow.posts
all u:User | all ad:Ad | ad in u.sees
-- div,1
all u1, u2 : User, p : Photo , a : Ad | (p != a && u1 in posts.p && u2 in sees.p) implies (u2 in follows.u1)

all u : User, a : Ad | u -> a
-- div,1
all u:User | all p:Photo,follow:User | p in u.sees and follow in u.follows implies p in follow->posts
all u:User | all ad:Ad | ad in u.sees
-- div,9
all p : Photo, u1,u2 : User | p != Ad and p in *(u1.sees) implies p in u2.posts and u2 in u1.follows
all u : User, ad : Ad | ad in *(u.sees)
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in ^(u1.sees) implies p in u2.posts and u2 in u1.follows
all u : User, ad : Ad | ad in ^(u.sees)
-- div,1
all x : User | all y : User | all p : Photo - Ad |((p in y.posts) in x.sees) implies (y in x.follows)

all x : Ad | all y : User | x in y.sees
-- div,1
all u1: User, u2: User, p: Photo | p in u1.sees and p not in Ad and p in u2.posts implies u2 in u1.follows
all p: Photo | p in Ad implies p in sees
-- div,1
all x,z : User | all p : Photo | x->p in sees and no p in Ad implies x->z in follows

all p : Photo | sees.p and p not in Ad implies follows.sees.p
-- div,1
all u1: User, u2: User, p: Photo | u1 != u2 and p in Ad and p in u1.sees and p in u2.posts implies u2 in u1.follows
all a: Ad, u: User | sees.a = iden
-- div,1
all u : User | all p : Photo | (p in Ad implies (all user : User | sees[user])) or (p not in Ad implies (all user : User | sees[user] and follows[user]))
-- div,2
all u : User, p : Photo, us : User | p in u.sees implies (p in Ad || (p in us.posts implies us in u.follows))

all u : User | u.sees in (Ad || u.follows)
-- div,1
all u : User | all p : Photo | ((p in Ad implies (all user : User | sees[user])) or (p not in Ad implies (all user : User | sees[user] and follows[user])))
-- div,1
all u : User, p : Photo, us : User | p in u.sees implies (p in Ad || (p in us.posts implies us in u.follows))

all u : User | u.sees in (Photo.Ad || u.follows)
-- div,1
one u1,u2:User|all p1,p2:Photo|(p1 not in Ad implies (((u1->u2 in follows) and (u2->p1 in posts)) implies (u1->p1 in sees))) and (all u:User|p2 in Ad implies u->p2)
-- div,1
all u1,u2:User|all p1,p2:Photo|(p1 not in Ad implies (((u1->u2 in follows) and (u2->p1 in posts)) implies (u1->p1 in sees))) and (all u:User|p2 in Ad implies u->p2)
-- div,1
all u1,u2:User|all p1,p2:Photo|((p1 not in Ad) implies (((u1->u2 in follows) and (u2->p1 in posts)) implies (u1->p1 in sees))) and (all u:User|p2 in Ad implies u->p2)
-- div,1
all u1,u2:User|all p1,p2:Photo|((p1 not in Ad) implies (((u1->p1 in posts) and (u2->u1 in follows)) implies (u2->p1 in sees))) and (all u:User|p2 in Ad implies u->p2)
-- div,1
all u1,u2:User | all p1,p2:Photo|((p1 not in Ad) implies (((u1->p1 in posts) and (u2->u1 in follows)) implies (u2->p1 in sees))) and (all u:User|p2 in Ad implies u->p2)
-- div,1
all user1, user2 : User | all photo : Photo | (photo in user1.posts and photo in user2.sees) implies user1 in user2.follows
all user : User | all photo : Photo | all ad : Ad | (photo or add) in user.sees
-- div,1
