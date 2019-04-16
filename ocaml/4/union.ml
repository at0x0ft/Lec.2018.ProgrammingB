let rec union a b = match (a,b) with
  | ([],b) -> b
  | (a,[]) -> a
  | (ha::ta,hb::tb) ->
    if ha = hb then ha :: union ta tb
    else if ha < hb then ha :: union ta b
    else hb :: union a tb;;