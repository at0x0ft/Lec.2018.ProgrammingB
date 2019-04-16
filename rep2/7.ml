let append a b = List.fold_right (fun a b -> a::b) a b;;

let rec index_rec lls i = match lls with
  | [] -> []
  | h::t -> append (List.map (fun x -> (x, i)) h) (index_rec t (i + 1));;

let index lls = index_rec lls 1;;

(*
  index_recにより, リストの中のリストの要素を一つずつ取り出し,
  そのリストが大きな外側のリストの何要素目にあたるか(変数i)を
  引数として受け取り, この二つをタプルとして構成しリストとして連結して返している.
  この操作を外側の大きなリストに属する要素一つ一つに順に適用していき,
  それぞれの得られたリストをappendにより連結した結果を返すことにより,
  index関数を実現している.
*)