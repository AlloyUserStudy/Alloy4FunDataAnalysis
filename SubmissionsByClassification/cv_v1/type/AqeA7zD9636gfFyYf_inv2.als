abstract sig Source {}
sig User extends Source {
    profile : set Work,
    visible : set Work
}
sig Institution extends Source {}

sig Id {}
sig Work {
    ids : some Id,
    source : one Source
}

pred inv2{
	all u : User | some (u<:profile).Work in (Work<:source).u & (Work<:source).Institution 
}

