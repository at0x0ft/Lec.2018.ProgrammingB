let append a b = List.fold_right (fun a b -> a::b) a b;;

let rec product l1 l2 =
  match l1 with
  | [] -> []
  | h::t -> append (List.map (fun x -> (h, x)) l2) (product t l2);;