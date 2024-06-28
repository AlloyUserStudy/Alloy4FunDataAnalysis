disj link
-- div,1
no link

/* If a link is deleted, so is the file it links to. */
-- div,1
all f:File |
-- div,1
all l: link |
-- div,1
all f: File |
-- div,4
all f : File |
-- div,1
no f.link.link
-- div,3
x,y:link| x!=y
-- div,1
link.~link in id
-- div,1
all l: link | disj l
-- div,1
all f1.link - f2.link
-- div,1
all f: File | not f^.link
-- div,1
x,y: File: x.link != y.link
-- div,1
all link | no link.link.link
-- div,1
all f:file | no (f.link).link
-- div,1
all f1 : File | not in f1.link
-- div,1
all f1 : File | not in f1^link
-- div,1
all x,y: File: x.link != y.link
-- div,1
all f1 : File | not in f1.^link
-- div,1
all disj a, l: link| a != l

/* If a link is deleted, so is the file it links to. */
-- div,1
all f in File | f.link.link = none
-- div,1
all f1 : File | no link^f1 & f1^link
-- div,1
all disj f,f' | disj [f.link,f'.link]
-- div,1
all f1 : File | no link^.f1 & f1.link
-- div,1
no disj f,f':File |  f.link = f'.link
-- div,1
all disj f1,f2 | disj[f1.link,f2.link]
-- div,1
all f: File| one link.f

/* If a link is deleted, so is the file it links to. */
-- div,1
all f: File| one f.link

/* If a link is deleted, so is the file it links to. */
-- div,1
all disj f,f':File |  f.link = f'.link
-- div,1
all disj f,f': File | f.link = f'.link
-- div,1
all f1 : File | no link^.f1 & f1^.link
-- div,1
all disj f,f':File |  f.link != f'.link
-- div,1
all f : File | lone f.link

/* If a link is deleted, so is the file it links to. */
-- div,1
all f : File | some f.link

/* If a link is deleted, so is the file it links to. */
-- div,1
no disj f1,f2: File | f1.Link = f2.Link
-- div,1
all disj f1,f2 | disj [f1.link,f2.link]
-- div,1
all disj f,f': File | f.link == f'.link
-- div,1
all f1, f2 : File | f1.link & no f2.link
-- div,1
all f1, f2 : File | no f1.link & f2~.link
-- div,1
all f1,f2,f3 : univ | (f1->f2)-> not in link
-- div,1
all disj f,f':File |  f.link & f'.link = none
-- div,1
all f1: File | all f2: file | f1.link != f2.link
-- div,1
all f1, f2 : File |
f1 != f2 implies (none f1.link & f2.link)
-- div,1
all f1, f2 : File |
f1 != f2 implies (f1.link * f2.link) = {}
-- div,1
all f1, f2 : File |
f1 != f2 implies (none (f1.link & f2.link))
-- div,1
all f1,f2:File | disj[f1,f1.link] | disj[f2,f2.link]| disj[f1.link,f2.link]
-- div,1
all f : File | f.link

/* If a link is deleted, so is the file it links to. */
-- div,1
all disj f1,f2:File | f1.^link = none | f2.^link=none | f1.link & f2.link = none
-- div,1
all f1,f2:File | not f1 in f1.link && not f2 in f2.link | disj [f1.link,f2.link]
-- div,1
all f1,f2:File | f1 & f1.link = none  f2 & f2.link = none && not f1.link = f2.link
-- div,1
all disj f1,f2:File | disj[f1,f1.link] && disj[f2,f2.link] | f1.link & f2.link = none
-- div,1
all disj f1,f2:File | disj[f1,f1.link] and disj[f2,f2.link] | f1.link & f2.link = none
-- div,2
all disj f1,f2:File | f1.^link & f2.^link = none | not f1 in f1.link | not f2 in f2.link
-- div,1
all disj f1,f2:File | f1.^link = f1.*link | f2.^link = f1.*link | f1.link & f2.link = none
-- div,1
all disj f1,f2:File | f1.link & f2.link = none
all f1,f2:File | disj[f1,f1.link] | disj[f1.link,f2.link]
-- div,1
all disj f1,f2:File | f1.link & f2.link = none
all f1,f2:File | disj[f1,f1.link] | disj[f2,f2.link]| disj[f1.link,f2.link]
-- div,1
