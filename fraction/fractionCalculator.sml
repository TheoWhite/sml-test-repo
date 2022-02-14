
fun getDenominator (n,d,m,e) = if d = 0 then 0 : int
                          else (n*e)*(d*m) ;

fun getNumerator (d,e) = if d = 0 then 0 : int
                          else d * e;


fun calculateFraction (n,d,m,e) = getNumerator(d,e) / getDenominator(n,d,m,e);
