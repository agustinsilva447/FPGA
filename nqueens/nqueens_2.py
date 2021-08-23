import numpy as np
n = int(input("Ingrese el tamano del tablero: "))
a = np.zeros([1,n])[0]
n_sol = 0

for a_0 in np.arange(1,n+1,1):
    a[0] = a_0
    for k in np.arange(1,n,1):
        for u in np.arange(1,n+1,1):
            for j in range(k+1):
                if (u==a[j]) or (np.abs(u-a[j])==(k-j)):
                    break
                if (j==k):
                    a[k] = u
    print(a)