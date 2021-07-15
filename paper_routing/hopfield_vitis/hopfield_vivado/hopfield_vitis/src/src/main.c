#include "xhopfield_vitis_hw.h"
#include "xhopfield_vitis.h"
#include "xil_printf.h"
#include "sleep.h"
#include <stdio.h>
#include <math.h>
#include <xtime_l.h>
#include <time.h>
#include <xparameters.h>

#define N1 8    //Cantidad de nodos

float *V_hw = (float*)0x40000000;
float *U_1_hw = (float*)0x42000000;


void hopfield_vitis(float V[N1 * N1], float U_1[N1 * N1], float l)
{
    for(int x = 0; x < N1; x++)
    {
        for(int i = 0; i < N1; i++)
        {
            if (x == i)
            {
                V[x * N1 + i] = 0;
            } else {
                V[x * N1 + i] = 1 / (1 + expf(-1 * U_1[x * N1 + i] * l));
            }
        }
    }
}

void hopfield_vitis_2(float V[N1 * N1], float U_0[N1 * N1], float U_1[N1 * N1], float U_2[N1 * N1], float I[N1 * N1], float T[N1 * N1 * N1 * N1], float A, float B, float C)
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

unsigned int float_to_u32(float val)
{
	unsigned int result;
	union float_bytes{
		float v;
		unsigned char bytes[4];
	} data;
	data.v = val;
	result = (data.bytes[3]<<24) + (data.bytes[2]<<16) + (data.bytes[1]<<8) + (data.bytes[0]);
	return result;
}

float u32_to_float(unsigned int val)
{
	union{
		float val_float;
		unsigned char bytes[4];
	} data;
	data.bytes[3] = (val >> (8 * 3)) & 0xff;
	data.bytes[2] = (val >> (8 * 2)) & 0xff;
	data.bytes[1] = (val >> (8 * 1)) & 0xff;
	data.bytes[0] = (val >> (8 * 0)) & 0xff;
	return data.val_float;
}

