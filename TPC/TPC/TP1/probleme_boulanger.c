#include <stdio.h>

#define NB_BILLETS 7
#define NB_PIECES_EUROS 2
#define NP_PIECES_CENTS 6

typedef unsigned long long uint64;
typedef struct{
    uint64 l[3];
}
small_n_points_vector;
typedef enum {BE, PE, PC} forme_argent_t;

int 

int main (int argc, char * argv[]){
    int euros;
    int cents;
    printf("Saisir la vartie en euros du montent à rendre : ");
    scanf("%d", &euros);
    printf("Saisir la partie en cents du montant à rendre : ");
    scanf("%d", &cents);


    return 0;
}