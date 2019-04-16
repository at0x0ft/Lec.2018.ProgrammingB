let rec member a ls =
  match ls with
  [] -> false
  | h::t -> (a=h) || member a t;;

let rec unduplicate a =
  match a with
    [] -> []
  | h::t -> if member h t
            then unduplicate t
            else h::unduplicate t;;