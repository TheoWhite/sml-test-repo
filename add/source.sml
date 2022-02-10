
fun add (n1,d1,n2,d2) = if d1 = 0 then 0
                          else ((n1*d2)+(n2*d1)) div (d1*d2);


(* a/d c/d*)
val f = add(6,3,10,2);
