let append a b = List.fold_right (fun a b -> a::b) a b;;

let rec map_product l1 l2 f =
  match l1 with
  | [] -> []
  | h::t -> append (List.map (f h) l2) (map_product t l2 f);;