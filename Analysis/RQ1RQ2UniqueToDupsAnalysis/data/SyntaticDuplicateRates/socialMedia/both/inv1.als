no posts
-- div,6
one sees
-- div,1
one Photo
-- div,1
Ad != Photo
-- div,1
one User.posts
-- div,1
one posts.Photo
-- div,6
lone User.posts
-- div,1
one Photo.~posts
-- div,1
~posts.posts in iden
-- div,2
posts in User set -> one User
-- div,1
posts in User -> one Photo
-- div,5
one posts.Photo & User
-- div,1
one Photo & User.posts
-- div,2
Photo in (one User.posts)
-- div,1
Photo-Ad = User.posts
-- div,1
posts in User lone -> one Photo
-- div,1
all u1: User | u1 != u1
-- div,1
all x : Photo | one User
-- div,2
all x : Photo | one posts
-- div,2
posts.Photo = User + Influencer
-- div,1
posts.Photo = User - Influencer
-- div,1
all x : User | one posts.x
-- div,4
all x: User | one x.posts
-- div,2
all u:User| one u.posts
-- div,5
all u: User | one posts.u
-- div,4
all u: User | lone u.posts
-- div,1
no (User.posts & Influencer.posts)
-- div,1
all x: User | lone x.posts
-- div,3
one u:User|some u.posts
-- div,2
all p:Photo | one p->User
-- div,1
all p:Photo | one User->p
-- div,1
one (User.posts & Influencer.posts)
-- div,1
all u: User | some u.follows
-- div,1
all p: Photo| one User.sees
-- div,1
some (User.posts & Influencer.posts)
-- div,1
all u:User|#(u.posts)=1
-- div,1
all x:Photo | one User.posts
-- div,1
all u : User | u in User.posts
-- div,1
one u:User|#(u.posts)>=1
-- div,1
all p: Photo | one User.posts
-- div,4
one u : User | u.posts = Photo
-- div,1
all p : Photo | one User->posts
-- div,1
all x : User | Photo in x.posts
-- div,1
all u:User | u->u not in follows
-- div,1
one u: User | Photo in u.posts
-- div,2
all p : Photo | User in posts.p
-- div,1
all p: Photo | lone User.posts
-- div,2
all i : Photo | lone User.posts
-- div,1
some u: User | u.posts = Photo
-- div,2
lone u: User | Photo in u.posts
-- div,1
all img : Photo | one User.posts
-- div,1
some u:User| posts.Photo in u
-- div,2
all ph:Photo | lone User.posts
-- div,1
all x: User | x.sees in x.posts
-- div,1
all p:Photo| one User.posts->p
-- div,4
all u:User-Photo | one posts.u
-- div,1
all p:Photo| lone User.posts->p
-- div,1
all u:User-Photo | some posts.u
-- div,1
some u: User | u.posts = (Photo - Ad)
-- div,1
all  p : Photo, u: User | one u.posts
-- div,1
all u:User,f:Photo|one posts.u
-- div,2
all u: User , p: Photo| p = u.posts
-- div,1
all p:Photo, u:User | p in u.posts
-- div,21
all i : Photo , u : User | i in u.posts
-- div,1
all x : User, p:Photo |  p in x.posts
-- div,1
one u:User, p:Photo | p in u.posts
-- div,1
all u:User, p:Photo | p in u.posts
-- div,1
all p:Photo, u:User | u->p in posts
-- div,3
all p:Photo, x:User| x->p in posts
-- div,1
all u:User,p:Photo | u->p in posts
-- div,1
all p: Photo, u: User | p->u in posts
-- div,1
all x: Photo, y:User| y-> x in posts
-- div,1
all x:User, p:Photo| x->p in posts
-- div,1
all p : Photo, u : User | one p & u.posts
-- div,1
all p : Photo | one u : User.posts | p = p
-- div,1
all u: User | one p: Photo| u.posts = p
-- div,1
all p : Photo | all u : User | p = u.posts
-- div,1
all p : Photo | one u : User | p = u.posts
-- div,2
all p:Photo | one u:User | u.posts = p
-- div,7
one u:User| all p:Photo| one u.posts
-- div,1
all u: User | one p: Photo| p = u.posts
-- div,1
all x: User | all y: Photo | y in x.posts
-- div,1
one u:User| all p:Photo| p in u.posts
-- div,3
all u:User | one p:Photo | p in u.posts
-- div,4
all p : Photo | one u : User | lone posts.p
-- div,1
all p:Photo|all u: User| p in u.posts
-- div,18
all p:Photo | one u:User |  u.posts in p
-- div,2
one u: User | all p: Photo | u in posts.p
-- div,1
one u: User | all p: Photo | u.posts in p
-- div,1
all p : User.posts | all n : Photo | p in n
-- div,1
all p : Photo | all u : User | u.posts in p
-- div,2
all u: User | one p: Photo | u.posts in p
-- div,1
all p :Photo|one u:User|some u.posts
-- div,1
all i : Photo | all u: User | i in u.posts
-- div,1
all p:Photo | one u:User |  posts.u in p
-- div,1
all u : User | all p : Photo | p in posts[u]
-- div,1
one u:User| all p:Photo| u->p in posts
-- div,3
all u:User | lone p:Photo | p in u.posts
-- div,2
all p : Photo | all u : User | u->p in posts
-- div,4
one x:User | all p:Photo | x->p in posts
-- div,1
one y : User | all p:Photo | y->p in posts
-- div,1
all x : Photo | all y : User | y -> x in posts
-- div,1
some p : Photo | all u : User | p in u.posts
-- div,1
one x:User| some p:Photo| x->p in posts
-- div,1
some p:Photo| one x:User| x->p in posts
-- div,1
some p:Photo | some u:User | p in u.posts
-- div,1
one u1:User | all p:Photo | u1->p in posts
-- div,2
all u1:User | all p:Photo | u1->p in posts
-- div,1
all p:Photo|all u:User|#(posts[u])<=1
-- div,1
all p : Photo | all u : User | u->p in follows
-- div,1
all p: Photo |all u: User| p in (one u.posts)
-- div,2
all x:Photo | all y:User | x in (one y.posts)
-- div,2
one p: Photo, u: User.posts | p in Photo => (p = u)
-- div,1
all p: Photo, u: User.posts | p in Photo => p = u
-- div,1
all x : Photo, u : User | u->x in posts implies x in User
-- div,1
all p: Photo, u: User.posts | p in Photo => p in u
-- div,1
all p:Photo, u: User | p in Photo iff p in u.posts
-- div,2
all u:User,f:Photo|one posts.u and u.sees in f
-- div,1
all x: Photo | x in (one User.posts) && #User.posts=1
-- div,1
one photo : Photo | one user : User | photo in user.posts
-- div,3
one u: User | Photo in u.posts or Photo in Influencer.posts
-- div,1
all x : Photo |all u : User | u->x in posts implies x in User
-- div,1
all p : Photo | one User.posts->p or one Influencer.posts->p
-- div,1
all user1, user2: User | user1.posts = user2.posts implies user1 = user2
-- div,2
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
-- div,2
all p : Photo | some u : User | u->p in posts implies p not in User.posts
-- div,1
all u:User | u->u not in follows
all u:User | u not in u.follows
-- div,1
all u1,u2 : User |one  p : Photo | p in u1.posts implies p not in u2.posts
-- div,1
all p : Photo | all u1,u2 : User | p in u1.posts implies p not in u2.posts
-- div,3
all u1,u2 : User |some  p : Photo | p in u1.posts implies p not in u2.posts
-- div,2
all p: Photo, u1 : User, u2: User | p in u1.posts implies p not in u2.posts
-- div,2
all u1,u2 : User |all  p : Photo | u1->p in posts implies u2->p not in posts
-- div,1
User.posts = Photo
all p1,p2 : User | p1.posts != p2.posts or p1=p2
-- div,2
not some p:Photo | all  u1, u2:User | u1->p in posts and u2->p in posts
-- div,1
all u:User,p:Photo,i:Influencer | u->p in posts or i->p in posts
-- div,1
all i : Influencer | all p : Photo | all u : User-i | p in u.posts
-- div,1
all x,y: User | all p: Photo | x->p in posts and y->p in posts and y=x
-- div,1
all x, y : User | all z : Photo | z in x.posts and z in y.posts implies z = y
-- div,1
all x,y :User| one p:Photo| x->p in posts and y -> p in posts implies x = y
-- div,1
no p:Photo | all u1:User, u2:User | p in u1.posts and p in u2.posts
-- div,1
not some p:Photo | all disj u1, u2:User | u1->p in posts and u2->p in posts
-- div,1
one x,y :User| one p:Photo| x->p in posts and y -> p in posts implies x = y
-- div,1
all p:Photo | lone u:User,i:Influencer | p in u.posts or p in i.posts
-- div,1
all u : User | all d : Day | one p : Photo | p in posts[u] and p.date = d
-- div,1
all x : Photo, u : User | some user : User | x in user.posts implies x not in u.posts
-- div,1
lone p:Photo | lone u:User,i:Influencer | p in u.posts or p in i.posts
-- div,6
all p: Photo, u: User | p in u.posts and (p in u.posts implies p not in (User-u).posts)
-- div,1
all u1, u2: User | some p : Photo | (p in u1.posts and p in u2.posts) implies u1=u2
-- div,1
all p: Photo | all a : Ad| some u : User | p in u.posts and a in u.posts
-- div,1
some u : User | all p : Photo | one d : Day | p in u.posts and d in p.date
-- div,1
all u1,u2:User | all p:Photo | u1->p in posts and u2->p in posts implies u1!=u2
-- div,2
one u1,u2:User | all p:Photo | (u1->p in posts and u2->p in posts) implies u1!=u2
-- div,1
all p: Photo + Ad, u: User | p in u.posts and (p in u.posts implies p not in (User-u).posts)
-- div,1
all p:Photo | some u:User | u->p in posts
all u:User | u->u not in follows
-- div,1
all p: Photo, u, u1, u2: User | p in u.posts and (p in u1.posts and p in u2.posts => u1 = u2)
-- div,1
all u1, u2: User, p1 : Photo | (u1->p1 in posts or u1->p1 in sees) and u2->p1 in posts implies u1=u2
-- div,1
all x : Photo |all ad : Ad | all y,z : User | x in y.posts implies x not in z.posts and x not in ad
-- div,1
all u : User | u not in u.follows
all p : Photo | all u1,u2 : User | p in u1.posts implies p not in u2.posts
-- div,1
all u1, u2: User, p1 : Photo | (u1->p1 in posts or u1->p1 in sees) and (u2->p1 in posts or u2->p1 in sees) implies u1=u2
-- div,1
all p : Photo | all u1,u2 : User | all i : Influencer | p in u1.posts and p in u2.posts implies u1=u2 and i=u1
-- div,1
all u1,u2 : User, p1 : Photo | (u1->p1 in posts and u2->p1 in posts) implies u1=u2

