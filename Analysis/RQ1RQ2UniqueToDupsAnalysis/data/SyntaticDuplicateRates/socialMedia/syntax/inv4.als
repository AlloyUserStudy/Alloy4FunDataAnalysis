,
-- div,1
all
-- div,14
adasdsa
-- div,1
some x :
-- div,6
all u:User
-- div,2
all u:User |
-- div,2
all | u.posts
-- div,1
all u: User |
-- div,2
all x : User |
-- div,3
all u1 : User |
-- div,2
some u.posts & Ad
-- div,1
all u:User | u->p
-- div,3
all u: User | one A
-- div,1
fkdpsfkodpskfposdofpdk
-- div,1
all u: User, p : Photo
-- div,1
all u:User | u.post.Ad
-- div,1
all p_Photo | posts.p.Ad
-- div,2
all x : Ad | all posts.x
-- div,1
all p: Photos&Ad |posts.p
-- div,1
(posts :> Ad).Ad = post.Ad
-- div,1
all p: Photos&Ad | posts.p
-- div,1
all u : user | u.posts.ad |
-- div,1
all u. User | u.posts in Ad
-- div,1
all p: Photo&Ad | u.posts.p
-- div,1
all u:User | u.photos in Ad
-- div,1
all p_Photo | posts.p & p=Ad
-- div,1
all p_Photo | posts.p $ p=Ad
-- div,1
all p_Photo | posts.p & p==Ad
-- div,1
all u:User | a.Ad | u.posts.a
-- div,1
all u:User | (s.posts-Ad)!= 0
-- div,1
all u:User, a:Ad| p.posts & a
-- div,1
all p:Photo | posts.p & p==Ad
-- div,1
no (post.Ad & post.(Photo-Ad))
-- div,1
all u: User | all p: u.posts |
-- div,2
some x : User | posts.x | x.Ad
-- div,1
some x : User | posts.x | x->Ad
-- div,1
no (posts.Ad & posts(Photo-Ad))
-- div,1
all x : User | iff x.posts is Ad
-- div,1
all x : User | one x.posts is Ad
-- div,1
all x :  User | all y : Ad | x ->
-- div,1
all u : User | all (u.posts & Ad)
-- div,1
all ad : Ad | add.user.posts in Ad
-- div,2
all ad : Ad | user.add.posts in Ad
-- div,1
all u: User, a: Ad, p: Photo | one
-- div,2
all x : Ad | all x.posts.posts : Ad
-- div,1
all u:user,a:add|u.posts -> a.posts
-- div,1
no (posts.Ad and posts(Photo - Ad))
-- div,1
posts.Ad not in posts.(Photos - Ad)
-- div,1
all u:User, a:Ad| all (u.posts & a)
-- div,2
all x:User | all y:x.post | y in Ad
-- div,2
all u : User | implies u.posts in Ad
-- div,1
all x : Ad | x.posts.posts in some Ad
-- div,2
all x : User | iff x.posts is Ad then
-- div,4
all ad : Ad | all user.add.posts in Ad
-- div,1
all u : User | p in Ad => u.posts in Ad
-- div,1
all x : Ad | all posts.x iff one posts.x
-- div,1
some p | p in Ad -> none User.posts - Ad
-- div,1
all u : User | some u.posts
-- div,1
all u:User, ad:Ad | ad in u.posts implies
-- div,1
all u:User | (s.posts-Ad)!= 0 implies 1=1
-- div,1
all u : user | u.posts in Ad & no u.posts
-- div,3
all x : Day | some p : Photo | x == p.date
-- div,1
all u: User | all p: Post | some u.posts.p
-- div,1
all u:User, a:Ad | u -> a in posts implies
-- div,2
all u: User | some p in u.posts => p in Ad
-- div,1
all u:User, a:Ad | u->a in posts implies (
-- div,3
all u: User, a: Ad, p: Photo | one u.pots.a
-- div,1
all u : User , a : Ad | a in posts.u implies
-- div,2
all u:User, some p:Photo | p in u.posts & Ad
-- div,1
User.posts == Ad implies (User.posts' == Ad)
-- div,1
all u:User, p:Photo| all (u.posts & p) in Ad
-- div,1
all u:User, p:Photo| all (u.posts & a) in Ad
-- div,1
all x : User | some y in x.posts and y in Ad
-- div,1
Ad in User.posts implies all User.posts = Ad
-- div,1
posts in (User one -> Photo in (Ad + Photo))
-- div,1
all u:User | (i.posts & Ad) -> u.posts in Ad
-- div,1
all u: User | some u.posts.Ad | u.posts in Ad
-- div,2
all x:User| x.posts in Ad implies x.posts==Ad
-- div,2
all u: User | all p: Photo | some u.posts.Add
-- div,1
all x:User | one x.posts:Ad => all x.posts:Ad
-- div,2
all u: User | some u.posts&Ad | no u.posts-Ad
-- div,1
all a: Ad | all ps in posts.a.posts | ps in Ad
-- div,1
all u:User, a:Ad | a in u.post -> u.post in Ad
-- div,1
all u: User | (some p in u.posts) => (p in Ad)
-- div,1
all ad : Ad | all posts : posts.ad.posts in Ad
-- div,1
all u:User | some u.posts implies u.posts in a
-- div,1
all u:User | u.posts - not Ad implies posts.Ad
-- div,2
(User.posts == Ad) implies (User.posts' == Ad)
-- div,1
all x : User | some p : x.posts.Ad |all p in Ad
-- div,1
all u : User | one a : Ad| a in u.posts implies
-- div,1
all x:User| x.posts in Ad implies x.posts == Ad
-- div,1
all u : User | x.posts in Ad or no x.posts & Ad
-- div,1
all u : User | u.posts.Ad implies u.posts == Ad
-- div,1
all x : User | all y : Ad | one x.posts = one y
-- div,1
one p:Photo | p in Ad -> all posts.p.posts in Ad
-- div,1
all a : Ad | all u : posts.a | all u.posts in Ad
-- div,1
one p:Photo | p in Ad => all posts.p.posts in Ad
-- div,1
all u: User, a: Ad | a in u.posts => u.posts = p
-- div,1
all p : Ad | all u : User | p in u.posts implies
-- div,1
all u : User | one a : Add| a in u.posts implies
-- div,1
all x:univ | x in Ad implies posts.p and p is Ad
-- div,1
all u:User | (u.posts & Ad) => all u.posts in Ad
-- div,2
all x : Day | all p : Photo | assert{x in p.date}
-- div,1
all user : User | all ad : Add | ad in user.posts
-- div,3
all u : user | u.posts & Ad implies u.posts in Ad
-- div,1
all x : Day | all p : Photo | assert(x in p.date)
-- div,1
all u: User  u.posts in Ad or u.posts in Photo-Ad
-- div,1
all u : User | (u.posts - Ad) + no (u.posts - Ad)
-- div,1
all u : User | u.posts in Ad or not u.post and Ad
-- div,1
all u : User | u.posts in Ad || u.Posts not in Ad
-- div,1
all x : User | x.posts in Photos or x.posts in Ad
-- div,1
assert{all x : Day | all p : Photo | x in p.date}
-- div,1
all u : User | u.posts in Ad -> all u.posts in Ad
-- div,1
all u:User, a: Ad | a in u.posts => u.posts in ad
-- div,1
no((posts :> Ad).Ad & (posts :> (Photo - Ad)).ad)
-- div,1
all u:user, p:Ad | u->p in posts => u.posts in Ad
-- div,1
all u:User | (u.posts & Ad) -> (all u.posts -> Ad)
-- div,1
all u: User, d: Ad | u in a.~posts => u.posts in d
-- div,1
all x : User | some p : x.posts in Ad |all p in Ad
-- div,1
all u:User, a:Add | a in u.posts => u.posts in Add
-- div,1
all u:User| one u.posts in Ad => all u.posts in Ad
-- div,1
all u:User| one u.posts in Ad implies u.posts== Ad
-- div,1
all u:User | one u.posts in Ad | all u.posts in Ad
-- div,1
all u:User | u.posts.Ad implies all p:Photo | p==Ad
-- div,1
all u : User |  (u.posts & Ad) + (u.posts & not Ad)
-- div,1
all u : User | p : u.posts | p not in Ad or p in Ad
-- div,1
all a : Ad | u in posts.a implies all u.posts in Ad
-- div,1
all x:User| x.posts in Ad implies all x.posts in Ad
-- div,1
all u : User | all u.posts in Ad or no u.posts - Ad
-- div,1
all u:User | (s.posts-Ad)!= 0 implies s.posts == Ad
-- div,1
all u:User | some u.posts & Ad imples u.posts in Ad
-- div,1
all u:User | u.posts - not Ad implies u.posts in Ad
-- div,2
all u:User | some u.posts & ad implies u.posts + Ad
-- div,1
all x:User| x.posts in Ad implies all x.posts == Ad
-- div,1
all u:User | some u.posts & ad implies u.posts in Ad
-- div,1
all u:User | u.posts in Ad implies all u.posts in Ad
-- div,1
all u,a,y : univ | u->a in posts and a in Ad implies
-- div,1
all u1 : User | u1.posts in Ad implies (u1.ph in Ad)
-- div,1
all u: User | some u.posts in Ad implies u.posts==Ad
-- div,1
all u:User | some (u.posts-Ad) implies u.posts == Ad
-- div,1
all u : user, a: Ad | u in a.~posts => u.posts in Ad
-- div,1
all x : User | all y : Ad | x.posts = y, x.posts = y
-- div,1
all x : User | all y : Ad | x.posts = y  x.posts = y
-- div,1
all u:User | some u.posts in Ad => all u.posts in Ad
-- div,1
all u: User, a: Ad | u.posts = a => u.posts - ad = 0
-- div,1
all u : User, a : Add | a in u.posts => u.posts in Ad
-- div,1
all p: Photo| p in ad implies all posts.p.posts in ad
-- div,1
all p: Photo| p in Ad implies all posts.p.posts in Ad
-- div,1
all p: Photo| p in ad implies all posts.p.posts in Ad
-- div,1
all x : User | one y : x.posts in Ad => x.posts in Ad
-- div,1
all u : User | some posts.u in Ad implies all posts.u
-- div,1
all x : User | (some x.posts in Ad) | (x.posts in Ad)
-- div,1
all u: User | some u.posts in Ad => all u.posts in Ad
-- div,1
all x : User | one x.posts in Ad -> all x.posts in Ad
-- div,1
all u : User | some u.posts & Ad implies u.post in Ad
-- div,1
all u: User | u.posts in Ad implies all u.posts in Ad
-- div,2
all u : User | some u.posts.Ad implies all u.posts.Ad
-- div,2
all u : User | one u.posts in Ad -> all u.posts in Ad
-- div,2
all u : User | u.posts == Ad or ( u.posts & Photo-Ad)
-- div,1
all u:User | (user.posts in Ad) or (no user.posts-Ad)
-- div,1
all x : User | one x.posts= Ad implies all x.posts =Ad
-- div,1
all u:User| u.posts in Ad implies x.follows.sees in Ad
-- div,1
all x : User | Ad in u.posts implies all Ad in u.posts
-- div,1
some u: User, some a, p: Ad | u->a and after (no u->p)
-- div,1
all u : User | u.posts in Ad implies all u.posts in Ad
-- div,5
all x :  User | all y : Ad | all x.posts -> y in posts
-- div,1
all x : User | one (x.posts & Ad) -> all (x.posts  Ad)
-- div,1
all u : User | some u.posts & Ad implies u.posts in ad
-- div,1
all u: User | u.posts in Ad implies all: u.posts in Ad
-- div,1
all x:User, a:Add | a in x.posts implies x.posts in Ad
-- div,1
all u: User | (u.posts in Add) or (u.posts not in Add)
-- div,1
all u : User | Ad in u.posts implies all Ad in u.posts
-- div,1
all u : User, a:Ad | a in u.posts -> all u.posts in Ad
-- div,1
all u : user | some u.posts & Ad implies u.posts in Ad
-- div,1
all x : User | some x.posts in Ad -> all x.posts in Ad
-- div,1
all u : User | one u.posts in Ad implies u.posts == Ad
-- div,1
all u: User | u.posts in (Photo - Ad) or x.posts in Ad
-- div,2
all x:User | some y: x.posts in Ad | all x.posts in Ad
-- div,1
some u: User, one a: Ad | u->a and after (no u->Photo)
-- div,1
all u: User | some a: a | a in u.posts => u.posts in Ad
-- div,1
All x : User | some x.posts in Ad implies x.posts in Ad
-- div,2
all u : User | all p : u.posts | p in Ad -> all p in Ad
-- div,2
all u : User | u.post & Ad != none implies u.posts = Ad
-- div,1
all u : User one a : Ad | a in u.posts => u.posts in Ad
-- div,1
all u : User | all p : posts.u | p in Ad -> all p in Ad
-- div,1
all x : User | one (x.posts & Ad) -> all (x.posts & Ad)
-- div,1
all u : User | all p : posts.u | p in Ad => all p in Ad
-- div,1
all u: User | some u.posts&Ad impliesu.posts&(Photo-Ad)
-- div,1
some u: User one a: Ad | u.posts.a implies u.posts = Ad
-- div,1
all u : User, a.Ad | a in u.posts implies u.posts in Ad
-- div,1
all u : User | Ad in u.posts implies  Ad in all u.posts
-- div,1
all u:User, a:Ad, p:u.posts | a in u.posts implies p:Ad
-- div,3
all u: User | u.posts in (Photos - Ad) or x.posts in Ad
-- div,1
all u: User | some u.posts.Ad implies all u.posts in Ad
-- div,1
all u: User, some a : Ad | a in u.posts => u.posts in Ad
-- div,1
all u: User | some u.posts & Ad implies no x.posts in Ad
-- div,1
all x:User | one y:x.posts | y in Ad implies all y in Ad
-- div,1
all u : User | some u.posts in Ad) implies u.posts in Ad
-- div,1
all u : User | all photo : Photo | u.posts.p and p in Ad
-- div,1
all u : User | one u.posts & Ad implies all u.posts & Ad
-- div,1
all u: User | (some a: Ad | in u.posts) => u.posts in Ad
-- div,1
all u : User | u.posts in Ad implies all u.posts in (Ad)
-- div,1
all u : User | Ad in u.posts.photo implies Ad in u.posts
-- div,1
some u: User, one a: Ad | (u->a) implies (u.posts in Ad)
-- div,1
all u : User | Ad in u.posts implies u.posts.photo in Ad
-- div,1
all u:User | one u.posts in Ad implies all u.posts in Ad
-- div,1
all x:User | one x.posts in Ad | all y:x.posts | y in Ad
-- div,1
all u : User | some a : Ad | a in u.post implies a in Ad
-- div,1
all x : User | one x.post in Ad implies all x.posts in Ad
-- div,1
all x:User| some a:Ad| a in u.posts implies x.posts in Ad
-- div,6
all x : User | one x.posts in Adds -> all x.posts in Adds
-- div,1
all u: User | (some u.posts in Ad) => (all u.posts in Ad)
-- div,2
all x: User, y: Photo | y in ad implies all z: x.posts.Ad
-- div,2
all u : User | all p in u.posts| p in Ad => u.posts in Ad
-- div,1
all u : User | ad in u.posts implies (p in u.posts) in Ad
-- div,1
all u:User | (some a:Ad | a in u.posts) => u.posts in Ad)
-- div,1
all u: User, a: Ad, p: Photo | u.posts = a =>  u.posts==a
-- div,1
all u : User | all u.posts in Ad or all u.posts not in Ad
-- div,1
all u: User, a: Ad, p: Photo | u.posts = a =>  u.posts==p
-- div,1
all x : User | one (x.posts in Ad) -> all (x.posts in Ad)
-- div,1
all u : User | some u.posts & Ad implies all u.posts & Ad
-- div,5
some u: User one a: Ad | u.posts = a implies u.posts = Ad
-- div,1
all x : User | some x.posts & Ad implies all x.posts & Ad
-- div,1
all u : User | one u.posts in Ad | no u.posts in Photo-Ad
-- div,1
all u: User |
(some u.posts in Ad) => (all u.posts in Ad)
-- div,2
all p: Photo | some post.p in Ad implies all post.p in Ad
-- div,1
all u : User, a : Ad | a in u.post implies u.posts in add
-- div,2
all x: User, y: Photo | y in ad implies all x.posts in Ad
-- div,1
all x : User | (some x.posts in Ad) -> (all x.posts in Ad)
-- div,1
all x : User | x.posts one in Ad implies all x.posts in Ad
-- div,1
all u : User | some u.posts & Ad implies all u.posts in Ad
-- div,8
all u: User | some u.posts in Ad implies all u.posts in Ad
-- div,2
all p:Photo, i:Influecer | p -> i in posts implies p in Ad
-- div,1
all u : User, a : Ad | a in u.posts implies u.posts in add
-- div,1
one p:Photo | p extends Ad => all posts.p.posts extends Ad
-- div,1
all u : User | one u.posts in Ad implies all u.posts in Ad
-- div,3
all x : User | one x.posts in Ad implies all x.posts in Ad
-- div,6
all u : User, a : Ad | a in u.posts implies u.posts in Add
-- div,1
all u: User | one u.posts in Ad implies  all u.posts in Ad
-- div,2
all u:User | some (u.posts & Ad) implies all u.posts in Ad
-- div,1
some u: User.posts | all ad : Ad | u in ad implies (u== ad)
-- div,1
all u : User, a : Add | a in u.posts implies u.posts in Add
-- div,1
all u : User | all p : u.posts | p in Ad implies all p : Ad
-- div,1
all u:User | u.posts.ad implies u.posts.photo in u.posts.Ad
-- div,1
all u : User | some u.posts in Ad implies all u.posts in Ad
-- div,6
all u: User, a: Ad, p: Photo | u.posts = a => all u.posts=a
-- div,1
all u: User, a: Ad, p: Photo | u.posts = a => all u.posts=p
-- div,1
all x : User | some ad : Ad & ad in x.posts => x.post in Ad
-- div,1
all x : User | some ad : Ad | ad in x.posts => x.post in Ad
-- div,1
all u:User | u.posts.ad implies u.posts.photo in u.posts.ad
-- div,1
all u:User | (u.posts & Ad) in Photos implies u.posts in Ad
-- div,1
all u:Users | one c:u.posts | c in Ad implies u.posts in Ad
-- div,1
all u : User | some Ad in u.posts implies all Ad in u.posts
-- div,2
all x : User | all p : x.posts |all p in Ad iff one p in Ad
-- div,1
all u:User, a:Ad, p:u.posts | a in u.posts implies all p:Ad
-- div,1
all u : User | one u.posts in Ad | none u.posts in Photo-Ad
-- div,1
all u : User | all p : posts.u | some p : Ad => all p in Ad
-- div,1
all u : User | one u.posts in Ad implies (all u.posts in Ad)
-- div,1
all u:User | some p:Photo-Ad | u->p in posts => u.post in Ad
-- div,1
all u:User | (some u.posts & Ad) implies (all u.posts in Ad)
-- div,1
all u : User , a : Add | one u.posts.a implies u.posts in Ad
-- div,1
some u: User, one a: Ad | (u->a) implies (all u.posts in Ad)
-- div,1
all u : User | all u.posts in Ad or (all u.posts & Photo-Ad)
-- div,2
all u1:User | ((u1.posts - Ad) = Ad) or (none (u1.posts-Ad))
-- div,2
all u : User | all p : u.posts | p in Ad implies all p in Ad
-- div,1
all u: User | all p : u.posts | some p in Ad iff all p in Ad
-- div,1
all u : User | set p : Photo | p in Ad implies u.posts in Ad
-- div,1
all u : User | some u.posts : Ad | all p : u.posts | p in Ad
-- div,1
all x : User | one x.posts in Ad implies (all x.posts in Ad)
-- div,1
all x : User | some ad : Ad && ad in x.posts => x.post in Ad
-- div,1
all x:User| one y:Ad | x-> y in posts implies x.posts in Ads
-- div,1
some a: Ad | all u: User | a in u.posts implies u.post in Ad
-- div,2
all x : User | all p : x.posts | all p in Ad iff one p in Ad
-- div,2
all x :User | (some x.posts & Ad) implies (all x.posts & Ad)
-- div,1
all u : User | some (u.posts & Ad) implies (none u.posts-Ad)
-- div,1
all u : User | set p : Photo | p in Ad implies posts.u in Ad
-- div,1
all x:User | some y: x.posts in Ad implies all x.posts in Ad
-- div,1
all u: User | some ad: u.posts => all ps : u.posts | ps in Ad
-- div,1
all u:User | (some p:Photo | u -> p in posts) implies p in Ad
-- div,1
all u:User | (some p:Ad | p in u.posts implies) u.posts in Ad
-- div,1
all x:User | all y:x.posts | some y in Ad implies all y in Ad
-- div,1
all u: User | all a : Ad | a in u.posts implies u.posts in ad
-- div,1
all x : User, y : Photo | y in Ad and y in x.posts implies ()
-- div,1
all u : User, p : Ad | p in u.posts => all po | u.posts in Ad
-- div,1
all x : User | some x.posts in Ad | all y : x.posts | y in Ad
-- div,1
one ad:Add | all u:User | ad in u.posts implies u.posts in Ad
-- div,1
all u : User | f in Ad and f in u->posts implies u.posts in Ad
-- div,1
all x : User | (one x.posts) in Ad implies (all x.posts) in Ad
-- div,1
some u: User | some (u.posts == Ad) and after no u.posts == Ad
-- div,1
all u : User | all ad : Ad | ad in u.post implies u.post in Ad
-- div,1
all u : User, p : Photo | p in Ad => (all posts in User -> Ad)
-- div,1
all x : User | (one x.posts in Ad) implies (all x.posts in Ad)
-- div,1
some u: User, one a: Ad | u->a and after (no u.posts == Photo)
-- div,1
all x : User | some y : Ad | y in x.posts => all x.posts in Ad
-- div,4
all u: User | some a: Add | a in u.posts implies u.posts in Ad
-- div,1
all u: User | (some p in u.posts | p in Ad) => (u.posts in Ad)
-- div,3
all x : User | (some x.posts & Ad) implies (all x.posts in Ad)
-- div,1
all x :User | (some x.posts in Ad) implies (all x.posts in Ad)
-- div,1
all u : User, some a : Ad | a in u.posts implies u.posts in Ad
-- div,1
all user : User | (user.posts in Ad) or (none user.posts in Ad)
-- div,1
all u : User | all a in Ad | a in u.posts implies u.posts in Ad
-- div,1
all u : User | all ad : Ad | ad in u.posts implies u.post in Ad
-- div,1
all x : User | some y : Add | y in x.posts => all x.posts in Ad
-- div,1
all u:User | (Ad in u.posts) => (u.posts = Ad)
-- div,1
all u : User | some a : Ad | a in p.posts implies p.posts in Ad
-- div,1
all x : User | all p : x.posts |(all p in Ad) iff (one p in Ad)
-- div,1
all x : User | some y : Ad | (y in x.posts) -> (x.posts in Ad))
-- div,1
all u:User | all p:u:posts | some u.posts in Ad implies p in Ad
-- div,1
all u : User and ad : Add | ad in u.posts implies u.posts in Ad
-- div,1
all u : User, ad : Ad | ad in u.posts implies all u.posts in Ad
-- div,1
all u: User | some a : Add | a in u.posts implies u.posts in Ad
-- div,1
all u : User and ad : Add | ad in u.posts implies ad in u.posts
-- div,1
all u:User | (Ad in u.posts) => (u.posts in Ad)
-- div,1
all u: User, a: Ad, p: Photo | one u.posts = a =>  all u.posts=a
-- div,1
some u: User.posts | all ad : Ad | u in ad implies (all u in ad)
-- div,1
all x : User | all p : x.posts |(all p in Ad) iff (some p in Ad)
-- div,1
all u : User | one a : Ad| a in u.posts implies all u.posts = Ad
-- div,1
some u: User | some (u.posts == Ad) and after (no u.posts == Ad)
-- div,1
all u : User and ad : Add | ad in u.posts implies ad in u.^posts
-- div,1
all x : User, p : Photo | u->p in Ad implies (all u.posts in Ad)
-- div,1
all u: Users | one a: Ad | a in u.posts implies all u.posts in Ad
-- div,1
all x : User | all x.posts in Ad iff (some y : Ad | y in posts.y)
-- div,3
all u:User | u.posts.photo.Ad implies u.posts.photo in u.posts.Ad
-- div,1
all u: User | some p in u.posts => (all ps in u.posts | ps in Ad)
-- div,1
all u : User | all a : Ad | a in u.posts implies all u.posts in a
-- div,1
all x : User |  all y : x.posts | one y in Ad implies all y in Ad
-- div,1
some u: User, one a: Ad | (u.posts.a) implies (all u.posts in Ad)
-- div,1
all u1:User | some ((u1.posts - Ad) = Ad) or (none (u1.posts-Ad))
-- div,2
all x : User | some y : Photo | y in Ad implies all x.posts in Ad
-- div,1
all u : User and ad : Ad | ad in u.posts implies ad in u.(^posts)
-- div,1
all u : User, some a : Ad | (u in posts.a) implies (posts.u in Ad)
-- div,1
all u: User, a: Ad | some al: al.~posts | al in u => u.posts in Ad
-- div,1
all u : User | some a : Ad | u->a in posts | implies u.posts in Ad
-- div,1
all u : User and ad : Add | ad in u.posts implies ad in u.(^posts)
-- div,1
all u:User, a:Ad,p:Photos-Ad | a in u.posts implies u.posts none p
-- div,1
all u:User, p:photo| p in u.posts and p in Ad => all u.posts in Ad
-- div,1
all u : User, ad : Ad | ad in u.posts implies (p in u.posts) in Ad
-- div,1
all u:User, p:Photo| p in u.posts and p in Ad => all u.posts in Ad
-- div,1
all u: User | some a : Ad | a in u.posts implies all u.posts in Ad
-- div,1
all u :User | all ad : Ad | ad in u.posts implies user.posts in Ad
-- div,1
some u: User | some (u.posts == Ad) and after (no (u.posts == Ad))
-- div,1
all u: User | some a : Ad | a in u.posts implies all p.posts in Ad
-- div,1
all p: Ad-(Photo-Ad) | some u : User | u in posts.p | u.posts in p
-- div,1
(all u1 : User | one add : Ad | add in u1.posts )
implies ph in Ad
-- div,1
(all u1 : User  | all ph : Photo | ph in u1.posts)
implies ph in Ad
-- div,1
some u: User one a: Ad | (u.posts == a) implies (all u.posts in Ad)
-- div,1
all u : User | some a : Ad | u -> a in posts implies a not in photo
-- div,1
all p : Photo & Ad | all u1 : posts.u1 | all p2: u1.posts | p2 = Ad
-- div,1
all u:User, some p:Photo | (p in u.posts & Ad) implies u.posts - Ad
-- div,1
all u : User | some a : Ad | u in posts.a implies all posts.u in Ad
-- div,1
all u: User, all p: Photo, all a: Ad | p in u.posts and p not in Ad
-- div,1
all u : User | one u.posts in Ad implies (none u.posts in Photo-Ad)
-- div,1
all u: User, a: Ad, p: Photo | nu.posts = a implies no (u.posts = p)
-- div,1
all x :  User | (some y : Ad | y in x.posts ) implies all posts -> y
-- div,1
all u : User | all a : Ad | some u.posts.a implies all u.posts in Ad
-- div,1
all u:User, p:Photos| p in u.posts and p in Ad implies u.posts in Ad
-- div,1
some u: User, one a: Ad | (u.posts == a) implies (all u.posts in Ad)
-- div,1
all u : User | one add : Add | add in u.posts implies u.posts in Add
-- div,1
all x:User, y:Photo| x-> y in post and y in Ad implies x.posts in Ad
-- div,1
all u : User | some (u.posts & Ad) implies (u.posts & Ad) == u.posts
-- div,1
all u1 : User | u1.posts in Ad implies (all u1.ph: Photo | ph in Ad)
-- div,1
all x:User, y:Photos| x-> y in post and y in Ad implies x.posts in Ad
-- div,1
all u: User | one a: A | a in u.posts implies u.posts not in Photo-Ad
-- div,1
all user : User | all ad: Ad | ad in user.posts implies u.posts in Ad
-- div,1
all u:User-Influence | some a:Ad | a in u.posts implies u.posts in Ad
-- div,1
some u : User, p : Post | p in u.posts => all po : u.posts | po in Ad
-- div,1
all u : User | one a : Ad| some u.posts & Ad implies all u.posts = Ad
-- div,1
all u : User| all p : Ad| p in u.posts implies all p2 : u.posts in Ad
-- div,1
all x:User | some z:Ad | x->z in posts implies all y:Ad x->y in posts
-- div,1
All x:User, y:Photos| x-> y in post and y in Ad implies x.posts in Ad
-- div,1
all u : User | (some a : Ad | a in u.posts) implies all u.posts in Ad
-- div,2
al x:User | some z:Ad | x->z in posts implies all y:Ad | x->y in posts
-- div,1
all p:Photo,u:User| p in Ad and p in u.posts implies all u.posts in Ad
-- div,1
all u : User| all p : Ad| p in u.posts implies all p2 in u.posts in Ad
-- div,1
all u : User | some a : Ad | u->a in posts | implies all u.posts in Ad
-- div,1
all p: Ad-(Photo-Ad) | some u : User | u in posts.p | all u.posts in p
-- div,1
all u : User | (some u.posts in Ad) implies u.posts in Ad ***Errado***
-- div,1
all x :  User | (some y : Ad | y in x.posts ) implies all x.posts -> y
-- div,1
all u:User, some p:Photo | p in u.posts & Ad implies none u.posts - Ad
-- div,1
all u:User,p:Ad,r: | u in posts.p implies u in posts.r implies r in Ad
-- div,1
all user : User  | all ad : Ad | ad in user.posts implies user.^(posts
-- div,2
all u : User | all ad : Ad | ad in user.posts implies user.posts in Ad
-- div,1
all x: User, y: Photo | y in ad and y in x.posts implies x.posts in Ad
-- div,1
all x :  User | (some y : Ad | y in x.posts ) implies all posts.x -> y
-- div,2
all u1 : User | u1.posts in Ad implies (all u1.ph: Photo | u1.ph in Ad)
-- div,1
all u : User, p : Photo | p in Ad && u.posts == p implies u.posts in Ad
-- div,1
some p : Photo, | p in User.posts and p = Ad implies no User.posts - Ad
-- div,1
all a:Ad,p:Photo,u:User | a in u.posts and p in x.posts implies p in Ad
-- div,1
all x : User | some y : Ad | y in x.posts implies all p in x.posts in Ad
-- div,1
all u : User, p : u.posts | p in Add implies all p1 : u.posts | p1 in Add
-- div,1
all x :  User | all y : Ad | x -> y in posts
all z : Photo | all y : Ad |
-- div,2
all u : User, p : Photo | (p in Ad && u.posts == p) implies u.posts in Ad
-- div,1
all x : User | y : Photo | y in x.posts and y in Ad implies x.posts in Ad
-- div,1
all u : User, p : Photo | (p in Ad and u->p in posts) implies all p in Ad
-- div,1
all x : User | some y : Ad | y in x.posts implies all Ad z | z in x.posts
-- div,1
all x : User | all p : x.posts |one p2: x.posts| all p in Ad iff p2 in Ad
-- div,1
all u : User, p : Photo | one p in u.posts implies all p in u.posts in Ad
-- div,1
all u: User | all p1, p2: Post | (p1 != p2 and p1 in Ad) implies p2 in Ad
-- div,1
all u : User | all x, y : Add | u -> x in posts implies (u -> y in posts)
-- div,1
all x : User | (some y : y.posts | y in Ad) -> (all z : z.posts | z in Ad)
-- div,1
all u:User, some p:Photo | (p in u.posts & Ad) implies (none u.posts - Ad)
-- div,1
all x : User | one y : posts.y | y is Ad implies all y : posts.x | y is Ad
-- div,1
all u : User| all p : Ad| all p2 in u.posts| p in u.posts implies p2 in Ad
-- div,1
all u: User | all p1, p2: Posts | (p1 != p2 and p1 in Ad) implies p2 in Ad
-- div,1
all x: User, y: Photo | y in ad and y in x.posts implies all x.posts in Ad
-- div,1
all x : User | (some y : y.posts | y in Ad) -> (all y : y.posts | y in Ad)
-- div,1
all x : User | one y : posts.y | y is Ad implies all y : posts.y | y is Ad
-- div,1
all x : User | one y : posts.y | y is Ad implies all z : posts.x | z is Ad
-- div,1
all u:User,p:Ad,r:Photo | all posts.p implies u in posts.r implies r in Ad
-- div,1
all u:User| some y:Photo | x->y in posts and y in Ad implies(no u.posts-Ad)
-- div,1
all u:User| some y:Photo | x->y in posts and y in Ad implies(u.posts in Ad)
-- div,1
all p,p2:Photo | all u1:User | u1->p in posts and u1->p2 in posts | p in Ad
-- div,1
all u, u': User, p: Photo | p in u.posts and Ad in p implies Ad in u'.posts
-- div,1
all a : Ad, p : Photo - Ad, u : User | u->a in posts => u->p not in posts
}
-- div,1
all u: User | all p: u.posts | (Ad in p implies all p': u.posts | Ad in p')
-- div,2
all u1 : User | one add : Ad | add in u1.posts
implies (all u1.posts in Ad)
-- div,1
all u : User | some p : Photo | p in u.posts and p in Ad implies u.posts.ad
-- div,1
all u : User | all p : Photo | some u.posts in Ad implies all u.posts in Ad
-- div,2
all u in User, p in u.posts | p in Add implies all p1 in u.posts | p1 in Add
-- div,1
all x : User | some y Photo | y in x.posts and y in Ad implies x.posts in Ad
-- div,3
all u1 : User | some u1.posts in Ad implies (all ph in u1.posts and ph = Ad)
-- div,1
all x : User | all y : Ad | one a : x.posts | iff a = y  implies x.posts = y
-- div,1
all u1 : User | some add : Ad | add in u1.posts
implies (all u1.posts in Ad)
-- div,1
all u: User | (some p in u.posts | p in Ad) => (all ps in u.posts | ps in Ad)
-- div,1
all u : User, p : Photo | some u.posts & Ad implies u.(posts & Ad) == u.posts
-- div,1
all u1 : User | some u1.posts in Ad implies (all ph in u1.posts and ph in Ad)
-- div,1
all u:User | some p:Post | u->p in posts and p in Ad implies all u -> p in Ad
-- div,1
all x : User | ((some y : y.posts | y in Ad) -> (all z : z.posts | z in Ad) )
-- div,1
all u: User | all p: u.posts | (Ad in p implies (all p': u.posts | Ad in p'))
-- div,1
all u1 : User | some u1.posts in Ad implies (all ph in u1.posts and ph == Ad)
-- div,1
all x : User | all p : Posts | some p: x.posts in Ad implies all x.posts in Ad
-- div,1
one u1: User | all p: Photo | u1-> p in posts and p in Ad implies all: p in Ad
-- div,5
all u:User, p:Photo | u->p in posts and p in Ad => (u->p in posts => p in Ads)
-- div,1
all u : User | all p : Photo | p in u.posts and some p = Ad implies all p = Ad
-- div,1
all u : User | all p in Ad | p in u.posts implies all p2 in u.posts | p2 in Ad
-- div,1
all x : User | ( all p : x.posts | p in Ad) or (all p : x.posts | p in not Ad)
-- div,1
all x : User | ( all p : x.posts | p in Ad) || (all p : x.posts | p in not Ad)
-- div,1
all u : User | all p : Photo | p in u.posts and some p | Ad implies all p | Ad
-- div,1
some p : Photo, all u : User | p in u.posts and p = Ad implies no u.posts - Ad
-- div,1
all a : Ad | all u : User | no p : Photo - Add | a in u.posts and p in u.posts
-- div,1
all u : User | one p in Ad | p in u.posts implies all p2 in u.posts | p2 in Ad
-- div,1
all u:User | (some a:Ad | u->a in posts) implies (all p:Photo | u->p in Posts)
-- div,1
all x : User | all p : Posts | p in Ad and in x.posts implies all x.posts in Ad
-- div,1
all u:User | some u.posts in Ad implies (all p:Photo | p in u1.posts | p in Ad)
-- div,1
all u : User, p : Photo | some (u.posts & Ad) implies (u.posts & Ad) == u.posts
-- div,2
all u : User, p : Photo | some (u.posts & Ad) implies u.(posts & Ad) == u.posts
-- div,2
all u : User | one u.posts in Ad implies all p : Photo | p in u.posts | p in Ad
-- div,1
all u : User | all f in Photo | f in Ad and f in u->posts implies u.posts in Ad
-- div,1
all u: User,  a: Ad, p: Photo| u->a in posts  and p in u.posts implies p in Ad)
-- div,1
all u : User | one p in Ad | p in u.posts implies (all p2 in u.posts | p2 in Ad)
-- div,1
all u : User | one u.posts in Ad implies (all p : Photo | p in u.posts | p in Ad
-- div,1
all u : User | some u.posts in Ad => (all ph : Photo | ph in u.posts | ph in Ad)
-- div,1
all u: User | some u.posts in Ad implies (all p: Photo | p in u.posts | p in Ad)
-- div,2
all u:User | one a:Ad | all p:Photo - ad | a in u.posts implies p not in u.posts
-- div,1
all x: User | some x.posts in Ad implies (all p: Photo | p in x.posts | p in Ad)
-- div,1
all u : User, p : Photo, p1 : Photo | p in Ad and u->p in posts implies p2 in Ad
-- div,1
all u1 : User | one add : Ad | add in u1.posts
implies (all ph : u1.posts in Ad)
-- div,1
all a:Ad, u:User | u->a in posts implies (some p:Photo u->p in posts and p in Ad)
-- div,1
all p: Ad-(Photo-Ad) | some u : User | u in posts.p | all p1 in u.posts | p1 in p
-- div,1
all u : User | one u.posts in Ad implies (all p : Photo | p in u.posts and in Ad)
-- div,1
all u : User, p : Photo | p in u.posts and Ad in p => all p' : u.posts | Ad in p'
-- div,3
all u : User | one u.posts in Ad implies (all p : Photo | p in u.posts | p in Ad)
-- div,10
all u : User | one p : Photo | p in Ad and p in u.posts implies all u.posts in Ad
-- div,1
some a : Ad | all u : User, p : Photo | u in posts | p in posts.u implies p in Ad
-- div,1
all x : User | all y : Photo | y in Ad and y in x.posts implies all x.posts in Ad
-- div,1
(all u1 : User | one add : Ad | all ph : Photo | ph in u1.posts)
implies ph in Ad
-- div,1
all x: User | some x.posts in Ad implies (all p: Photo | p in x.posts and p in Ad
-- div,1
all u : User | some u.posts in Ad implies (all p : Photo | p in u.posts | p in Ad)
-- div,2
(all u1 : User | one add : Ad  | all ph : Photo | ph in u1.posts)
implies ph in Ad
-- div,1
all x : User | some y : Photo | y in Ad and y in x.posts implies all x.posts in Ad
-- div,1
all u1 : User | one add : Ad | add in u1.posts
implies ((all ph : u1.posts) in Ad)
-- div,1
all u : User | p : Photo | p1 : Photo | p in Ad and u->p in posts implies p2 in Ad
-- div,1
(all u1 : User | one add : Ad | add in u1.posts | all ph : Photo )
implies ph in Ad
-- div,1
all x : User | all p : Photos | some a : Ad | a in x.posts implies p not in x.posts
-- div,1
some p : Photo, u : User | p in u.posts and p = Ad implies all x in u.posts x == Ad
-- div,1
all u1 : User | all ph : Photo |
ph in u1.posts and ph in ad implies u1.posts in Ad
-- div,1
some p : Photo, u : User | p in u.posts and p = Ad implies all x in u.posts | x = Ad
-- div,1
all u:User | some a:add | some p: Photo - Ad | a in u.posts implies p not in u.posts
-- div,1
one u1: User | all p: Photo | u1-> p in posts and p in Ad implies all p : Photo in Ad
-- div,1
all user : User | (user.posts in Ad) or (user.posts in Photo and user.post not in Ad)
-- div,1
all user : User | (user.posts in Ad) or (user.posts in Photo and not user.post in Ad)
-- div,1
all u : User | some p : Photo | (u->p in posts and p in Ad) implies all u.posts in Ad
-- div,1
all u : User, p : Photo | p in u.posts and Ad in p implies all p' : u.posts | Ad in p'
-- div,2
all u1: User | all p: Photo | u1-> p in posts and p not in Ad or in Ad implies p in Ad
-- div,1
all x: User, y: Photo | y in ad implies all z: Photo | x -> z in posts implies z in Ad
-- div,1
all x : User | all y: Ad | all z : Photos-Ad | y in posts.x implies (z not in posts.x)
-- div,1
all u1 : User | some u1.posts in Ad implies (ph : Photo |  ph in u1.posts and ph in Ad)
-- div,1
all u : User | all p : u.posts | one a : Ad | p = a implies all a1 : Add | a in u.posts
-- div,1
all p:Photo | all u1:User | all p2:Photo | u1->p in posts and u1->p2 in posts | p in Ad
-- div,1
all u1 : User | some u1.posts in Ad implies (all ph : Photo | ph in u1.posts | ph in Ad)
-- div,1
all u1: User | some u1.posts in Ad implies (all ph:Photo | u1 -> ph in posts | ph in Ad)
-- div,1
all u:User | some p:Post | u->p in posts and p in Ad implies all p1:Photo | u -> p in Ad
-- div,1
all ad : Ad | all p: Photo - Ad |all u : User | | ad in u.posts implies p not in u.posts
-- div,1
all u1: User | some u1->Ad in posts implies (all ph:Photo | u1 -> ph in posts | ph in Ad)
-- div,1
all u : User, a : Ad | u->a in posts implies (all p : Photo | u->p posts implies p in Ad)
-- div,1
all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
-- div,86
all u : User | all p : Photo | some a : Ad | a in u.posts and n in u.posts implies n in Ad
-- div,1
all u : User | some a : Ad | u->a in posts implies all p : Photo | u->p in posts | p is Ad
-- div,7
all u:User | one a:Ad | ad in u.posts implies all p:Photo-a | p in u.posts implies p in Ad
-- div,1
all u:User | one p:Ad | p in u.posts implies (all p:Photos | p in u.posts implies p in Ad)
-- div,1
all u : User | some a : Ad | u->a in posts implies all p : Photo | u->p in posts | p in Ad
-- div,1
all u : User | some a : Ad | all p : Post | (a in u.posts and p in u.posts) implies p in Ad
-- div,1
all u : User | some a : Ad | u->a in posts | all p : Photo | u->p in posts implies  p in Ad
-- div,1
all u : User, a : Ad | u->a in posts implies (all p : Post | u->p in posts implies p in Ad)
-- div,1
all u : User | some a : Ad | all p : post | (a in u.posts and p in u.posts) implies p in Ad
-- div,1
(all u1 : User | some u1.posts in Ad) implies (all ph : Photo |  ph in u1.posts | ph in Ad)
-- div,1
all u1 : User | some u1.posts in Ad implies (all ph : Photo | u1 -> ph in posts | ph in Ad)
-- div,1
all u:User | some a:Ad | a in u.posts implies u.posts in Ad
all u:Influence | u.posts in Ad
-- div,1
all u : User, ad : Ad | a->ad in posts implies (all p:Photo | u->p in posts implies p in Ad)
-- div,1
all u : User | some a : Ad | u->a in posts implies (all p : Photo | u->p in posts | p in Ad)
-- div,1
all u: User, all p: Photo, all a: Ad | p in u.posts and p not in Ad implies a not in u.posts
-- div,2
all u : User | some a : Add | all p : post | (a in u.posts and p in u.posts) implies p in Ad
-- div,1
all u1 : User | some u1.posts in Ad implies (all ph in Photo | u1 -> ph in posts | ph in Ad)
-- div,1
all x: User, y: Photo | y in Ad and y in x.posts implies x.posts in Ad
-- div,1
all x : User | all p : Posts | p in Ad and in x.posts implies all pp : Posts in x.posts in Ad
-- div,1
all u : User, some a : Ad | a in u.posts implies all n : Photo | n in u.posts implies n in Ad
-- div,1
all u: User | u->a in posts and a in Ad implies (all p: Photo| u->p in posts implies p in Ad)
-- div,1
all x: User | all y: ad | x in posts.y implies (all z: Photo | x in posts.z implies z in Ad )
-- div,1
all u: User| some a: Ad | u->a in posts implies (all p: Photos | p in u.posts implies p in Ad)
-- div,1
all p1,p2 : Photo | all ad : Ad  | p1 = ad and p1 in x.posts and p2 in x.posts implies p2 = ad
-- div,1
all u1 : User | some u1.posts in Add implies (all ph in Photo | u1 -> ph in posts | ph in Add)
-- div,1
all u : User | all p : Photos | p in posts.u and some a : Ad | a in posts.u implies p-a = none
-- div,1
all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in       u1.posts | ph in Ad)
-- div,1
all u:User | (some a:Ad | u -> a in posts) implies (all p:Photo | u-> p in posts imples p in Ad)
-- div,1
all u:User | (some a:Ad | u -> a in posts) implies (app p:Photo | u-> p in posts imples p in Ad)
-- div,1
all x: User | some y: Photo | y in x.posts && y in Ad => all p: Photo || p in x.posts && p in Ad
-- div,1
all x : User, p : Photo | u->p in Ad implies (all photo : Photo | u->p in photos implies p in Ad)
-- div,1
all u:User | (some a:Ad | u->a in posts) implies (all p1:Photo | u -> p in posts implies p in Ad)
-- div,1
all u : User, p : Photo - Ad | some a : Ad | p in u.posts | a in u.posts implies p not in u.posts
-- div,1
all user : User | all ad : Ad | user->ad in posts implies user.posts in Ad
-- div,1
all u1 : User | one add : Ad | add in u1.posts | all ph : Photo | ph in u1.posts
implies ph in Ad
-- div,1
all u1 : User | some u1.posts in Ad implies ((all ph : Photo |  ph in u1.posts) implies ph is Ad)
-- div,1
(all u1 : User | one add : Ad | add in u1.posts | all ph : Photo | ph in u1.post)
implies ph in Ad
-- div,1
all user : User | some ad : Ad | user-> ad in posts implies user.posts in Ad
-- div,2
all x: User, all a: Ad | x ->a in posts implies ( all p : Photo | x -> p in posts implies p in Ad)
-- div,1
all x: User | some y: Photo | y in x.posts && y in Ad => (all p: Photo || p in x.posts && p in Ad)
-- div,2
all u1 : User | all p1 : Photo | all ad : Ad  | p1 == ad and p1 in u1.posts implies u1.posts == ad
-- div,1
all u: User | (some u.posts in Ad => all u.posts in Ad) and (no u.posts in Ad => no u.posts in Ad)
-- div,2
all u : User | some p : Photo | p in Ad and p in u.posts implies all p1 : Photo | in u.posts in Ad
-- div,1
all x: User | some y: Photo | (y in x.posts and y in Ad => (all p: Photo | p in x.posts => p : Ad))
-- div,2
all u : User | all p,p2 : Photo | (u->p in posts) and (p in Ad) implies (u->p2 in posts | p2 in Ad)
-- div,2
some a : Ad, all u : User | u -> a in posts => not some p : Photo | u -> p in posts and p not in Ad
-- div,1
(all u1 : User | one add : Ad | add in u1.posts | all ph : Photo | ph in u1.posts)
implies ph in Ad
-- div,8
(all u1 : User | one add : Ad | add in u1.posts | all ph : Photo implies
ph in u1.posts and ph in Ad
-- div,1
all u1 : User | one add : Ad | add in u1.posts
implies (all ph : Photo |  ph in u1.posts | ph in Ad)
-- div,1
all u : User | one p : Photo | p in u.posts and set a : Ad | a = p implies all p1 : u.posts | p1 = Ad
-- div,1
some a : Ad, all u : User | u -> a in posts => not (some p : Photo | u -> p in posts and p not in Ad)
-- div,1
(all u1 : User | one add : Ad | add in u1.posts | all ph : Photo)
implies ph in u1.posts and ph in Ad
-- div,1
some a : Ad, all u : User | u -> a in posts => not some p : Photo | (u -> p in posts and p not in Ad)
-- div,1
all u1 : User | some add : Ad | add in u1.posts
implies (all ph : Photo | ph in u1.posts and ph is Ad)
-- div,1
all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad
-- div,5
all u : User | all p : Photo - Ad | some a : Ad | p in u.posts | a in u.posts implies p not in u.posts
-- div,1
all u:User | one p:Photo | p in Ad and p in u.posts implies u.posts in Ad
-- div,1
(all u1 : User | one add : Ad | add in u1.posts | all ph : Photo)
implies (ph in u1.posts and ph in Ad)
-- div,1
all u : User | some p : Photo | p in Ad and u->p in posts implies all v : Photo | u->v in posts | v in Ad
-- div,1
all u : User | one ad : Photo | ad in Ad and ad in u.posts implies
all p : Photo | p in u.post and p in Ad
-- div,1
all u:User, | (one p:Photo | u->p in posts and p in Ad) implies (all p1:Photo | u->p1 in posts and p1 in Ad)
-- div,1
all u:User | (some p:Post | u->p in posts and p in Ad) implies (all p:Posts | u->p in posts implies p in Ad)
-- div,1
all u : User | some p1 : Photo | p1 in u.posts and p1 in Ad implies all p2 : photo p2 in u.posts and p2 in Ad
-- div,1
all a: Ad | all ps in posts.a.posts | ps in Ad
all u: User | some p: u.posts | (p in Ad) -> all ps in u.posts
-- div,1
all x: User | some p1: Photo | all p2: Photo | (p1 in x.posts and p1 in Ad) implies (p2 in x.posts and p in Ad)
-- div,1
all u : User | one p : Photo | p in u.posts and p in Ad implies (all x : Photos | x in u.posts implies x in Ad)
-- div,1
all u: User | (some p: Photo | p in Ad and u->p in posts) implies all o: Photo | 	  p->o in posts implies o in Ad
-- div,1
all u: User | (some p: Photo | p in Ad and u->p in posts implies) all o: Photo | 	  p->o in posts implies o in Ad
-- div,1
all user : User | user->ad in posts and ad in Ad implies user.posts in Ad) or (none ad : Ad | user-> ad in posts)
-- div,1
all u : User | all p : Photo | (u->p in posts) and (p in Ad) implies (all p2 : Photo | u->p2 in posts | p2 in Ad)
-- div,2
all p1,p2 : Photo | all ad : Ad  | all x : User | p1 = ad and p1 in x.posts and p2 in x.posts implies p2 = ad
all
-- div,2
all u1 : User | some add : Photo | add in u1.posts | add in Ad implies (all ph : Photo |  ph in u1.posts | ph in Ad)
-- div,1
all u: User | (some p: Photo | p in Ad and u->p in posts) implies ( all o: Photo | 	  p->o in posts implies o in Ad)
-- div,1
all user : User | some ad : Ad | (user-> ad in posts implies user.posts in Ad) or (none ad : Ad | user-> ad in posts)
-- div,2
all u : User | all p : Photo | p in u.posts and p in photo or p in Ad and all p1 : Photo |
p1 in p.posts and p1 in Ad
-- div,2
all u : User | all p : Photo | p in u.posts and p in Photo or p in Ad and all p1 : Photo | p1 in u.posts and p1 in Ad
-- div,1
all user : User | (some ad : Ad | user-> ad in posts implies user.posts in Ad) or (none ad : Ad | user-> ad in posts)
-- div,1
all u : User | one p : Photo | p in u.posts and set a : Ad | a = p implies all p1 : Photo | p1 in u.posts and p1 = Ad
-- div,1
all u : User | all p : Photo | p in u.posts and p in photo or p in Ad and all p1 : Photo |
p1 in u.posts and p1 in Ad
-- div,1
all u : User | all p : Photo | p in u.posts and p in Photo or p in Ad and all p1 : Photo |
p1 in u.posts and p1 in Ad
-- div,1
all u : User | all p : Photo | p in u.posts and p in photo or p in Ad and all p1 : Photo | p1 in p.posts and p1 in add
-- div,1
all u : User | all p : Photo | p in u.posts and p in photo or p in Ad and all p1 : Photo |
p1 in p.posts and p1 in add
-- div,1
all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies
ph2 in Ad
-- div,1
all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad
implies ph2 in Ad
-- div,4
all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad implies ph2 in Ad
-- div,9
all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Ad  implies ph2 in Ad
-- div,3
all ph : Photo | all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts | ph in Adb implies ph2 in Ad
-- div,1
all u1: User | all p: Photo | u1-> p in posts and p not in Ad implies p in Ad | u1-> p in posts and p in Ad implies p in Ad
-- div,2
all u:User | some a:Ad | all p:Photo - A | a in u.posts implies p not in u.posts
all a:Ad | some u:User | a in u.posts implies (a not in u.sees)
-- div,1
all u:User | some a:Ad | all p:Photo - AD | a in u.posts implies p not in u.posts
all a:Ad | some u:User | a in u.posts implies (a not in u.sees)
-- div,1
all u : User | all a : Ad | (u->a) in posts implies (all p : Photo | u->p in posts implies p in Ad)
all u : User | u.posts in Ad implies all u.posts in Ad
-- div,1
all user : univ | user in User and some ad : user->ad in posts and (ad in Ad) implies all photo : univ | photo in Photo and user->photo in posts and photo in Ad
-- div,1
all user : univ | (user in User) and some ad : (user->ad in posts) and (ad in Ad) implies (all photo : univ | photo in Photo and user->photo in posts and photo in Ad)
-- div,1
all u, i : univ | u in User and i in Ad and u->i in posts implies all p : univ | u->p in posts implies p in Ad
all u : User | one u.posts & Ad implies all u.posts & Ad
-- div,1
all p1,p2 : Photo | all ad : Ad  | all x : User | p1 = ad and p1 in x.posts and p2 in x.posts implies p2 = ad
all u1 : User | all p1 : Photo | p1 in u1.posts implies p1 not in u1.sees
all u1 : Influencer | all p1 : Photo | p1 in u1.posts implies p1 not in u1.sees
}
-- div,1
