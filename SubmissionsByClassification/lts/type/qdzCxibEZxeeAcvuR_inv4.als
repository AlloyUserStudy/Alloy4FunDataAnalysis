sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv4{
  State in (Init.trans[Event] + State.trans[Event].Init)
}

/*
All the states have the same events available.
*/
