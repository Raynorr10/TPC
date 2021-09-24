from typing import List

def my_max(L : List[int]):
    """my_max renvoie le maximum d'une liste d'entiers non vide
    et lève un AssertionError si la liste est vide"""

    assert len(L) > 0, "Impossible de calculer le maximum d'une liste vide"
    m : int = L[0] # m est le maximum des entiers qu'on a vu jusqu'à ici
    i : int = 1
    while (i < len(L)):
        if L[i] > m:
            m = L[i]
        i += 1
    return m
