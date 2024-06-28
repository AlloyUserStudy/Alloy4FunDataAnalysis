-- equiv pair start,2
trans.State.Event = Init
-- div,1
Init = trans.State.Event
-- div,1
-- equiv pair end
-- equiv pair start,5
some (Event.(State.trans))
-- div,4
some trans.(Event.(State.trans))
-- div,1
-- equiv pair end
-- equiv pair start,1
Init in Event.^(Init.trans)
-- div,1
-- equiv pair end
-- equiv pair start,5
Init in Event.^(State.trans)
-- div,2
Init in State.^{x,y: State | some x.trans.y}
-- div,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    Init in State.^trans_bin
-- div,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    Init in ~(^trans_bin).State
-- div,1
-- equiv pair end
-- equiv pair start,1
(State.trans).~(State.trans) in iden
-- div,1
-- equiv pair end
-- equiv pair start,1
~(State.trans).(State.trans) in iden
-- div,1
-- equiv pair end
-- equiv pair start,4
all x : Event | some (*(~(trans.x))).Init
-- div,1
all x : Event | some Init.(*(~(trans.x)))
-- div,3
-- equiv pair end
-- equiv pair start,4
all x : State | some Init.(*(~(x.trans)))
-- div,2
all x : State | some (*(~(x.trans))).Init
-- div,1
all x : State | (no iden & (x.trans)) and some ((*(~(x.trans))).Init)
-- div,1
-- equiv pair end
-- equiv pair start,2
all s:State-Init | Init in Event.(s.trans)
-- div,1
all s:State-Init | Init in Event.^(s.trans)
-- div,1
-- equiv pair end
-- equiv pair start,4
all s:State-Init | Init in Event.~(s.trans)
-- div,1
all n : State-Init | Init in ^(State.trans).n
-- div,3
-- equiv pair end
-- equiv pair start,1
all s: State | some (s.*(trans[Event]) & Init)
-- div,1
-- equiv pair end
-- equiv pair start,2
all x : Init | (x.trans) in Event one -> one State
-- div,2
-- equiv pair end
-- equiv pair start,1
all s: State | s in {x, y: State | some (x.trans).y}.s
-- div,1
-- equiv pair end
-- equiv pair start,2
all s: State | s in s.^{x, y: State | some (x.trans).y}
-- div,2
-- equiv pair end
-- equiv pair start,1
all s: State | Init in ^{x, y: State | some (x.trans).y}.s
-- div,1
-- equiv pair end
-- equiv pair start,16
all s: Event.(State.trans) | s in s.^{x,y: State | some y.trans.x}
-- div,3
all s: Event.(State.trans) | s in s.^{y,x: State | some x.trans.y}
-- div,1
all s: Event.(State.trans) | s in ^{x,y: State | some y.trans.x}.s
-- div,1
all s: Event.(State.trans) | s in ^{x,y: State | some x.trans.y}.s
-- div,11
-- equiv pair end
-- equiv pair start,8
let t = {x: State, y: State | some (x.trans).y } |
  Init in Init.^t
-- div,2
let trans2 = {s1, s2 : State | some s1.trans.s2} |
    Init in Init.^trans2
-- div,3
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    Init in Init.^trans_bin
-- div,1
let trans2 = {s1, s2 : State | some s1.trans.s2} |
    Init in Init.(^trans2 + trans2)
-- div,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    Init in Init.^trans_bin.^trans_bin
-- div,1
-- equiv pair end
-- equiv pair start,3
all s: Event.(State.trans) | Init in ^{x,y: State | some x.trans.y}.s
-- div,3
-- equiv pair end
-- equiv pair start,1
all s: Event.(State.trans) | s in Init.^{x,y: State | some x.trans.y}
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Event.(State.trans) | State in ^{x,y: State | some x.trans.y}.s
-- div,1
-- equiv pair end
-- equiv pair start,1
((State - Init) -> State) in ^{ s, ns : State | s->Event->ns in trans }
-- div,1
-- equiv pair end
-- equiv pair start,1
let trans2 = {s1, s2 : State | some s1.trans.s2} |
    Init = Init.^trans2
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Event.(State.trans) - Init | Init in ^{x,y: State | some x.trans.y}.s
-- div,1
-- equiv pair end
-- equiv pair start,4
inv4
}

pred inv4{
  Init.^({x: State, y: State | some (x.trans).y }) = State
-- div,1
let t = {x,y : State | some z : Event | x->z->y in trans} |
	State in Init.(^t)
-- div,1
let t = {x,y : State | some z : Event | x->z->y in trans} | State in ~(^t).Init
-- div,2
-- equiv pair end
-- equiv pair start,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    some iden & trans_bin
-- div,1
-- equiv pair end
-- equiv pair start,1
let t = {x,y : State | some z : Event | x->z->y in trans} |
	State in Init.(*(~t))
-- div,1
-- equiv pair end
-- equiv pair start,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    State.^trans_bin = State
-- div,1
-- equiv pair end
-- equiv pair start,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    Init in (^trans_bin).State
-- div,1
-- equiv pair end
-- equiv pair start,2
all s1,s2:State | some e1,e2:Event  | s1->e1->s2 in trans implies s2->e2->s1 in trans
-- div,2
-- equiv pair end
-- equiv pair start,2
let t = {x,y : State | some z : Event | x->z->y in trans} |
	all s : State | Init in s.~t
-- div,2
-- equiv pair end
-- equiv pair start,1
all x : State, y : Init, z : Event | (trans in y one -> one z one -> one x) implies x != y
-- div,1
-- equiv pair end
-- equiv pair start,2
let t = {x,y : State | some z : Event | x->z->y in trans} |
	some ^t implies some Init.(^t)
-- div,1
let t = {x,y : State | some z : Event | x->z->y in trans} |
	some ^t implies some ^(~t).Init
-- div,1
-- equiv pair end
-- equiv pair start,3
let t = {x,y : State | some z : Event | x->z->y in trans} |
	some ^t implies some (^t).Init
-- div,1
let t = {x,y : State | some z : Event | x->z->y in trans} |
	some ^t implies some Init.^(~t)
-- div,1
let t = {x,y : State | some z : Event | x->z->y in trans} |
	some ^t implies some Init.~(^t)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s1,s2:State, e1,e2:Event  | s1->e1->s2 in trans implies s2->e2->s1 in trans or s1->e2->s1 in trans
-- div,1
-- equiv pair end
-- equiv pair start,1
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
   some (Init.^adj) implies lone ( (Init.^adj).^adj & Init )
-- div,1
-- equiv pair end
-- equiv pair start,1
let adj = {s1,s2: State | some e: Event | s1 -> e -> s2 in trans} |
  some i: Init, r: Event.(State.trans) | i in r.^adj
-- div,1
-- equiv pair end
-- equiv pair start,2
let adj ={x,y:State | some e:Event |x->e->y in trans} |
	all  s1,s2 :State |some e:Event |  (s1->e->s2) in trans implies ( Init in s2.^adj  )
-- div,2
-- equiv pair end
-- equiv pair start,2
let adj ={x,y:State | some e:Event |x->e->y in trans} |
	all disj s1,s2 :State |some e:Event |  (s1->e->s2) in trans implies ( Init in s2.^adj )
-- div,2
-- equiv pair end
-- equiv pair start,2
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
	all  s1,s2 :State |some e:Event |  (s1->e->s2) in trans implies ( Init in s2.*adj  )
-- div,1
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
  	
  	
	all  s1,s2 :State |some e:Event |  one State or (s1->e->s2) in trans implies ( Init in s2.*adj  )
-- div,1
-- equiv pair end
