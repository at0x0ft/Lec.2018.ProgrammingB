let rec max a = max_rec a min_int
and max_rec a tmp = match a with
  | [] -> tmp
  | h::t -> if h > tmp then max_rec t h else max_rec t tmp;;