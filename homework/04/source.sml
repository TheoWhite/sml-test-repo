fun insert order x [] = [x]
  | insert order x (y::ys) =
    if order(x,y)
    then x :: y :: ys
    else y :: (insert order x ys);

fun isort order [] = []
  | isort order (x::xs) =
    insert order x (isort order xs);


isort (op <) [6,3,0,1,7,8,5,9,2,4];
