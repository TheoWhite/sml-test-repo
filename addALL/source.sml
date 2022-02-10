
fun add (n1,d1,n2,d2) = if d1 = 0 then 0
                          else ((n1*d2)+(n2*d1)) div (d1*d2);

(*hd = head of list, tl is the tail*)
fun listAdd (List) = if (List=(0,1)) then
      else add(hd(List),hd(tl (tl List)))


(* a/d c/d*)
val x = listAdd [5,4,3];
