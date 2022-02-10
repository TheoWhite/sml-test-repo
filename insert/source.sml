fun insertalgo x [] = [x]
|	insertalgo x (y::ys) =
	if x < y
		then x::y::ys
	else
		y :: (insertalgo x ys)

fun insertionsort [] = []
|	insertionsort (x::xs) = insertalgo x (insertionsort xs)


val c = insertionsort([2,3,9,2,4]);
