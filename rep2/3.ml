let list_len ls = List.fold_left (fun a b -> a + 1) 0 ls;;

let reverse ls = List.fold_left (fun a b -> b::a) [] ls;;
