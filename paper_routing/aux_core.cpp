#include <hls_math.h>

#define N1 8    //Cantidad de nodos

void hopfield_routing(  float V[N1 * N1],
                        float U_0[N1 * N1],
                        float U_1[N1 * N1],
                        float U_2[N1 * N1],
                        float I[N1 * N1],
                        float T[N1 * N1 * N1 * N1],
                        float A,
                        float B,
                        float C,
                        int l)
{

    #pragma HLS RESOURCE variable=V core=RAM_1P_BRAM
    #pragma HLS INTERFACE bram port=V

    #pragma HLS RESOURCE variable=U_0 core=RAM_1P_BRAM
    #pragma HLS INTERFACE bram port=U_0

    #pragma HLS RESOURCE variable=U_1 core=RAM_1P_BRAM
    #pragma HLS INTERFACE bram port=U_1

    #pragma HLS RESOURCE variable=U_2 core=RAM_1P_BRAM
    #pragma HLS INTERFACE bram port=U_2

    #pragma HLS RESOURCE variable=I core=RAM_1P_BRAM
    #pragma HLS INTERFACE bram port=I

    #pragma HLS RESOURCE variable=T core=RAM_1P_BRAM
    #pragma HLS INTERFACE bram port=T

    #pragma HLS INTERFACE s_axilite port=A bundle=CRTL_BUS
    #pragma HLS INTERFACE s_axilite port=B bundle=CRTL_BUS
    #pragma HLS INTERFACE s_axilite port=C bundle=CRTL_BUS
    #pragma HLS INTERFACE s_axilite port=l bundle=CRTL_BUS
    #pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS

    int x, i, y, j;
    float aux;

    for(x = 0; x < N1; x++)
    {
        for(i = 0; i < N1; i++)
        {
            if (x == i)
            {
                V[x * N1 + i] = 0;
            } else {
                V[x * N1 + i] = 1 / (1 + hls::exp(-1 * U_1[x * N1 + i] * l));
            }
        }
    }

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
