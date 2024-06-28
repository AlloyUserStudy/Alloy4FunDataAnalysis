sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}

pred inv3{

all exit : univ | exit in Exit implies no exit.succs and some tracks: Track | exit in track.succs

}
