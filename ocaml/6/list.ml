let rec assoc x = function
  | [] -> None
  | (a,b)::l -> if a = x then Some b else assoc x l;;

