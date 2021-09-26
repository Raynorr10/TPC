#include <stdio.h>

int main(int argc, char *argv[]){
    printf("Vous avez liste %d pays, que voici :\n", argc -1);
    for (int k = 1; k<argc; k++ ){
        printf("%s \n", argv[k]);
    }
    return 0;
}