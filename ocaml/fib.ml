let rec fib n =
  match n with
  n <= 1 -> n
  | n = 2 -> 1
  | let rec subfib a b c =
  