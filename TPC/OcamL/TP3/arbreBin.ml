type ('a, 'b) arbreBin =
    | Feuille of 'b 
    | Node of ('a, 'b) arbreBin * 'a * ('a, 'b) arbreBin

let rec profondeur = function
    | Feuille _ -> 0
    | Node (l,_,r) -> max (profondeur l) (profondeur r)
(* val profondeur : ('a, 'b) arbreBin -> int *)

let monPetitArbre = 
    Node(
        Feuille "a",
        0,
        Feuille "b"
    )
(* val monPetitArbre : (int, string) arbreBin 
Exercices 5-8-9
Exercices 13-19 *)