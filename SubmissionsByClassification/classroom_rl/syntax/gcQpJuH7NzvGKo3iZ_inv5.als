sig Person  {
	Tutors : set Person,
	Teaches : set Class
}
sig Group {}

sig Class  {
	Groups : Person -> Group
}

sig Teacher in Person  {}

sig Student in Person  {}

pred inv5{
  
   
  	
  all c : Class |  teaches.c in Teacher  
  		
  
  
  
  

}
