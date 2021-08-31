#include <stdlib.h>
#define n 6

int nqueens()
{
#pragma HLS INTERFACE s_axilite port=return
	int u_0 = 1, k_0 = 0, k_aux = 1, sol_list = 0, flag = 0, max_it = 100, count = 0;
	int a[n+1];

	for (int x=0; x<n+1; x++){
		a[x] = 0;
	}

	for(int iteration = 0; iteration<max_it; iteration++){
		for(int k = k_0; k<n; k++){
			a[k] = 0;
			for (int u = u_0; u<n+1; u++){
				count = 0;
				for (int j = 0; j<k; j++){
					if ((u != a[j]) && (abs(u - a[j]) != (k - j))){
						count = count + 1;
					}
					else{
						break;
					}
				}
				if (count == k){
					a[k] = u;
					k_0 = k;
					break;
				}
			}

			u_0 = 1;
			if (a[k] == 0){
				k = k - 1;
				k_aux = k_aux - 1;
				if (k_aux == 0){
					flag = 1;
					k_0 = k;
					break;
				}
				u_0 = a[k] + 1;
				a[k] = 0;
				k = k - 1;
				k_aux = k_aux - 1;
			}
			k_aux = k_aux + 1;
			if (k_aux == n+1){
				sol_list = sol_list + 1;
				break;
			}
		if (flag){
			break;
		}
		}
	}
	return sol_list;
}
