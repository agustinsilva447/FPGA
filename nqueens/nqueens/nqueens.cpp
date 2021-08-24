#include<stdbool.h>
#include <stdlib.h>

#define n 6

void nqueens(int a[n], int k, int u_0, int n_0, int sol_list, bool flag)
{
	int count;
	while (1) {
		for (int u = 1; u<n; u=u++){
			count = 0;
			for (int j = 0; j<n_0; j=j++){
				if ((u != a[j]) and (abs(u - a[j]) != (k - j))){
					count = count + 1;
				}
			}
			if (count == k){
				a[n_0] = u;
			}
		}
	}
}
