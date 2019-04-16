let rec exp_sub n sum fact =
  if n = 1 then float_of_int (sum + fact) /. float_of_int fact
  else exp_sub (n - 1) (sum + fact * n) (fact * n);;

let exp n =
  if n <= 1 then float_of_int (n + 1)
  else exp_sub n 1 1;;

(*

  exp(n) = 1 + 1/1! + 1/2! + ... + 1/n! (1)

  であるが, n = 0, 1の時には, いずれもexp(n)の値が整数となるため,
  関数expの段階で計算し, 値を返している.
  n >= 2の時には, 計算上の誤差を少なくするため, exp(n)を通分して

  exp(n) = (n! + 2~n + 3~n + 4~n + ... + (n-1)~n + n + 1)/n! (2)

  としている. 但し, "a~b (a, bはa < bを満たす整数)"は
  "aからbまでの整数を全て順に掛けあわせたもの"を表すものとする.
  つまり, "k~n = n!/(k-1)!"であり, "1~n = n!"である.

  この(2)式は具体的には, exp_subに実装されており,
  引数sumに計算途中の分子の値を, factにnから1までの整数を,
  関数再帰を用いて順に1ずつ数字を小さくしてfactの値に掛けた値を引数として渡している.
  factに1を掛けた後には, 再帰呼出しを終了し,
  分母sumと分子factをfloat型に変換した後に割り算を実行し, 計算結果を返している.

 *)