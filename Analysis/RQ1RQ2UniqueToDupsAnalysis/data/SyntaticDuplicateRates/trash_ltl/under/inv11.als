File - Protected in Protected'
-- div,11
after ((File & Protected) in Protected)
-- div,1
(File - Protected) - Trash in Protected'
-- div,2
(File + Trash) - Protected in Protected'
-- div,1
always after ((File & Protected) in Protected)
-- div,1
always (File - Protected) - Trash in Protected'
-- div,1
always File - (Protected + Trash) in Protected'
-- div,1
all f : File - Protected | f in Protected'
-- div,2
all f:File-Protected | after f in Protected
-- div,5
all f : File | f not in Protected => f in Protected'
-- div,4
some (File - Protected) implies ((File - Protected) in Protected')
-- div,1
all a : File - (File & Protected) |  after (a in Protected)
-- div,1
all f : File | f not in Protected => after f in Protected
-- div,6
all a : File | (a not in Protected) implies  after (a in Protected)
-- div,1
all f : File - Protected - Trash | after f in Protected
-- div,2
all f:File | f in File-Protected implies after f in Protected
-- div,1
all f:File | always f not in Protected implies after f in Protected
-- div,1
all f : File + Trash | f not in Protected implies after f in Protected
-- div,1
always all f:File | always f not in Protected implies f in Protected'
-- div,1
always all f:File | (f not in Protected and f not in Trash) implies f in Protected'
-- div,1
all a : File - (File & Protected) | (a not in Protected) implies  after (a in Protected)
-- div,1
