-- equiv pair start,2
always no Protected & Trash
-- div,2
-- equiv pair end
-- equiv pair start,2
all f:File | always f in Protected
-- div,2
-- equiv pair end
-- equiv pair start,12
always (all f:File | f in Protected)
-- div,3
always all f: File | f in Protected since f in Protected
-- div,5
always all f: File | f in Protected triggered f in Protected
-- div,1
always all f: File | always f in Protected since f in Protected
-- div,3
-- equiv pair end
-- equiv pair start,1
all p : Protected | always p = Protected
-- div,1
-- equiv pair end
-- equiv pair start,2
(all f:File | after always f in Protected)
-- div,1
(all f:File | always(after f in Protected))
-- div,1
-- equiv pair end
-- equiv pair start,4
always all f: File | always f in Protected
-- div,3
always all f:File | once f in Protected && always f in Protected
-- div,1
-- equiv pair end
-- equiv pair start,3
always (all f:File | after f in Protected)
-- div,1
always (all f:File | always(after f in Protected))
-- div,1
always (all f:File | after always f in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : Protected.link | always f in Protected
-- div,1
-- equiv pair end
-- equiv pair start,9
all f: File | f in Protected since f in Protected
-- div,3
all f: File | always f in Protected since f in Protected
-- div,6
-- equiv pair end
-- equiv pair start,1
once File in Protected implies always File in Protected
-- div,1
-- equiv pair end
-- equiv pair start,2
all f : Protected | always f in Protected and f not in Trash
-- div,1
all f : File | f in Protected => always f in Protected and f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f : File | f in Protected implies f not in Protected'
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f : File | f in Protected implies (f in Protected' and f not in Trash)
-- div,1
-- equiv pair end
