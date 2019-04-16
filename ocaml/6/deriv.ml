type exp =
  | Num of int | Var of string 
  | Add of exp * exp | Mul of exp * exp;;

let make_sum a1 a2 = Add (a1,a2);;

let make_product m1 m2 = Mul (m1,m2);;

let rec deriv var = function
  | Num n -> Num 0
  | Var x -> if Var x = var then Num 1 else Num 0
  | Add (x, y) -> make_sum (deriv var x) (deriv var y)
  | Mul (x, y) -> make_sum (make_product x (deriv var y))
                           (make_product (deriv var x) y);;

let x = Var "x" and y = Var "y";;

let t1 = Add (x, Num 3);;
let t2 = Mul (x, y);;
let t3 = Mul (t2, t1);;
