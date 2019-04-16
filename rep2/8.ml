let append a b = List.fold_right (fun a b -> a::b) a b;;

let rec index_rec lls i = match lls with
  | [] -> []
  | h::t -> append (List.map (fun x -> (x, i)) h) (index_rec t (i + 1));;

let n_index lls = index_rec lls 1;;

let rec search str ls =
  match ls with
  | [] -> []
  | h::t ->
    if (fst h) = str then (snd h)::(search str t)
    else search str t;;

let rec search_rec ls =
  match ls with
  | [] -> []
  | h::t -> ((fst h), (search (fst h) ls))::(search_rec t);;

let rec member str ls =
  match ls with
  | [] -> false
  | h::t -> (str = (fst h)) || member str t;;

let rec unduplicate tls =
  match tls with
  | [] -> []
  | h::t ->
    if member (fst h) t then unduplicate t
    else h::(unduplicate t);;

let reverse ls = List.fold_left (fun a b -> b::a) [] ls;;

let index lls = unduplicate(reverse (search_rec (n_index lls)));;

(*
  まず, 引数として渡されたリストを課題7で示した, 重複を含むタプルリストの形に直す. (関数n_index)
  次に, searchにより, タプルの1変数目を順に参照し, 引数として渡したstrと一致する場合には,
  タプルの2変数目に連結して保持しておき, そうでない場合については, そのままにしておく.
  この関数searchの操作をlsの要素のタプル全てに適用していけば良いのだが,
  このままでは, タプルの1引数目の重複は解消されない.
  また, リストを先頭から順に参照していく関係上, 後ろのタプルの2引数目のインデックスリストには,
  それよりも前に出てきたタプルの2引数目を記録していない.
  従って, 重複分のタプルは, リストの後方から削除する必要がある.
  よって, 関数reverseにより, 一度リストを反転したのち, 関数unduplicateを用いて,
  重複分を先頭から削除(つまり元のリストでは後ろから削除にあたる)していき, 答えとなるリストを得ている.
  上記のような手順を用いて, 関数indexを実現している.
*)