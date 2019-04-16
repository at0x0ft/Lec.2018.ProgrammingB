let rec member ls a =
  match ls with
  | [] -> false
  | h::t -> (a = h) || (member t a);;

let rec union a b =
  match a with
  [] -> b
  | h::t -> if member h b
            then union t b
            else h::(union t b);;

let rec range m n=
  if m = n+1 then []
  else m::(range (m+1) n);;
