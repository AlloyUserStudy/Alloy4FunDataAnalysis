always all f : Protected | f not in Protected' => f in Trash
-- div,9
always all p:Protected | p not in Protected' implies p in Trash
-- div,7
always all f: Protected | f in Trash releases f in Protected
-- div,14
always all f : Protected | after f not in Protected => f in Trash
-- div,4
always all p: Protected | after p not in Protected implies p in Trash
-- div,8
always (all f:File | f in Protected implies f in Trash releases f in Protected)
-- div,3
