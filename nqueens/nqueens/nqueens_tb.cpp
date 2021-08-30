#include <stdio.h>
int nqueens();

int main()
{
	int total_sol;
	total_sol = nqueens();
	printf("Number of solutions: %d.\n", total_sol);
	return 0;
}
