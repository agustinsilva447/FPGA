#include <stdio.h>
#include<stdbool.h>

#define n 6

void nqueens(int a[n], int k, int u_0, int sol_list, bool flag);

int main()
{
	int a[n], a_0[n];
	int n_0, u, u_0, k, j, sol_list;
	bool flag;

	for (u=0; u<n; u=u++){
		if (u == 0){
			a_0[u] = 1;
		}
		a_0[u] = 0;
		a[u] = a_0[u];
	}

	u_0 = 1;
	k = 1;
	while (not flag) {
		n_0 = 0;
		for (u=0; u<n; u=u++){
			a[u] = a_0[u];
			if (a[u] == 0){
				n_0 = u;
			}
		}
		a_0, u_0, k, sol_list, flag = nqueens(a, k, u_0, n_0, sol_list, flag);
	}

	return 0;
}

