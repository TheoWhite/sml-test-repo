(*Write a function that takes a list of 2-tuples and retuns a list of the max*)

(*Helper function that follows pattern matching *)
fun helper (t1,t2) = if (t1 <= t2) then t2 else t1;

(*Use the helper fun to do comparison *)
fun max ((t1,t2), (t3,t4),(t5,t6))=(helper(t1,t2),helper(t3,t4),helper(t5,t6));

val findMax = max((3,4), (5,6),(5,3));
