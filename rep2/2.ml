let max a = List.fold_right (fun a b -> if a < b then b else a) a min_int;;

let append a b = List.fold_right (fun a b -> a::b) a b;;

let map f l = List.fold_right (fun a b -> (f a)::b) l [];;