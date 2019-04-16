let rec member a ls =
  match ls with
  [] -> false
  | h::t -> (a=h) || member a t;;

let rec difference a b =
  match a with
    [] -> []
  | h::t -> if member h b
            then difference t b
            else h::difference t b;;