all u:User | u->u not in follows
-- div,1
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all ad : Ad | all x : Photo | x not in ad
-- div,2
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all x : Ad | all y : User | x not in y.posts
-- div,1
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all ad : Ad | all x : User | ad not in x.posts
-- div,3
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all ad : Ad | all x : User | ad not in posts.x
-- div,1
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all x : User | x not in x.follows and x not in follows.x
-- div,1
all x : Photo | all y : User | y->x in posts
all x : Photo | all y,z : User | y->x in posts and z->x in posts implies y = z
-- div,1
all u : User | all p : Photo | p in u.posts
all p : Photo | all u1,u2 : User | (p in u1.posts and p in u2.posts) implies (u1=u2)
-- div,1
all p : Photo | all u : User | p in u.posts
all p : Photo | all u1,u2 : User | p in u1.posts and p in u2.posts implies u1=u2
-- div,3
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all x : Ad | all y : User | x not in y.posts and x not in posts.y
-- div,1
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all ad : Ad | all x : Photo | x not in ad
all x : User | x not in x.follows
-- div,1
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all ad : Ad | all x : Photo | x not in ad
all x : Photo | x not in x.follows
-- div,1
all y : univ | y in Photo implies some x : User | x.posts=y
all x,y,z : univ | x in User and z in User and y in Photo and x.posts=y and z.posts=y implies x=z
-- div,1
all p : univ | p in Photo implies some u : univ | u in User and u in posts.p
some p : Photo | some u1, u2 : univ | u1 in posts.p and u2 in posts.p implies u1 = u2
-- div,1
all p : univ | p in Photo implies some u : univ | u in User and u->p in posts
some p : Photo | some u1, u2 : univ | u1 in posts.p and u2 in posts.p implies u1 = u2
-- div,1
all p : univ | p in Photo implies some u : univ | u in User and u->p in posts
some p : Photo | some u1, u2 : univ | u1->p in posts and u2->p in posts implies u1 = u2
-- div,1
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all x : User | x not in x.follows and x not in follows.x
all ad : Ad | all x : User | ad not in x.posts
-- div,1
(all p : Photo | some u : User | p in u.posts implies (all user : User | p not in user.posts)) &&
all u1,u2 : User | one p : Photo| p in u1.posts and p in u2.posts implies u1 = u2
-- div,1
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all x : User | x not in x.follows and x not in follows.x
all x : Influencer | x not in x.follows and x not in follows.x
-- div,1
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all ad : Ad | all x : Photo | x not in ad
all x : Photo | all t : User | x in t.posts implies x not in t.sees
-- div,1
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all ad : Ad | all x : Photo | x not in ad
all x : User | x not in x.follows
all x : Influencer | x not in x.follows
-- div,1
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all ad : Ad | all x : Photo | x not in ad
all x : User | x not in x.follows
all x : Influencer | x not in follows.x
-- div,1
all p: Photo | some u : User | p in u.posts
all a : Ad| some u : User | a in u.posts
all p: Photo | some i : Influencer | p in i.posts
all a : Ad| some i : Influencer | a in i.posts
-- div,2
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all ad : Ad | all x : Photo | x not in ad
all x : User | x not in x.follows and x not in follows.x
all x : Influencer | x not in x.follows and x not in follows.x
-- div,1
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all ad : Ad | all x : Photo | x not in ad
all x : User | x not in x.follows and x not in follows.x
all x : Influencer | x not in x.^follows and x not in follows.x
-- div,2
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all ad : Ad | all x : Photo | x not in ad
all x : User | x not in x.follows and x not in follows.x
all x : Influencer | x not in x.follows and x not in ^follows.x
-- div,1
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all ad : Ad | all x : Photo | x not in ad
all x : Photo | all t : User | x in t.posts implies x not in t.sees
all x : Photo | all t : User | x in t.sees implies x not in t.posts
-- div,1
