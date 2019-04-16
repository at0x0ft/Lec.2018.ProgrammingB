let rec member a ls =
  match ls with
  [] -> false
  | h::t -> (a=h) || member a t;;