int main()
{
	XTime tStart_sw;
	XTime tEnd_sw;
	XTime tStart_hw;
	XTime tEnd_hw;

	int it_max = 50, source = 0, destin = 1, flag, it, x, i;
	int u1 = 950, u2 = 2500, u3 = 1500, u4 = 475, u5 = 2500;
	float A = 0.0057, B = 0.0072, C = 0.0064, l = 6, E_aux, E_i_sw = 10000, E_i_hw = 10000, time_sw, time_hw;
	int rho[N1 * N1];
	float T[N1 * N1 * N1 * N1], I[N1 * N1], V_sw[N1 * N1], V_hw[N1 * N1];
	float U_0_sw[N1 * N1]  = { 0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0};
	float U_1_sw[N1 * N1]  = { 0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0};
	float U_2_sw[N1 * N1]  = { 0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0};
	float U_0_hw[N1 * N1]  = { 0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0};
	float U_1_hw[N1 * N1]  = { 0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0,
							0, 0, 0, 0, 0, 0, 0, 0};
	float U_2_hw[N1 * N1]  = { 0, 0, 0, 0, 0, 0, 0, 0,
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

	printf("\nSOFTWARE HOPFIELD NEURAL NETWORK FOR THE SHORTEST PATH PROBLEM: \n");
	flag = 1; it = 0;
	XTime_GetTime(&tStart_sw);
	while((flag) && (it < it_max))
	{
		hopfield_vitis(V_sw, U_1_sw, l);
		hopfield_vitis_2(V_sw, U_0_sw, U_1_sw, U_2_sw, I, T, A, B, C);
		E_aux = energy(u1, u2, u3, u4, u5, C_xi, V_sw, rho, source, destin);
		if (E_i_sw == E_aux)
		{
			flag = 0;
		}
		E_i_sw = E_aux;
		printf("\nIteraci�n %d: Energ�a = %f. ", it, E_i_sw);
		for(x = 0; x < N1; x++)
		{
			for(i = 0; i < N1; i++)
			{
				U_2_sw[x * N1 + i] = U_1_sw[x * N1 + i];
				U_1_sw[x * N1 + i] = U_0_sw[x * N1 + i];
				U_0_sw[x * N1 + i] = 0;
			}
		}
		it += 1;
	}
	XTime_GetTime(&tEnd_sw);

	printf("\nV_sw = \n");
	for(x = 0; x < N1; x++)
	{
		printf("[");
		for(i = 0; i < N1; i++)
		{
			if (V_sw[x * N1 + i] > 0.5)
			{
				V_sw[x * N1 + i] = 1;
			} else {
				V_sw[x * N1 + i] = 0;
			}
			printf("%f, ", (float) V_sw[x * N1 + i]);
		}
		printf("]\n");
	}

	printf("\nHARDWARE HOPFIELD NEURAL NETWORK FOR THE SHORTEST PATH PROBLEM: \n");

	int status;
	XHopfield_vitis goHopfield_vitis;
	XHopfield_vitis_Config *goHopfield_vitis_cfg;

	goHopfield_vitis_cfg = XHopfield_vitis_LookupConfig(XPAR_HOPFIELD_VITIS_0_DEVICE_ID);
	if (!goHopfield_vitis_cfg){
		printf("Error cargando la configuraci�n de goHopfield_vitis.\n");
	} else {
		printf("Hopfield_vitis configurado correctamente.\n");
	}

	status = XHopfield_vitis_CfgInitialize(&goHopfield_vitis, goHopfield_vitis_cfg);
	if (status != XST_SUCCESS){
		printf("Error inicializando goHopfield_vitis.\n");
	} else {
		printf("Hopfield_vitis inicializado correctamente.\n");
	}

	XHopfield_vitis_Initialize(&goHopfield_vitis, XPAR_HOPFIELD_VITIS_0_DEVICE_ID);
	printf("\n");

	XHopfield_vitis_Set_l(&goHopfield_vitis, float_to_u32(l));
	flag = 1; it = 0;
	XTime_GetTime(&tStart_hw);
	while((flag) && (it < it_max))
	{
		XHopfield_vitis_Start(&goHopfield_vitis);
		while(!XHopfield_vitis_IsDone(&goHopfield_vitis));

		hopfield_vitis_2(V_hw, U_0_hw, U_1_hw, U_2_hw, I, T, A, B, C);
		E_aux = energy(u1, u2, u3, u4, u5, C_xi, V_hw, rho, source, destin);
		if (E_i_hw == E_aux)
		{
			flag = 0;
		}
		E_i_hw = E_aux;
		printf("\nIteraci�n %d: Energ�a = %f. ", it, E_i_hw);
		for(x = 0; x < N1; x++)
		{
			for(i = 0; i < N1; i++)
			{
				U_2_hw[x * N1 + i] = U_1_hw[x * N1 + i];
				U_1_hw[x * N1 + i] = U_0_hw[x * N1 + i];
				U_0_hw[x * N1 + i] = 0;
			}
		}
		it += 1;
	}
	XTime_GetTime(&tEnd_hw);

	printf("\nV_hw = \n");
	for(x = 0; x < N1; x++)
	{
		printf("[");
		for(i = 0; i < N1; i++)
		{
			if (V_hw[x * N1 + i] > 0.5)
			{
				V_hw[x * N1 + i] = 1;
			} else {
				V_hw[x * N1 + i] = 0;
			}
			printf("%f, ", (float) V_hw[x * N1 + i]);
		}
		printf("]\n");
	}

	time_sw = (float)((tEnd_sw - tStart_sw));
	printf("El tiempo que le llev� al Software implementar la HNN para resolver el SPP es %f", time_sw);
	time_hw = (float)((tEnd_hw - tStart_hw));
	printf("El tiempo que le llev� al Software implementar la HNN para resolver el SPP es %f", time_hw);
	return 0;
}





























