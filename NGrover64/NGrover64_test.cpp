#include <stdio.h>
#include <math.h>

#define E 64 // tamaño del vector

void NGrover64(float E1[E], float B[E], float &C);

int main()
{
	int i,j;
	float X,C;
	float B[E],E1[E];

	for (i=0;i<E;i++)
	{
		B[i]=1/sqrt(E);
		E1[i] = 5;
	}
	E1[13] = 19;
	E1[24] = 17;
	E1[32] = 19;
	E1[45] = 17;
	C=10;	//condicion

	NGrover64(E1,B,C);

	X = B[0];
	for (i=1;i<E;i++)
	{
		if (X<B[i])
		{
			X = B[i];
		}
	}
	j = 0;
	for (i=1;i<E;i++)
	{
		if (X==B[i])
		{
			printf("El numero buscado es el %f, en la posicion %d, con probabilidad %f\n", E1[i],i,X*X);
			j = j+1;
		}
	}
	printf("Exito: %f\n", X*X*j);
	printf("La cantidad de iteraciones es %f\n", C);
}
