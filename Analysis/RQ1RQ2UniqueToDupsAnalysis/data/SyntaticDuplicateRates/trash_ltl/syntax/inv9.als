always f:File | f not in Trash
-- div,1
always f:Protected | f not in Trash
-- div,1
always (all Protected not in Trash)
-- div,2
all f:Trash | once not in Protected
-- div,1
always (all (Protected not in Trash) )
-- div,1
all p:Protected | always  not in Trash
-- div,1
always (all f:Protected | f not in Trash) )
-- div,1
always (p: Protected | always p not in Trash)
-- div,1
always (f:Protecteed | always f not in Trash)
-- div,1
always (all f:Protecteed | always f not in Trash)
-- div,1
all f: File | always f not in Trash once f in Protected
-- div,1
all f: File | always (no f in Protected & no f in Trash)
-- div,2
always (all f:File | f in Protected immplies f not in Trash)
-- div,2
always Proteted not in Trash
always all p:Protected | p not in Trash
-- div,1
