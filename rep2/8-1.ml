let append a b = List.fold_right (fun a b -> a::b) a b;;

let rec index_rec lls i = match lls with
  | [] -> []
  | h::t -> append (List.map (fun x -> (x, i)) h) (index_rec t (i + 1));;

let n_index lls = index_rec lls 1;;

let rec append_index str ls =
  match ls with
  | [] -> []
  | h::t ->
    if (fst h) = str then (snd h)::(append_index str t)
    else append_index str t;;
    
let rec delete str ls =
  match ls with
  | [] -> []
  | h::t ->
    if (fst h) = str then delete str t
    else h::(delete str t);;

let rec compress ls =
  match ls with
  | [] -> []
  | h::t -> ((fst h), (append_index (fst h) ls))::(compress (delete (fst h) t));;

let index lls = compress (n_index lls);;

(*
  関数n_indexは, 課題7のindex関数にあたるものであり, まず, index関数に与えられたリストを
  課題7での答えに当たる形に変換してから操作をしている.
  関数append_indexにより, strがタプルhの1変数目に一致した場合に, hの2変数目を連結し,
  リストとして返している.
  また, delete関数は, strがタプルhの1変数目に一致した場合に, その要素を除いたリストを
  新たに作成し, 返す関数である.
  以上から, タプルの1変数目が重複する要素について, 一つにまとめる関数compressは,
  関数append_indexと関数deleteを用いて実現することが出来る.
  具体的には, 先頭要素hの1引数目と, append_index関数でhの1引数目に一致するタプルの2引数目
  を全て連結したタプルを構成し, その後ろにcompress関数の戻り値を連結して返している.
  再帰呼出しされているcompress関数には, 引数として,
  既に連結したタプルと重複する要素を全て取り除いたリストを渡して新たなタプルを構成できるよう, 工夫している.
  以上のような処理を元に, n_index関数を適用し, その上でcompress関数を適用することで,
  index関数を実現している.
*)