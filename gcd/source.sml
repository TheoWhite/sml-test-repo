
(*Function used to reverse a list*)

fun gcd (a,b) = if b = 0 then a
                         else gcd(b,a mod b);
val x = gcd (2,3);
val x = gcd (7,6);
val x = gcd (9,2);
