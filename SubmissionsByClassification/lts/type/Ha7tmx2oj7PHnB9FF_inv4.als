sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}

pred inv4{
 
  
  some Init.Event

}

/*
All the states have the same events available.
*/
