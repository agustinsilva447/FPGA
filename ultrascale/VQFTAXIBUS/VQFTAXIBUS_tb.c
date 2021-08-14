#include <stdio.h>
#include <math.h>

#define L 4			//Cantidad de quits
#define K 2*4		//Dos por la cantidad de qubits
#define Q 2*2*2*2		//Dos elevado a la cantidad de qubits

void VQFTAXIBUS(float E[2*Q], float S[2*Q]);

    int main ()
    {
    	int j;
    	float P[2*K];
    	float E[2*Q];
    	float S[2*Q];

    	E[0]=1;			E[0+Q]=0;
    	E[1]=0;			E[1+Q]=0;
    	E[2]=0;			E[2+Q]=0;
    	E[3]=0;			E[3+Q]=0;
    	E[4]=0;			E[4+Q]=0;
    	E[5]=0;			E[5+Q]=0;
    	E[6]=0;			E[6+Q]=0;
    	E[7]=0;			E[7+Q]=0;
    	E[8]=0;			E[8+Q]=0;
    	E[9]=0;			E[9+Q]=0;
    	E[10]=0;		E[10+Q]=0;
    	E[11]=0;		E[11+Q]=0;
    	E[12]=0;		E[12+Q]=0;
    	E[13]=0;		E[13+Q]=0;
    	E[14]=0;		E[14+Q]=0;
    	E[15]=0;		E[15+Q]=0;

    	VQFTAXIBUS(E,S);

    	printf("\nE = \n");
        for (j=0;j<Q;j++)
    	{
    	printf("%f + i* %f\n",(float)E[j],(float)E[j+Q]);
    	}

    	printf("\nS = \n");
    	for (j=0;j<Q;j++)
    	{
    	printf("%f + i* %f\n",(float)S[j],(float)S[j+Q]);
    	}
        return 0;
    }
