sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

pred inv6{


all a:Track| some b:Signal| a in Entry implies a->b in signails and b in Speed

}
