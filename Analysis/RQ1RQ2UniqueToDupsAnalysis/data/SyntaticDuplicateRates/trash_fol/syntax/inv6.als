file.file
-- div,1
all f:File|
-- div,1
links in iden
-- div,1
all x: File |
-- div,7
all f: File |
-- div,2
all f,t,u : File
-- div,2
all f1,f2 : File |
-- div,3
-link.link in inden
-- div,1
~link.link in inden
-- div,1
all x->y : link | x
-- div,1
all f : link | true
-- div,1
-link . link in iden
-- div,3
all f:File: lone f.link
-- div,1
all f:File: #f.link <= 1
-- div,1
all f:File | line f.link
-- div,1
all f : File | f->y link f
-- div,1
links in File -> lone File
-- div,1
all f:File: #(f.link) <= 1
-- div,1
all f : File | x->y link f
-- div,1
files in File -> lone File
-- div,1
all f : File | some f->Link
-- div,1
all f,g:File | f->g in Link
-- div,1
link in File one => set Link
-- div,1
all f:File | ~links.f in iden
-- div,1
all f:File| a->b implies b->a
-- div,1
link in File lone -> set Link
-- div,2
all f:File | f.~links in iden
-- div,1
link in File lone => set Link
-- div,1
all (x,y) : File | x->y link y
-- div,1
all f : File | not no f.link )
-- div,4
all f:File (some f1,f2:File ())
-- div,1
all f : File | all l : #(f.li)<2
-- div,1
all f,g : File | f->g in link and
-- div,1
all f : File | (some l : f.link )
-- div,1
all f:File b:link| f->b implies b->f
-- div,1
all f1:File, some f2:File | f1 -> f2
-- div,2
all f1:File, some f2:File | f1.link.f2
-- div,1
all f : File | some l : link | f->l in
-- div,2
all f : File | (some l : f.link | True)
-- div,1
all f : File | all l :f.link| #(f.li)<2
-- div,1
all f : File | (some l : f.link | true)
-- div,1
all f : File | some g : Fle | f->g in link
-- div,1
all f : File | one f' : File | f.link = f'
-- div,1
all f : File | some l : link | f->l in Link
-- div,1
all f : File | (some f.l : link | f.l in f)
-- div,1
all f1:File, lone f2:File | f1 -> f2 in link
-- div,1
all f1:File, some f2:File | f1 -> f2 in link
-- div,2
all f1:File, some f2:File | f1 <- f2 in link
-- div,1
all f : File | (one f' : File | f.link = f')
-- div,1
all f1:File, lone f2:File | (f1 -> f2) in link
-- div,1
all f1:File, some f2:File | (f1 -> f2) in link
-- div,1
all x,y,z : File | (x->y in link and x->z implies y=z
-- div,1
all x, y, z : File | x->y in Link and x->z implies y=z
-- div,1
all a,b,c:File | f1->f2 and f1->f3 in link implies f2=f3
-- div,1
all f1,  f2: File | f1 == f2 implies no f1.link & f2.link
-- div,1
all x,y : File | x link y

/* There is no deleted link. */
-- div,1
all x,y,z : File | (x->y link and <->z in link) implies y=z
-- div,3
all f1,f2,f3 : File | f1->f2 in links and f3->f2 => f1 = f3
-- div,1
f1,f2,f3:File | f2 in f1.link and f3 in f1.link implies f3=f2
-- div,2
all x,y,z : File | x->y in link and x->z in link implies y=z)
-- div,1
all x,y,z : File | (x->y in link and <->z in link) implies y=z
-- div,1
some f1,f2,f3:File | f1->f2 in link | f1->f3 in link implies f2=f3
-- div,1
all f : File, t,u : File  |f->t in file and f->u in file implies t=u
-- div,1
all f, f1, f2 : File | f->f1 in links and f -> f2 in links => f1 = f2
-- div,1
all f : File l, u : File | f -> l in link and f -> u in link implies l = u
-- div,2
all f1,f2,f3:File | f1 -> f2 in links and f1 -> f3 in links implies f2 = f3
-- div,1
all f : File, t,u :  |w->t in working_on and w->u in working_on implies t=u
-- div,1
all f:File (some f1,f2:File (f->f1 in link and f->f2 in link implies f1=f2))
-- div,1
all f, f1, f2 : File | (f -> f1 in link and f1 -> f2 in link) implies f1 == f2
-- div,1
all x: File, y, z: File | x->y in working_on and x->z in working_on implies y=z
-- div,1
all f:File | some a:File | some b:File | f->a in link and f->b in link implies a==b
-- div,1
all f1:File | (some f2,f3:File | f1 -> f2 in link and f1 -> f3 in link) implies f2 = f3
-- div,1
all f1:File | (some f2,f3:File | f1 -> f2 in link and f1 -> f3 in links) implies f2 = f3
-- div,1
all f1:File | (some f2,f3:File | f1 -> f2 in links and f1 -> f3 in links) implies f2 = f3
-- div,1
all f,g,h:File | f->g in link and f->h in link implies g=h
}

def isLink[f:File]{
some g:File | g->f in link
-- div,1
all file: File | some linked: File | file->linked in links implies all otherFile: File | linked != otherFile implies file->otherFile not in links
-- div,1
