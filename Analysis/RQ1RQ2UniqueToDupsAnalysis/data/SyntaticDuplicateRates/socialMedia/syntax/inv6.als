|
-- div,9
all u:User
-- div,1
all d : Day |
-- div,1
all i:Influencer,
-- div,1
all x : Influencer |
-- div,1
all d:Day | posts.date.i
-- div,1
all d: Day | i.posts in Day
-- div,1
Day in Influencer.posts.day
-- div,1
all i : Influencer, d: Day |
-- div,1
post.date = Influencers->Day
-- div,1
all d : Day, i : Influencer |
-- div,6
posts.date = Influencers->Day
-- div,2
all x : Influencer | one posts.
-- div,3
date.(Influencers.posts) in Day
-- div,1
all x : Influencer | all d : Day
-- div,1
all d: Day | all i : Influencer |
-- div,3
all d : Day | some i.posts.date.d
-- div,1
all x : Influencer | all d : Day |
-- div,3
all i:Influencers | all p:Photos |
-- div,1
all i : Influencer | all d : Day |
-- div,1
all u:Influencer, d:Day | u.posts.d
-- div,1
all i: Influencer | all i.posts.date
-- div,1
all d : Day | Influecer.posts.date.d
-- div,1
all i:Influence | i.posts.date = Day
-- div,1
all i:Influencer | no i.posts.day-Day
-- div,1
all x:Influencer | x.photo.date = Day
-- div,1
all i : Influencer | all date.posts.i
-- div,6
all i: Influencer | disj i.posts.date
-- div,1
all i : Influencer | Day in posts.day
-- div,1
all i : Influencers, d: Day, p:Photo |
-- div,3
All x: Influencer.posts | x.date = Day
-- div,1
all x : Influencer.post | x.date = Day
-- div,1
All x: Influencer | x.posts.date = Day
-- div,2
all i : Influencer | i.posts.day = Day
-- div,1
all i:Influencer | i.posts^.date = Day
-- div,1
all x:Influencer | x.photos.date = Day
-- div,1
all d:Day | d in Influencers.post.data
-- div,1
all p : Influencer.posts | p.day in Day
-- div,2
all i : Influencer | Day in i.posts.day
-- div,1
all i:Influencer | i.posts.date in Date
-- div,1
all d : Day | Influencer.posts.day in d
-- div,1
all d:Day | d in Influencers.posts.date
-- div,1
all x : Influencer | x.posts.data = Day
-- div,1
all i : Influencer | i.posts.Day in Day
-- div,1
all d : Day | d in Influencer.posts.day
-- div,1
all i : Influencer | i.posts.data = Day
-- div,1
all i: Influencer | i.posts.date == Day
-- div,1
all i : Influencer | i.posts.date = Date
-- div,1
all Day: d | Influencer: i | d -> i.posts
-- div,4
all i:Influencer, d:Day| d in i.post.date
-- div,1
all d : Day, i : Influencer | d in u.posts
-- div,1
all i : Influencer, d : Day | d in u.posts
-- div,1
all d:Day, i.Influencer| d in i.posts.date
-- div,4
all i:Influener | one d:Day | d in i.posts
-- div,1
all i:Influencer, d:Date| d in i.post.date
-- div,1
all i:Influencer | i.posts.date in one Day
-- div,1
all i:Influencer | i . posts . date = Date
-- div,1
all d : Day | Influencer.posts in photos.d
-- div,1
all d : Day | Influencers.posts in photos.d
-- div,1
all i: Influencer | i.posts.date in all Day
-- div,1
all d:Day , i.Influencer| d in i.posts.date
-- div,1
all i : Influencer | no (Day -u.posts.date)
-- div,1
all i : Influencers | Day in (i.posts).date
-- div,1
all d:Date, i:Influencer| d in i.posts.date
-- div,1
all i:Influencer,d:Date | d in i.posts.date
-- div,1
all d:Day , u.Influencer| d in u.posts.date
-- div,6
all i: Influencer | i.posts.date in one Day
-- div,1
all d:Day , u.Influencer| d in i.posts.date
-- div,2
/all d:Day , u.Influencer| d in u.posts.date
-- div,1
all i:Influencer | one d:Date | d in i.posts
-- div,1
all d : Day, i : Influencer | some u.posts.d
-- div,1
all i: Influencer | i.posts.date in Photo.Day
-- div,1
all d : Day, i : Influencer | d in i.posts.day
-- div,3
all d: Day, i: Influencers | d in i.posts.date
-- div,1
all d : Day, i : Influencer | d in u.posts.date
-- div,1
all i : Influencer, d : day | d in i.posts.date
-- div,2
all i : Influencer, d : Day | #i.posts.day >= 1
-- div,1
all i : Influencer, p : i.posts | p.date = Date
-- div,1
all Day: d , Influencer: i | d implies i.posts.d
-- div,1
all d: day | all i : Influencer | some i.posts.d
-- div,1
all i : Influencer | all d : Date | d in i.posts
-- div,1
all d:Day | all: i:Influencer | some (i.posts.d)
-- div,1
all d : Day | Influencer.posts in d
-- div,1
all d:Day | all i : Influencer | in i.posts.date
-- div,3
all x : Influencer | all d : Day | posts.x & day
-- div,1
all i : Influencer , d :Date | d in i.posts.date
-- div,1
all i : Influencer, d : Date | d in i.posts.date
-- div,1
all i:Influencer | all d:Day |  d in i.posts.day
-- div,1
all i: Influencer | all d: Day | d in i.posts.day
-- div,1
all i : Influencer, d : Day | i.posts.day != none
-- div,1
all i : Influencer | all p : Photo | all date.p.i
-- div,1
all d:Day, i : Influencer| some i.posts.date == d
-- div,1
all d : Day | all i : Influencer | u.posts.date.d
-- div,1
all d : Day | all i : Influencer | one day.i.posts
-- div,1
all d : Day | all i : Influencer | one day.posts.i
-- div,1
all x : Influencer, y : Day | some x.posts.day = y
-- div,1
all i :Influencer, all d : Day | d in i.posts.date
-- div,2
all d: Day | all p : Influencer.posts | p.day in d
-- div,1
all d: Day | all i : Influencer | d in i.posts.day
-- div,1
all i: Influencer, d: Date | some d = i.posts.date
-- div,2
all d : day, i : Influencer | one d in i.posts.date
-- div,1
all d:Date, i:Influencer, p:Photo | i->p->d in date
-- div,1
all d : Day, all i : Influencer | d in i.posts.date
-- div,1
all i : Influencer, d : Date | date in i.posts.date
-- div,1
all i : Influencer , d: Day | i.posts implies all d
-- div,3
all x : Day | all y : Influencer | x in day.posts.y
-- div,1
all i : Influencer | all d : day | d in i.posts.day
-- div,2
all x : Influencers, y : Day | some x.posts.day = y
-- div,1
all i: Influencer | some i.posts.date & one i.posts
-- div,1
all i : Influencer, all d : Day | d in i.posts.date
-- div,1
all i: Influencer | some p: Post| p.date in posts.p
-- div,1
all i : Influencers, all d : Day | d in i.posts.date
-- div,1
all day : Date | all i : Influencer | day in i.posts
-- div,1
all d : Day | all i : Influencer | all p : i.posts |
-- div,1
all d : Day | all i : Influencer | d in i.posts.~day
-- div,1
all d : Day | all i : Influencer | d in u.posts.date
-- div,1
all d : Day | all i : Influencers | one d in i.posts
-- div,1
all x : Day, some y : Influencer | x in y.posts.date
-- div,1
all i : Influencer | all d : Date | d in i.posts.date
-- div,1
all x : Day | all y : Influencer | x in y.posts.datee
-- div,1
all i : Influencer, p : Photos | Day in i.posts->date
-- div,1
all i: Influencer, d: Day, p: Photo | p in i.posts.day
-- div,1
all i : Influencer, d : Day | some p : Photo in i.posts
-- div,1
all x:User | x in Influencer implies x.posts.day in Day
-- div,1
all  i : Influencer| all d:Day => some i.posts.date = d
-- div,1
all i: Influencer | i.posts.date in Day
-- div,1
all i:Influencer | some p:Photo | i.post.date == p.date
-- div,1
all d:Day | all: i:Influencer | some (i.posts.date & d)
-- div,1
all i : User | i in Influencer | some f : Photo | date.f
-- div,1
all d:Day , u.User| u in Influencer => d in i.posts.date
-- div,2
all d1 : Influencer.posts.date | all d2 : Day | d2 == d1
-- div,1
all d:day , u.user| u in Influencer => d in i.posts.date
-- div,1
all i: Influencers | some d: Day | some i.posts & d.date
-- div,1
all i : Influencer, d: Day | some i.posts.date & all Day
-- div,1
all d:Day , u.User| u in Influencer => d in u.posts.date
-- div,1
all i:Influencer, d:Day | all p:i.posts | some p.data = d
-- div,1
all i : univ | i in Influencer implies some x : univers |
-- div,1
all i:Influencers | all p:Photos | p.date == i.posts.date
-- div,1
all d: Day, i: Influencers | some p: i.posts | p.date = d
-- div,1
all day : Date | all i : Influencer | day in i.posts.date
-- div,1
all d : Day | all i : Influencer | some d2 p.date | d2 = d
-- div,1
all d:Day, i:Influencer | p in i.posts implies d in p.date
-- div,1
all i:Influencers | all p:Photos and p.date & i.posts.date
-- div,1
all d: Day | all u: User | u in Influencer and d in p.date
-- div,1
all i : Influencer.posts.date | all d2 : Day | no(d1 - d2)
-- div,1
all i : Influencer, p : Photo, d : Date | d in i.posts.date
-- div,1
all inf : Influencer , date : Date | date in inf.posts.date
-- div,1
all d : Day, f : Influencer | some p : f.posts| d == p.date
-- div,1
all a : Influencers | all d : Day | a->d implies a in posts
-- div,1
all d: Day, i: Influencer |  ( some p: i.posts | in d.~date)
-- div,1
all d: Day, i: Influencer |  some p: i.posts | p in d.~date)
-- div,1
all i : Influencer | all d : Day | some p : Photo | i.posts.y
-- div,2
all d : Day, i : Influencer, p : Photos | i.posts->date == Day
-- div,1
all i : Influencer | all x,y : i.posts | x.date.next == y.date
-- div,1
all x : Influencer | all d : Day | some p : Photo | x->p in day
-- div,2
all p : Photo | i->Influencer in posts implies p.date&Day = Day
-- div,1
all u:Influencer, d:Day | some p | u in posts.p and p in date.d
-- div,1
all x: User, y: Date | x in Influencer implies y in x.posts.date
-- div,1
all d : Day, i : Influencer, p : Photos | p in i.posts | p->date
-- div,1
all i:Influencer, p:Photo, d:Data | i in posts.p and p in date.d
-- div,1
all i: Influencer | i.posts.date in Photo.date
-- div,1
all i : Influencer | all d : Day | i->p in posts and p->d in date
-- div,1
all u : User | u in Influencer implies (one d : Day | some u.posts
-- div,1
all i : Influencer | all d : Date | some p : i.posts | p->d in Day
-- div,1
all d : Day,i : Influencer | d in i.posts.date
-- div,1
all i:Influencer, p:Photo, one d:Day| i in posts.p and p in date.d
-- div,1
all inf : Influencer, d : day | some p : Photo | inf -> p in posts
-- div,1
all i: Influencer, d: Day | d in i.posts.date
-- div,1
all d: Day, i: Influencers, p: Photo| i->p in posts and p->d in date
-- div,1
all i:Influencer, d:Day, some p : Photo | i->p in posts -> d in date
-- div,1
all i : Influencer | all d : Date | (some p : Photo | i->p in posts)
-- div,1
all i:Influencer, p:Photo, one d:Day | p->d in date and i->p in posts
-- div,1
all d : Day | all i : Influencer | some d2 : i.posts.date | d2 = d

}
-- div,1
all d:Date , i:Influencer |some p:Photo | p.Date = d and p in i.posts
-- div,1
all u : User | u in Influencer implies (all d : Date | some u.posts.d)
-- div,1
all i : univ | i in Influencer implies some x : univers | i->x in posts
-- div,1
all d:Day | u:User | u in Influencer implies some p:Photo | d in p.date
-- div,2
all d:Day | u:User | u in Influencer implies some p:Photo | d != p.date
-- div,1
all d:Day | u:User | p:Photo | u in Influencer implies some p in u.posts
-- div,4
all u : User | u in Influencer implies (all d : Day | d in u.posts.day )
-- div,1
all d:Date, i:Influencer | some p:Photo | i->p in posts and p->d in date
-- div,1
all d:Day | u:User | u in Influencer implies some p:Photo | p in u.posts
-- div,2
all d : Day, i : Influencer, p : Photos | d2 in i.posts->date | d2 == Day
-- div,1
all i: Influencer, some p: Photo, d: Day | i->p in posts and p->d in date
-- div,1
all d:Day | all i:Influencer | some p:Photo | p in u.posts and d in p.date
-- div,1
all x : Influencer | all d : Day | sum(x.posts & d) in d
-- div,1
all p: Photo, y: Day | y in x.date implies all z: Influencer | x in z.posts
-- div,1
all p: Photo, y: Day | y in x.date implies all z: Influencer | p in z.posts
-- div,1
all i : Influencer, d : Day | some p : Post | i->p in posts and p->d in date
-- div,1
all d: Day, u in Influencer | some p in Photo | u->p in posts && d-> in date
-- div,1
all d:Day | u:User | u in Influencer implies some  p:Photo | p->u.posts in d
-- div,1
all d : Day | all i : Influencer | d in i.posts.date
-- div,1
all i:Influencers, d:Day | some p:Photo | i -> p in posts and p -> d in date
-- div,1
all i:Influencer | some p:Photo | u->p in posts and all d:Day | p->d in date
-- div,1
all i : Influencer, d : Day | some p : Posts | i->p in posts and p->d in date
-- div,1
all d: Day, u in Influencer | some p in Photo | u->p in posts && d->p in date
-- div,1
all d: Day, i in Influencer | some p in Photo | i->p in posts && p->d in date
-- div,2
all i : Influencer , d : Day | some p : Photo | i->p in posts and p->d in day
-- div,1
all d : Day, all p : Photo, all i : Influencer | d in p.date and p in i.posts
-- div,1
all d : Day , i : Influencer | some p : Photo | i -> p in posts and p.Day == d
-- div,1
all i : Influencer | all d : Day | some p : Photo | p in i.posts and p.day = d
-- div,1
all i : Influencer, d : Date | some p : Posts | i->p in posts and p->d in date
-- div,1
all i : Influencer | all d : Day | some p : Post | i in posts.p and d in p.day
-- div,1
all i: Influencer | all d: Day | some p: Post | a->p in posts and p->d in date
-- div,1
all i: Influncer, p: Photo | i -> p in posts implies all d: Day | p->d in date
-- div,1
all i : Influencer | all d : Day | some p : Photo | i in posts.p and d in p.day
-- div,1
all d : Day , i : Influencer | some p : Photo | i -> p in posts and p.date == d
-- div,1
all i: Influencer | all d: Day | some p: Photo | a->p in posts and p->d in date
-- div,1
all i: Influencer | all d: Date | some p: Post | a->p in posts and p->d in date
-- div,1
all i: Influencer | all d: Day | some p: PHoto | a->p in posts and p->d in date
-- div,1
all i : Influencers, d : Date | some p : Posts | i->p in posts and p->d in date
-- div,1
all x : Day | all y : Influencer | some z : Photo | z.date = x and z in photos.y
-- div,1
all i:Influencer , p:Photo | i -> p in posts implies (date Photo some-> one Day)
-- div,1
all i : Influencer | all d : Date | some z : Photo | z in i.posts and z.date in d
-- div,1
all i : Influencer | all d : Day | (some p : Photo | i->p in posts and d is date)
-- div,1
all i : Influecer | some p : Photo | all d : Day | i->p in posts and p->d in date
-- div,1
all i : Influencer, d : Date | some p : Photo | i->p in posts implies p->d in date
-- div,2
all d:Day | u:User | u in Influencer and p implies some  p:Photo | p->u.posts in d
-- div,1
all d : Day , i : Influencer | some p : Photo | i -> p in posts and p.date.Day == d
-- div,1
all d:Date, p:Photo, u:User| u in Influencer implies u->p in posts and p->d in Date
-- div,1
all x : Influencer | all d : Day | some p : Photo | p -> d in date | x -> p in posts
-- div,1
all x : Influencer | all d : Day | some p : Photo | p -> d in Date | x -> p in posts
-- div,1
all x : Influencer | all d : Day | some p : Photo | p -> d in date | p -> x in posts
-- div,1
all infl:Influencer, day:Day | some pst:Post | inlf->pst in posts and pst->day in date
-- div,3
all x,y,z : univ | x in Day implies y->X in date and z->y in posts and z in Influencer
-- div,1
not some d : Day, i : Influencer | not some p : Photo | i->p in posts and p->d in Date
-- div,1
all d:Day, u:User| some p:Photo| u in Influencer implies u->p in posts and p->d in Date
-- div,1
all infl:Influencer, day:Day | some pst:Photo | inlf->pst in posts and pst->day in date
-- div,1
all d:Day | u:User | u in Influencer implies some p:Photo | d in p.date and p in u.posts
-- div,1
all d:Day | u:User | u in Influencer implies some  p:Photo | p.date = d and p in u.posts
-- div,2
all inf : Influencer | all day : Day | one ph : Photo | ph in inf.posts | day in ph.date
-- div,1
all d:Day | u:User | u in Influencer implies some p:Photo | p.date == d and p in u.posts
-- div,1
all inf : Influencer | all day : Day | one ph : Photo | ph in inf.posts | day in  ph.date
-- div,1
all i : Influencer | Day in i.posts.date
all d: Day | all i: Influencer | i.post.date in d
-- div,1
all i : Influencer |all p: Photo | all d : Day | d implies ((p in posts.i) and (d date.p))
-- div,1
all inf : Influencer | all day : Day | some ph : Photos | ph in inf.posts and ph.date = day
-- div,1
all d: Day | all u: User | some p: Photos | u in Influencer and p in u.posts and p.date = d
-- div,1
all i : Influencer | some i.posts
all d : Date | all i : Influencer | some i.posts.date = d
-- div,1
all inf : Influencer | all day : Day | some ph : photos | ph in inf.posts and ph.date = day
-- div,1
all i : Influencer |all p: Photo | all d : Day | (d) implies ((p in posts.i) and (d date.p))
-- div,1
all i : Influencer |all p: Photo | all d : Day | (d) implies ((p in posts.i) and (d date.p)))
-- div,1
all d: Day | all u: User | all p: Photos | u in Influencer and p in u.posts implies (p in d*)
-- div,1
all i : Influencer |all p: Photo | all d : Day | d implies ((p in posts.i) and (d in date.p)))
-- div,1
all d:Day | u:User | p:Photo | u in Influencer implies some p:Photo | p in u.posts and d in p.date
-- div,1
all d : Day | all i : Influencer | some d2 : i.posts.date | d2 = d
-- div,1
all disj p1: Photo, p2: Photo | i: Influencer | p1 in i.posts && p2 in i.posts => p1.date != p2.date
-- div,1
all i:Influencer, d:Day | some p:Photo | i -> p in posts and  p-> d in date
-- div,1
all i:Influencer, d1, d2: Day, p1,p2: Photo | (i->p1 posts and i->p2 in posts and p1->d1 in date and p2->d2 in date) => d2 = d1+1
-- div,1
some i:Influencer, d1, d2: Day, p1,p2: Photo | (i->p1 posts and i->p2 in posts and p1->d1 in date and p2->d2 in date) => d2 = d1+1
-- div,1
all p1:Photo, p2:Photo, d1:Day, d2:Day, i:Influencer | p1 in i.posts and p2 in i.posts and d1 in p1.date and d2 in p2.data implies d1!=d2
-- div,2
