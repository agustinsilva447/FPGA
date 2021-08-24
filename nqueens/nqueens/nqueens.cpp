#include <stdbool.h>
#include <stdlib.h>
#define n 6

int counter(int a[n], int k, int n_0, int u_0)
{
	int count;
	for (int u = u_0; u<n; u++){
		count = 0;
		for (int j = 0; j<n_0; j++){
			if ((u != a[j]) and (abs(u - a[j]) != (k - j))){
				count = count + 1;
			}
		}
		if (count == k){
			return u;
		}
	}
	return 0;
}

void nqueens(int a[n], int k, int n_0, int u_0, int sol_list, bool flag)
{
	while (1){
		a[n_0] = counter(a, k, n_0, u_0);
		u_0 = 1;
		if (a[n_0] == 0){
			n_0 = n_0 - 1;
			k = k - 1;
			if (n_0 == 0){
				flag = 1;
				break;
			}
			u_0 = a[n_0] + 1;
			a[n_0] = 0;
			n_0 = n_0 - 1;
			k = k - 1;
		}
		k = k + 1;
		if (n_0 == n){
			sol_list = sol_list + 1;
			break;
		}
	}
}
