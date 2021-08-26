#include <stdlib.h>
#define n 8

int find_0(int a[n])
{
	for(int i = 0; i<n; i++){
#pragma HLS PIPELINE
		if (a[i] == 0){
			return i;
		}
	}
	return n;
}

int counter(int a[n], int k, int n_0, int u_0)
{
	int count, f;
	f = find_0(a);
	for (int u = u_0; u<n+1; u++){
		count = 0;
		for (int j = 0; j<f; j++){
#pragma HLS PIPELINE
			if ((u != a[j]) && (abs(u - a[j]) != (k - j))){
				count = count + 1;
			}
		}
		if (count == k){
			return u;
		}
	}
	return 0;
}

void nqueens(int a[n], int *k, int *u_0, int *sol_list, int *flag)
{
#pragma HLS INTERFACE s_axilite port=flag
#pragma HLS INTERFACE s_axilite port=sol_list
#pragma HLS INTERFACE s_axilite port=u_0
#pragma HLS INTERFACE s_axilite port=k
#pragma HLS INTERFACE s_axilite port=a
#pragma HLS INTERFACE s_axilite port=return
	while (1){
		a[*k] = counter(a, *k, n, *u_0);
		*u_0 = 1;
		if (a[*k] == 0){
			*k = *k - 1;
			if (find_0(a) == 0){
				*flag = 1;
				break;
			}
			*u_0 = a[*k] + 1;
			a[*k] = 0;
			*k = *k - 1;
		}
		*k = *k + 1;
		if (find_0(a) == n){
			*sol_list = *sol_list + 1;
			break;
		}
	}
}
