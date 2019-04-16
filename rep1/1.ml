(* フィボナッチ数列の漸化式より, 3つの値を引数として渡して計算する補助再帰関数を定義している. *)
 let rec fib_rec a b n =
  if n = 1 then a + b
  else fib_rec b (a + b) (n - 1);;

let fib n =
  if n <= 1 then n
  else fib_rec 0 1 (n - 1);;

(*
  let rec fib_rec a b n =
    if n = 1 then a + b
    else fib_rec b (a + b) (n - 1)
  and fib n =
    if n <= 1 then n
    else fib_rec 0 1 (n - 1);;
*)

(*
let fib n =
  let rec fib_rec a b n =
    if n = 1 then a + b
    else fib_rec b (a + b) (n - 1)
in
  if n <= 1 then n
  else fib_rec 0 1 (n - 1);;
*)
