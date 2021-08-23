import numpy as np       

#n = int(input("Ingrese el tamano del tablero: "))
n = 6
a = np.zeros([1,n])[0]
k = 0
while (k<n):
    flag = 0 
    for u in np.arange(1,n+1,1):
        count = 0
        if not flag:
            for j in range(k):
                if ((u != a[j]) and (np.abs(u - a[j]) != (k - j))):
                    count += 1
            if count == k:
                flag = 1
                a[k] = np.copy(u)
        else:
            break
    if a[k] == 0:
        k -= 1
        if a[k] == n:
            a[k] = 0
            k -= 2
        else:
            a[k] += 1
            k -= 1
    k +=1
    print(a)