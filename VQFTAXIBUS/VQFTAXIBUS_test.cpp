#include <stdio.h>
#include <hls_math.h>
	#include <ap_fixed.h>
	typedef ap_fixed<32,4> fix_t;

#define L 4			//Cantidad de quits
#define K 2*4		//Dos por la cantidad de qubits
#define Q 2*2*2*2		//Dos elevado a la cantidad de qubits

void Kronecker(float P[2*K], float E[2*Q])
{
	int j,k,u,v,w;
	float aux[2*Q];
	E[0]   = 1;
	E[0+Q] = 0;
	v=1;w=0;
	for (j=0;j<L;j=j++)
	{
		u=0;
		for (k=0;k<v;k++)
		{
			aux[u]       = E[k]*P[w]       - E[k+Q]*P[w+K];
			aux[u+Q]     = E[k]*P[w+K]     + E[k+Q]*P[w];
			aux[(u+1)]   = E[k]*P[(w+1)]   - E[k+Q]*P[(w+1)+K];
			aux[(u+1)+Q] = E[k]*P[(w+1)+K] + E[k+Q]*P[(w+1)];
			u=u+2;
		}
		v=v*2;
		for (k=0;k<v;k++)
		{
			E[k]   = aux[k];
			E[k+Q] = aux[k+Q];
		}
		w=w+2;
	}
}

void VQFTAXIBUS(float E[2*Q], float S[2*Q]);

    int main ()
    {
    	int j;
    	float P[2*K];
    	float E[2*Q];
    	float S[2*Q];

    	E[0]=0;			E[0+Q]=0;	// Parte real y parte compleja Er[i] Ei[i+M]
    	E[1]=0;			E[1+Q]=0;	// Parte real y parte compleja Er[i] Ei[i+M]
    	E[2]=0;			E[2+Q]=0;	// Parte real y parte compleja Er[i] Ei[i+M]
    	E[3]=0;			E[3+Q]=0;	// Parte real y parte compleja Er[i] Ei[i+M]
    	E[4]=0;			E[4+Q]=0;	// Parte real y parte compleja Er[i] Ei[i+M]
    	E[5]=1;			E[5+Q]=0;	// Parte real y parte compleja Er[i] Ei[i+M]
    	E[6]=0;			E[6+Q]=0;	// Parte real y parte compleja Er[i] Ei[i+M]
    	E[7]=0;			E[7+Q]=0;	// Parte real y parte compleja Er[i] Ei[i+M]
    	E[8]=0;			E[8+Q]=0;	// Parte real y parte compleja Er[i] Ei[i+M]
    	E[9]=0;			E[9+Q]=0;	// Parte real y parte compleja Er[i] Ei[i+M]
    	E[10]=0;			E[10+Q]=0;	// Parte real y parte compleja Er[i] Ei[i+M]
    	E[11]=0;			E[11+Q]=0;	// Parte real y parte compleja Er[i] Ei[i+M]
    	E[12]=0;			E[12+Q]=0;	// Parte real y parte compleja Er[i] Ei[i+M]
    	E[13]=0;			E[13+Q]=0;	// Parte real y parte compleja Er[i] Ei[i+M]
    	E[14]=0;			E[14+Q]=0;	// Parte real y parte compleja Er[i] Ei[i+M]
    	E[15]=0;			E[15+Q]=0;	// Parte real y parte compleja Er[i] Ei[i+M]

    	//P[0]=1;	P[0+K]=0;	//Parte real e imaginaria de alfa del qubit
    	//P[1]=0;	P[1+K]=0;	//Parte real e imaginaria de beta del qubit

    	//P[2]=1;	P[2+K]=0;	//Parte real e imaginaria de alfa del qubit
    	//P[3]=0;	P[3+K]=0;	//Parte real e imaginaria de beta del qubit

    	//P[4]=1;	P[4+K]=0;	//Parte real e imaginaria de alfa del qubit
    	//P[5]=0;	P[5+K]=0;	//Parte real e imaginaria de beta del qubit

    	//P[6]=0;	P[6+K]=0.707;	//Parte real e imaginaria de alfa del qubit
    	//P[7]=0.707;	P[7+K]=0;	//Parte real e imaginaria de beta del qubit

    	//P[8]=1;	P[8+K]=0;	//Parte real e imaginaria de alfa del qubit
    	//P[9]=0;	P[9+K]=0;	//Parte real e imaginaria de beta del qubit

    	//P[10]=1;	P[10+K]=0;	//Parte real e imaginaria de alfa del qubit
    	//P[11]=0;	P[11+K]=0;	//Parte real e imaginaria de beta del qubit

    	//Kronecker(P,E);
    	VQFTAXIBUS(E,S);

    	printf("\nE = \n");
        for (j=0;j<Q;j++)
    	{
    	printf("%f + i* %f\n",(float)E[j],(float)E[j+Q]);			// Parte real y parte compleja Er[i] Ei[i]
    	}

    	printf("\nS = \n");
    	for (j=0;j<Q;j++)
    	{
    	printf("%f + i* %f\n",(float)S[j],(float)S[j+Q]);			// Parte real y parte compleja Sr[i] Si[i]
    	}
        return 0;
    }
