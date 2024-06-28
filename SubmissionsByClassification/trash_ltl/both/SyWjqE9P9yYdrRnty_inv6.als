var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}

pred inv6 {
always some f:File | (not always f in Trash) releases (f in Trash and after f in Trash)
}

pred inv6c {
	always Trash in Trash'
}

check correct { inv6 <=> inv6c}
pred under { inv6 and !inv6c}
pred over { !inv6 and inv6c}
run over 
run under 

