type 'a tree =
  |  T
  | N of 'a tree * 'a * 'a tree;;

let rec ins_key a = function
  | T -> N (T, a, T)
  | N (l, c, r) ->
      if a<=c then N ((ins_key a l), c, r)
      else N (l, c, (ins_key a r));;

let rec tree_of_list = function
  | []   -> T
  | h::t -> ins_key h (tree_of_list t);;

let rec list_of_tree = function
  | T -> []
  | N (l, c, r) ->
      list_of_tree l @ (c :: list_of_tree r);;

let sort a = list_of_tree (tree_of_list a);;

