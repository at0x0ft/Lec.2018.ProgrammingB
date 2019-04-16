let rec member a ls =
  match ls with
  [] -> false
  | h::t -> (a=h) || member a t;;

let rec intersection a b =
  match a with
    [] -> []
  | h::t -> if member h b
            then h::intersection t b
            else intersection t b;;