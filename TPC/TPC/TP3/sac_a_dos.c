int i;
int fini = 0;
while (!fini){
    fini = 1;
    for (i= 0; i<n;i++){
        if (vals[i]* poids[i+1] < cals[i+1]* poids[i]){
            long tmp;
            tmp = poids[i];
            poids[i] = poids[i+1];
            poids[i+1] = tmp;
            tmp = vals[i];
            vals[i] = vals[i+1];
            vals[i+1] = tmp;
            fini = 0;
        }
    }
}
long sac_rempli = 0;
i = 0;
do {
    sac_rempli += poids[i];
    valBorneSup += vals[i];
    i++;
} while (sac_rempli <= pMax);
i--;
double depassement = sac_rempli-pMax;
assert(depassement<= poids[i]);
valBorneSup -= (long) ceil (((double) vals[i])*depassement/((double) poids[i]));