-- equiv pair start,147
no ~adj & adj
-- div,1
no adj & ~adj
-- div,53
adj - ~adj = adj
-- div,2
no iden & adj.adj
-- div,3
#(adj - ~adj) = #adj
-- div,1
all n:Node | n !in n.adj.adj
-- div,10
all n : Node | no (n.adj & n.(~adj))
-- div,1
all e1 : Node | no e1.adj & adj.e1
-- div,1
no n : Node, n2 : n.adj | n in n2.adj
-- div,2
all n : Node, n2 : n.adj | n not in n2.adj
-- div,1
all n:Node, n2:n.adj | not n in n2.adj
-- div,1
all n,m: Node | m in n.adj => n not in m.adj
-- div,1
all a,b : Node | b in a.adj implies a not in b.adj
-- div,1
all n,x:Node | n->x in adj implies x->n not in adj
-- div,1
all a,b:Node | a->b in adj implies b->a not in adj
-- div,3
all x,y:Node | x->y in adj implies y->x not in adj
-- div,4
all n, m : Node | n->m in adj implies m->n not in adj
-- div,1
all n : Node| all a : n.adj | n not in a.adj
-- div,2
all n, n1 : Node | n->n1 in adj => n1->n not in adj
-- div,1
all n1, n2: Node | n1 in n2.adj => n2 not in n1.adj
-- div,7
all n1,n2:Node | n2 in n1.adj implies n1 not in n2.adj
-- div,1
all n1,n2: Node | (n1 in n2.adj => not (n2 in n1.adj))
-- div,4
all n1, n2 : Node | n1->n2 in adj => n2->n1 not in adj
-- div,28
all e1, e2 : Node | e1 -> e2 in adj implies e2 -> e1 not in adj
-- div,1
all v1, v2 : Node | v1->v2 in adj implies not v2->v1 in adj
-- div,3
all n1, n2 : Node | n1->n2 in adj implies not n2->n1 in adj
-- div,1
not some n1, n2:Node | n1->n2 in adj and n2->n1 in adj
-- div,2
all n:Node.adj |all x:n.adj | n not in x.adj
-- div,1
all n : Node | n not in n.adj.adj
no (iden & adj.adj)
-- div,1
all n1,n2:Node | n1 in n2.adj => n2 in (univ - n1.adj)
-- div,2
all x, y, z: Node | (y in x.adj and z in y.adj) implies z != x
-- div,1
all a:Node,b:Node | a->b in adj implies not (b->a in adj)
-- div,1
all n1,n2:Node | some n1.adj:>n2 implies no n2.adj:>n1
-- div,1
all v1, v2 : Node | v1->v2 in adj implies not v2->v1 in adj
no adj & ~adj
-- div,1
all n, n1 : Node | n->n1 in adj => n1->n not in adj

adj & ~adj in iden
-- div,1
all disj n, n1 : Node | n->n1 in adj => n1->n not in adj
all n: Node, n1 : n.adj | n not in n1.adj
-- div,1
-- equiv pair end
