#include <stdio.h>
#include <hls_math.h>

#define N1 8	//Cantidad de nodos

void hopfield_routing(	float V[N1 * N1],
						float U_0[N1 * N1],
						float U_1[N1 * N1],
						float U_2[N1 * N1],
						float I[N1 * N1],
						float T[N1 * N1 * N1 * N1],
						int A,
						int B,
						int C,
						int l);

void rhoxi(int rho[N1 * N1], float C_xi[N1 * N1])
{
	int x,i;

	for(x = 0; x < N1; x++)
	{
		for(i = 0; i < N1; i++)
		{
			if (C_xi[x * N1 + i] == 0)
			{
				rho[x * N1 + i] = 1;
			} else {
				rho[x * N1 + i] = 0;
			}

		}
	}

}

int deltak(int a, int b)
{
	if (a == b)
	{
		return 1;
	} else {
		return 0;
	}
}

void txiyj(int u3, int u4, float T[N1 * N1 * N1 * N1])
{
	int x,i, y, j;

	for(x = 0; x < N1; x++)
	{
		for(i = 0; i < N1; i++)
		{
			for(y = 0; y < N1; y++)
			{
				for(j = 0; j < N1; j++)
				{
					T[x * N1 * N1 * N1 + i * N1 * N1 + y * N1 + j] = u4 * deltak(x, y) * deltak(i, j) - u3 * (deltak(x, y) + deltak(i, j) - deltak(j, x) - deltak(i, y));
				}
			}
		}
	}
}

void ixi(int u1, int u2, int u4, int u5, float C_xi[N1 * N1], int rho[N1 * N1], int source, int destin, float I[N1 * N1])
{
	int x,i;

	for(x = 0; x < N1; x++)
	{
		for(i = 0; i < N1; i++)
		{
			if (x != i)
			{
				I[x * N1 + i] = - (u1 / 2) * C_xi[x * N1 + i] * (1 - deltak(x, destin) * deltak(i, source)) - (u2 / 2) * rho[x * N1 + i] * (1 - deltak(x, destin) * deltak(i, source)) - (u4/2) + (u5/2) * deltak(x, destin) * deltak(i, source);
			} else {
				I[x * N1 + i] = 0;
			}
		}
	}

}

int main ()
{
	int source, destin, it_max, u1, u2, u3, u4, u5, l, x, i;
	int rho[N1 * N1];
	float A, B, C;
	float T[N1 * N1 * N1 * N1], I[N1 * N1];

	float C_xi[N1 * N1]  = {0,    0.91,  0.36, 0,     0,     0,     1.2,   0,
							0.91, 0,     0,    0.375, 0,     0,     0,     1.02,
							0.36, 0,     0,    0.47,  0.64,  0,     0,     0,
							0,    0.375, 0.47, 0,     0,     0.5,   0,     0,
							0,    0,     0.64, 0,     0,     0.56,  0.425, 0,
							0,    0,     0,    0.5,   0.56,  0,     0,     0.4,
							1.2,  0,     0,    0,     0.425, 0,     0,     1.1,
							0,    1.02,  0,    0,     0,     0.4,   1.1,   0};

	source = 0;
	destin = 1;
	it_max = 100;
	u1 = 950;
	u2 = 2500;
	u3 = 1500;
	u4 = 475;
	u5 = 2500;
	A = 0.0057;
	B = 0.0072;
	C = 0.0064;
	l = 6;

	rhoxi(rho, C_xi);
	txiyj(u3, u4, T);
	ixi(u1, u2, u4, u5, C_xi, rho, source, destin, I);

	// Inicializar U_0, U_1, U_2, E_0 y ya iterar...

	printf("\nC_xi = \n");
	for(x = 0; x < N1; x++)
	{
		printf("[");
		for(i = 0; i < N1; i++)
		{
			printf("%f, ", (float) C_xi[x * N1 + i]);
		}
		printf("]\n");
	}

	return 0;
}
