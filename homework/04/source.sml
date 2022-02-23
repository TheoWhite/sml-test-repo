(*Q1*)

(*Check if the elements are sorted if not return false*)
fun insert order x [] = true
  | insert order x (y::ys) =
    if order(x,y)
    then true
    else false;

fun isSorted order [] = true
  | isSorted order (x::xs) =
    insert order x (isSorted order xs);

(*Q2*)


fun selectionsort [] = []
|   selectionsort (element_1::element_2) =
let
(*Helper function used to run algorithm*)
  fun select_number smaller_num ([], output) = smaller_num::(selectionsort output)
  |   select_number smaller_num (x::xs, output) =
        if (x< smaller_num) then
          select_number x (xs, smaller_num::output)
        else
          select_number smaller_num (xs, x::output)
in
  select_number element_1 (element_2, [])
end


(*Q3*)

(*Helper function*)
fun insert_helper element [] = [element]
|	insert element (element_2::element_3) =
	if element < element_2
		then x::element_2::element_3
	else
		y :: (insert element element_3)

(*Sort recursively*)
fun insertionsort [] = []
|	insertionsort (x::xs) = insert_helper x (insert_helper xs)
