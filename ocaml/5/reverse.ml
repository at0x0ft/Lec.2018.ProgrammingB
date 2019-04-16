let rec reverse ls = rev ls [] 
and rev ls r = match ls with
    [] -> r
  | h::t -> rev t (h::r);;

    (* max 3 4;; *)
  (* - : int = 5 *)

  (* List.fold_right max [1;-3;5;-7] *)

  (* h::[] [h] *)

  (* 6 簡潔に考える. *)

  (*  *)