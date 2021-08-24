import numpy as np

#n = int(input("Ingrese el tamano del tablero: "))
n = 6
a = np.zeros([1,n])[0]

for k in range(n):
    flag = 0 
    for u in np.arange(1,n+1,1):
        count = 0
        if not flag:
            for j in range(k):
                if ((u != a[j]) and (np.abs(u - a[j]) != (k - j))):
                    count += 1
            if count == k:
                flag = 1
                a[k] = u
        else:
            break
    print(a)                