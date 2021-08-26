#include <stdio.h>
#define n 8

void nqueens(int a[n], int *k, int *u_0, int *sol_list, int *flag);

int main()
{
	int a[n];
	int u_0 = 1, k = 0, sol_list = 0, iteration = 1, flag = 0;

	for (int x=0; x<n; x++){
		a[x] = 0;
	}

	while ((!flag) && (iteration < 100)){
		nqueens(a, &k, &u_0, &sol_list, &flag);
    	iteration = iteration + 1;
	}

	printf("Number of solutions for %d queens: %d.\n", n, sol_list);
	return 0;
}
