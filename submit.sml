(*Q1*)
fun gcd (a,b) = if b = 0 then a
                         else gcd(b,a mod b);

(*Q2*)
fun simplify (n,d) = if d = 0 then 0
                          else  (n/gcd(n,d): int ,d/gcd(n,d): int);
(*Q3*)
fun times (n1,d1,n2,d2) = if d1 = 0 then 0
                          else ((n1 + n2)div d1)
(*Q4*)
fun add (n1,d1,n2,d2) = if d1 = 0 then 0
                          else ((n1*d2)+(n2*d1)) div (d1*d2);

(*Q7*)
fun lessThan (n1,d1,n2,d2) = if (n1 div d1) < (n2 div d2) then true
                          else false

(*Q8*)
fun insertAlgo x [] = [x]
|	insertAlgo x (y::ys) =
	if y < x
		then  y :: (insertAlgo x ys)
	else x::y::ys


fun insertionsort [] = []
|	insertionsort (x::xs) = insertalgo x (insertionsort xs)

(*Did not have enough time to implement lists :( *)
(*This works*)
val c = insertionsort([2,3,9,2,4]);
