-- equiv pair start,1
always all f: File | (f in Trash releases f in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all f : File | f in Protected releases f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
always all p : Protected | p in Protected' until p in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f: File | f not in Protected releases f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,22
always all f: File | f in Trash releases f not in Protected
-- div,2
always all f: File | f in Trash triggered f not in Protected
-- div,3
always all f: Protected | f in Trash releases f not in Protected
-- div,4
always all p: Protected | p in Trash releases p not in Protected
-- div,1
always all f: Protected | f in Trash triggered f not in Protected
-- div,4
always all p: Protected | p in Trash triggered p not in Protected
-- div,3
always all p: Protected |always p in Trash releases p not in Protected
-- div,1
always (all f:Protected | f in Trash-Protected triggered f not in Protected)
-- div,2
always all p : Protected | p in Protected until p in Trash and p not in Protected
-- div,1
always (all f:Protected | f in Trash-Protected triggered always f not in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,3
always (all f : File | f in Protected triggered f in Trash)
-- div,3
-- equiv pair end
-- equiv pair start,11
always(all f:Protected | f not in Protected since f in Trash)
-- div,4
always all p: Protected | p not in Protected since p in Trash
-- div,3
always all f: Protected | f not in Protected until f in Trash
-- div,2
always (all f:Protected | f in Protected releases f in Trash)
-- div,1
always (all f:Protected | f in Trash-Protected since f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,2
always all f : Protected | f in Trash until f not in Protected
-- div,2
-- equiv pair end
-- equiv pair start,1
always all f: File | once f not in Protected releases f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,5
always (all f:Protected | f not in Protected releases f in Trash)
-- div,5
-- equiv pair end
-- equiv pair start,1
always all f: File | always f not in Protected releases f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f: File | always (f not in Protected releases f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,3
always (all f : Protected | f in Trash releases always f in Protected)
-- div,3
-- equiv pair end
-- equiv pair start,1
always all p: Protected | eventually p not in Protected implies p in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f: File | f in Protected and f in Trash releases always f not in Protected
-- div,1
-- equiv pair end
