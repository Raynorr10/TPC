(* Exercice 16*)
let fact n = 
    let rec aux n acc = match n with 
        | 0 -> acc
        | _ -> aux (n-1) (n*acc)
    in aux n 1;;

let somme_n_premiers n =
    let rec aux n acc = match n with 
        | 0 -> acc;
        | _ -> aux (n-1) (n + acc)
    in aux n 0;;

let rec parite n = match n with 
    | 0 -> "Pair"
    | 1 -> "Impair"
    | _ -> parite (n-2);;

let fibo_terminale n =
    let rec aux a b n = match n with 
        | 0 -> 0
        | 1 -> b
        | _ -> aux b (b+a) (n-1) 
    in aux 0 1 n;;

let fibo_r n p =
    let rec aux a b n = match n with 
        | 0 -> 0
        | 1 -> b
        | _ -> aux b (b+a) (n-1) 
    in aux (fibo_terminale p) (fibo_terminale p+1) n;;

(*Partie IV *)
let r = ref 0;;

let counter x = 
    let value = ref 0 in  
    (fun () -> value := !value + x; !value - x);;
