type point = {
    x : float;
    y : float;
}

type carre = {
    coin : point;
    longueur : float;
}

type ipv4 = {
    octet 1 int;
    octet 2 int;
    octet 3 int;
    octet 4 int;
}

type ipv4 = int32;

(* Exercice 6 *)
let currification f = fun x -> fun y -> f(x,y);;
let decurrification f = fun (x, y) -> f x y;;

(*Exercice 9*)
let rec maxInt l:int = match l with
    |[p] -> p
    |p::q -> max p (maxInt q)
    |_ -> sys.minInt;;

let maxInt l = 
    let rec aux l acc = match l with
        |[] -> acc
        |p::q -> aux q (max p acc)
    in aux l sys.minInt;;
(* in aux (listtl l) (listhd l) *)

let maxInt (l:int list):int = 
    assert (Llist.length l>0)
    List.fold_left (max) (List.hd l) (List.tl l);;

(* Exercice 14 *)
type exprCalc = ..;;
type exprCalc += 
    | Int of Int
    | Add of exprCalc * ecprCalc