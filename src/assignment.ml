let rec il3 l1 l2 l3 count acc=match l1 with [] -> if count = 2 then List.rev acc else il3 l2 l3 l1 (count+1) acc
| x::xs -> il3 l2 l3 xs 0 (x::acc)

let interleave3 l1 l2 l3 = il3 l1 l2 l3 0 []
