-- equiv pair start,158
no link.Trash
-- div,20
no File.link & Trash
-- div,7
no (File & File.link & Trash)
-- div,2
all l:File.link | l not in Trash
-- div,4
all f:File.link | f not in Trash
-- div,2
all f : File | no (f.link & Trash)
-- div,3
all f:File | f.link & Trash = none
-- div,1
all f : File, l : f.link | l not in Trash
-- div,1
all f:File | some link.f implies f not in Trash
-- div,1
no f:File | f in File.link and f in Trash
-- div,1
all f,l:File | (l in f.link) implies l not in Trash
-- div,1
all f,x :File | f->x in link implies x not in Trash
-- div,3
all f,l : File | f->l in link implies l not in Trash
-- div,3
(all t,u : File | t->u in link implies u not in Trash)
-- div,2
all x,y : File | x->y in link implies y not in Trash
-- div,7
all f,g:File | f->g in link implies g not in Trash
-- div,7
all f,t : File | f->t in link implies t not in Trash
-- div,1
not some l, f : File | (l->f in link) and (f in Trash)
-- div,1
all f, f1: File | f->f1 in link implies f1 not in Trash
-- div,1
all f : File | all l : f.link | l not in Trash
-- div,6
all f1,f2:File | f1 in f2.link implies f1 not in Trash
-- div,3
all f1,f2:File| f1->f2 in link implies f2 not in Trash
-- div,26
all f,lk1 : File | f->lk1 in link implies lk1 not in Trash
-- div,6
all f1,f2:File | f1->f2 in link => not f2 in Trash
-- div,5
not some f1,f2:File | f1->f2 in link and f2 in Trash
-- div,5
all x: File, y: File | x->y in link implies y not in Trash
-- div,4
all f1 : File, f2 : File | f1->f2 in link implies f2 not in Trash
-- div,1
all f:File | f in Trash implies no f2:File | f2->f in link
-- div,1
all x : File | all y : File | x->y in link implies y not in Trash
-- div,1
all f:File | isLink[f] implies f not in Trash
}

pred isLink[f:File]{
some g:File | g->f in link
-- div,14
all f : File | isLink[f] implies f not in Trash
}

pred isLink[f:File]{
some g:File | g->f in link
-- div,1
all f:File | isLink [f] implies f not in Trash
}

pred isLink (f:File){
some g:File | g->f in link
-- div,1
all f : File | isLink[f] implies f not in Trash
}

pred isLink[f:File]{
some g : File | g->f in link
-- div,1
all f:File | isLinked[f] implies f not in Trash
}

pred isLinked[f:File]{
some g:File | g->f in link
-- div,3
all f : File | isLink[f] implies f not in Trash
}

pred isLink[f : File]{
some g : File | g->f in link
-- div,2
all f : File | isLinked[f] implies f not in Trash
}

pred isLinked[f:File]{
some g:File | g->f in link
-- div,1
all f:File | isLinked[f] implies f not in Trash
}

pred isLinked(f:File){
some f2:File | f2->f in link
-- div,4
all f : File | isLinked[f] implies f not in Trash
}

pred isLinked[f:File]{
some g :File | g->f in link
-- div,1
all f : File | isLinked[f] implies f not in Trash
}

pred isLinked[f:File]{
some g : File | g->f in link
-- div,1
all f : File | is_linked[f] implies f not in Trash
}

pred is_linked[f : File]{
some g : File | g->f in link
-- div,1
all x : File | isLinked[x] implies x not in Trash
}

pred isLinked[f1 : File]{
some f2 : File | f2->f1 in link
-- div,1
all f : File | is_linked[f] implies f not in Trash
}

pred is_linked[f : File]{
some g : File | g->f in link
}

pred is_link[f : File]{
some g : File | f->g in link
-- div,1
-- equiv pair end
