-- equiv pair start,1
lone Trash
-- div,1
-- equiv pair end
-- equiv pair start,3
iden in iden
-- div,1
none in Trash
-- div,1
Trash in File
-- div,1
-- equiv pair end
-- equiv pair start,9
no Trash.link
-- div,5
all x : Trash | no x.link
-- div,1
all t: Trash | t.link = none
-- div,1
all t: Trash | Trash.link = none
-- div,1
all t:Trash, f:File | not f in t.link
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Trash | lone File
-- div,1
-- equiv pair end
-- equiv pair start,1
no f: Trash | f in f.link
-- div,1
-- equiv pair end
-- equiv pair start,2
all t: Trash | t.link != File
-- div,2
-- equiv pair end
