sig User {
	follows : set User,
	sees : set Photo,
	posts : set Photo,
	suggested : set User
}

sig Influencer extends User {}

sig Photo {
	date : one Day
}
sig Ad extends Photo {}

sig Day {}

pred inv3{


all p : Photo - Ad | all u1, u2 : User | (p in u1.sees and p in u2.posts) implies u2 in u.follows

}
