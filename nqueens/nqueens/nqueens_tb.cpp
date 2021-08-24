#include <stdio.h>
#include <stdbool.h>
#define n 6

void nqueens(int a[n], int k, int n_0, int u_0, int sol_list, bool flag);

int main()
{
	int a[n];
	int n_0 = 1, u_0 = 1, k = 1, sol_list = 0, iteration = 0;
	bool flag = 0;

	for (int x=0; x<n; x++){
		if (x == 0){
			a[x] = 1;
		} else {
			a[x] = 0;
		}
	}

	while (not flag){
		nqueens(a, k, n_0, u_0, sol_list, flag);
		iteration = iteration + 1;
		printf("Iteration number: ", iteration);
	}

	printf("Number of solutions: ", sol_list);
	return 0;
}
