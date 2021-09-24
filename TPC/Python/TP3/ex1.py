from typing import List

def my_max_rec(l:List[int], i:int):
    if (i==0):
        return l[i]
    else:
        return max(l[i], my_max_rec(l, i-1))

#Correction Thonny
def retirer_tous(chaine:Dict[str, Any]element:int)->None:
    if chaine =={}:
        return
        retirer_tous(chaine['next'], element);
        if chaine['val'] == element
            if chaine['next']=={}:
                del chaine['val']
                del chaine['next']
            else:
                chaine['val']=chaine['next']['val']
                chaine['next']=chaine['next']['next']

