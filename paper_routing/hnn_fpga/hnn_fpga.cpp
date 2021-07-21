#include <math.h>
#define N1 8    //Cantidad de nodos

void hnn_fpga(float U_1[N1 * N1], float l, float V[N1 * N1])
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