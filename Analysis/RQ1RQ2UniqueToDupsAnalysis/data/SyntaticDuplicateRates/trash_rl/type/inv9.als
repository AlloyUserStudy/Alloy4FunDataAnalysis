link.link in {}
-- div,1
link.link = none
-- div,2
all f:File |  f.link
-- div,1
link not in File.^link
-- div,1
all f: File | not f.^link
-- div,1
all f: File | not f.*link
-- div,1
no (File.link . File.link)
-- div,2
all f:File | no f in f.link
-- div,1
all f : File | link.f in link
-- div,1
all f1: File |  none f1.^link
-- div,1
File.^link = File.link - iden
-- div,1
all f:File | no f.^link in link
-- div,1
all f:File | no link in f.^link
-- div,1
all l : link | no l.link
-- div,1
all f:File | f not in ~(f.link)
-- div,1
all f:File | link not in f.^link
-- div,1
all f, t: File | no f.link.t.link
-- div,1
all f, t: File | no link.f.link.t
-- div,1
all f: File | no link.f and f.link
-- div,1
all f, t: File | no (f.link).t.link
-- div,1
all f1, f2 : File | f1.link - f2.link
-- div,3
all f1, f2 : File | f1.link -> f2.link
-- div,1
all f1, f2 : File | no link.f1 & f1.f2
-- div,1
all f : File | link.f in (File - link)
-- div,2
all f : File | f.link implies no f.link
-- div,1
all disj f1,f2:File | none f1.link -> f2
-- div,1
all f:File |  f.link implies f.link.link
-- div,1
all f1, f2, f3 : File | f1.link - f2.link
-- div,1
all f:File |  f.link implies f.(link.link)
-- div,1
all f : File | f.link implies no link.f.link
-- div,1
all f:File |  f.link implies ((f.link).link)
-- div,1
all f1,f2 : univ | f1->f2 implies no f2.link
-- div,1
all f : File | f.link implies no f.link.link
-- div,2
all f:File |  f.link implies  no f.link.link
-- div,1
all f:File | f.link implies no (f.link.link)
-- div,1
all f:File | f.link implies no((f.link).link)
-- div,1
all f1,f2,f3 : univ | (f1->f2)->f3 not in link
-- div,1
all f:File | f.link implies not((f.link).link)
-- div,1
all f : File | f.link implies no link.(f.link)
-- div,1
all disj f1,f2:File | f1.link -> f2.link = none
-- div,1
all f:File |  f.link implies  (no f.link.link )
-- div,1
all f:File |  f.link implies  no( f.link.link )
-- div,1
all f1,f2 : univ | f1->File implies no File.link
-- div,1
all f,l : univ | f->l in link implies not l.link
-- div,2
all f:File |  f.link implies f.link.link in Trash
-- div,1
all f1: File | all f2: File | no f1.link = f2.link
-- div,1
all f1: File | all f2: File | no f2.link = f1.link
-- div,1
all f1, f2, f3 : File |  f1.link implies no f2.link
-- div,1
all f1: File | all f2: File | no f2.link in f1.link
-- div,1
all f1,f2 : univ | f1->f2 implies File.link not in f2
-- div,1
all f:File |  f.link implies ((f.link).link) in Trash
-- div,1
all f:File | f.link implies  (f.link.link) not in link
-- div,1
all f1, f2 : File |
f1 != f2 implies f1.link * f2.link = {}
-- div,1
all f1, f2 : File |
f1 != f2 implies none f1.link & f2.link
-- div,1
all f1, f2 : File |
f1 != f2 implies f1.link & f2.link = {}
-- div,1
all f1, f2 : File |
f1 != f2 implies f1.link & f2.link in {}
-- div,1
all f1, f2 : File |
f1 != f2 implies f1.link and f2.link = {}
-- div,1
all f1, f2 : File |
f1 != f2 implies (f1.link & f2.link) = {}
-- div,1
all f : File |
all l : f.link |
all f2 : File |
no l.link = f2
-- div,1
