#include "main.h"
#include "hnn_fpga.h"
#include "hnn_fpga_terminate.h"
#include <math.h>
#include <stdio.h>

#define N1 8	//Cantidad de nodos

void hnn_fpga(const float U[64], float l, float V[64]);

void data_HNN_SPP_2(float V[N1 * N1], float U_0[N1 * N1], float U_1[N1 * N1], float U_2[N1 * N1], float I[N1 * N1], float T[N1 * N1 * N1 * N1], float A, float B, float C)
{
    int x, i, y, j;
    float aux;

    for(x = 0; x < N1; x++)
    {
        for(i = 0; i < N1; i++)
        {
            aux = 0;
            for(y = 0; y < N1; y++)
            {
                for(j = 0; j < N1; j++)
                {
                    if (y != j)
                    {
                        aux = aux + T[x * N1 * N1 * N1 + i * N1 * N1 + y * N1 + j] * V[y * N1 + j];
                    }
                }
            }
            U_0[x * N1 + i] = U_1[x * N1 + i] - A * U_2[x * N1 + i] + B * aux + C * I[x * N1 + i];
        }
    }
}

void rhoxi(int rho[N1 * N1], float C_xi[N1 * N1])
{
	int x, i;

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
	int x, i, y, j;

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
	int x, i;

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

float energy(int u1, int u2, int u3, int u4, int u5, float C_xi[N1 * N1], float V[N1 * N1], int rho[N1 * N1], int source, int destin)
{
	float E_1 = 0, E_2 = 0, E_3 = 0, E_4 = 0, E_5 = 0;
	float E_3_1, E_3_2;
	int x, i;

	for(x = 0; x < N1; x++)
	{
		E_3_1 = 0;
		E_3_2 = 0;
		for(i = 0; i < N1; i++)
		{
			if (x != i)
			{
				if ((x != destin) || (i != source))
				{
					E_1 += (u1/2) * C_xi[x * N1 + i] * V[x * N1 + i];
					E_2 += (u2/2) * rho[x * N1 + i] * V[x * N1 + i];
				}
				E_3_1 += (u3/2) * V[x * N1 + i];
				E_3_2 += (u3/2) * V[i * N1 + x];
				E_4 += (u4/2) * V[x * N1 + i] * (1 - V[x * N1 + i]);
			}
		}
		E_3 += powf(E_3_1 - E_3_2, 2);
	}
	E_5 = (u5 / 2) * (1 - V[destin * N1 + source]);

	return (E_1 + E_2 + E_3 + E_4 + E_5);
}

int main ()
{
	int it_max = 50, source = 0, destin = 1, flag = 1, it = 0, x, i;
	int u1 = 950, u2 = 2500, u3 = 1500, u4 = 475, u5 = 2500;
	float A = 0.0057, B = 0.0072, C = 0.0064, l = 6, E_aux, E_i = 10000;
	int rho[N1 * N1];
	float T[N1 * N1 * N1 * N1], I[N1 * N1], V[N1 * N1];
	float U_0[N1 * N1]  = { 0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0};
	float U_1[N1 * N1]  = { 0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0};
	float U_2[N1 * N1]  = { 0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0};
	float C_xi[N1 * N1]  = {0,    0.91,  0.36, 0,     0,     0,     1.2,   0,
							0.91, 0,     0,    0.375, 0,     0,     0,     1.02,
							0.36, 0,     0,    0.47,  0.64,  0,     0,     0,
							0,    0.375, 0.47, 0,     0,     0.5,   0,     0,
							0,    0,     0.64, 0,     0,     0.56,  0.425, 0,
							0,    0,     0,    0.5,   0.56,  0,     0,     0.4,
							1.2,  0,     0,    0,     0.425, 0,     0,     1.1,
							0,    1.02,  0,    0,     0,     0.4,   1.1,   0};

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

	rhoxi(rho, C_xi);
	txiyj(u3, u4, T);
	ixi(u1, u2, u4, u5, C_xi, rho, source, destin, I);

	while((flag) && (it < it_max))
	{
		hnn_fpga(U_1, l, V);
		data_HNN_SPP_2(V, U_0, U_1, U_2, I, T, A, B, C);
		E_aux = energy(u1, u2, u3, u4, u5, C_xi, V, rho, source, destin);
		if (E_i == E_aux)
		{
			flag = 0;
		}
		E_i = E_aux;
		printf("\nIteracion %d: Energia = %f. ", it, E_i);
		for(x = 0; x < N1; x++)
		{
			for(i = 0; i < N1; i++)
			{
				U_2[x * N1 + i] = U_1[x * N1 + i];
				U_1[x * N1 + i] = U_0[x * N1 + i];
				U_0[x * N1 + i] = 0;
			}
		}
		it += 1;
	}

	printf("\nV = \n");
	for(x = 0; x < N1; x++)
	{
		printf("[");
		for(i = 0; i < N1; i++)
		{
			if (V[x * N1 + i] > 0.5)
			{
				V[x * N1 + i] = 1;
			} else {
				V[x * N1 + i] = 0;
			}
			printf("%f, ", (float) V[x * N1 + i]);
		}
		printf("]\n");
	}
	return 0;
}
