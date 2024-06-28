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

pred inv3{
	all u:User | all w:u.profile, w1:u.profile | w.source in Institution and w1.source in Institution and w.source.Id != w1.source.Id
}

