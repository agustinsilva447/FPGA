function [T] = nqueens_test(n)
T = zeros(1,n);
for i=2:n    
    [solutions, T(i)] = nqueens(i);
    fprintf("La cantidad de soluciones para %d reinas = %d. Time execution = %f seg.\n", i, solutions, T(i))
end
plot(T)