-- equiv pair start,7
Node in *adj.Node
-- div,1
Node in Node.*adj
-- div,4
Node.^adj + Node.iden = Node
-- div,1
all n : Node | n->(n.^adj) in Node->Node
-- div,1
-- equiv pair end
-- equiv pair start,1
one Node or (Node = Node.(^adj))
-- div,1
-- equiv pair end
-- equiv pair start,1
all n : Node | Node.adj in n.^adj
-- div,1
-- equiv pair end
-- equiv pair start,9
all n:Node | Node in n.(*adj + *~adj)
-- div,1
all n:Node | Node in n.*adj+n.^~adj
-- div,1
all n:Node | Node-n in n.(^adj + ^~adj)
-- div,1
all n:Node | Node-n in n.(*adj + *~adj)
-- div,1
all n:Node | Node-n in n.^adj + n.^~adj
-- div,4
all disj n1,n2: Node | n1 in n2.^adj or n2 in n1.^adj
-- div,1
-- equiv pair end
-- equiv pair start,4
no Node or some n: Node | n.*adj = Node
-- div,2
no Node or (some {n: Node | n.*adj = Node})
-- div,2
-- equiv pair end
-- equiv pair start,1
all n:Node | Node-n in n.^adj or Node in n.^~adj
-- div,1
-- equiv pair end
-- equiv pair start,1
all n:Node | Node-n in n.^adj or Node-n in n.^~adj
-- div,1
-- equiv pair end
-- equiv pair start,1
all x, y: Node | x in y.^(adj) or x in adj.y or x = y
-- div,1
-- equiv pair end
