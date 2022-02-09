(*A function used to simplify a fraction by dividing the n/d by the hcd*)


(*From gcd/source.sml*)
fun gcd (a,b) = if b = 0 then a
                         else gcd(b,a mod b);

(*Need to convert to int.*)
fun simplify (n,d) = if d = 0 then 0
                          else  (n/gcd(n,d): int ,d/gcd(n,d): int);



val c = simplify(10,5);
val c = simplify(20,4);
