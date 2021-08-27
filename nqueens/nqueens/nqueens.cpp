#include <stdlib.h>
#define n 8

int counter(int a[n], int k, int u_0)
{
	int count, f;
	for (int u = u_0; u<n+1; u++){
		count = 0;
		for (int j = 0; j<k; j++){
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
	int exit = 0;
	while (!exit){
		a[*k] = counter(a, *k, *u_0);
		*u_0 = 1;
		if (a[*k] == 0){
			*k = *k - 1;
			if (*k == -1){
				*flag = 1;
				exit = 1;
			}
			*u_0 = a[*k] + 1;
			a[*k] = 0;
			*k = *k - 1;
		}
		*k = *k + 1;
		if (*k == n){
			*sol_list = *sol_list + 1;
			exit = 1;
		}
	}
}
