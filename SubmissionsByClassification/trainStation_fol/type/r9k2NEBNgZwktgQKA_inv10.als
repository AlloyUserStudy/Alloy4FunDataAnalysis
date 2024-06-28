sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

pred inv10{

all t : Track | (succs.t & Junction )implies some (t.signals & Semaphore)

}

