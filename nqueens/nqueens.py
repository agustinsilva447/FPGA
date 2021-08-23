import numpy as np

n = int(input("Ingrese el tamano del tablero: "))
a = np.zeros([1,n])[0]
n_sol = 0

for k in range(n):
    print("k: ", k)
    flag = 0
    for j in range(k+1):
        print("j: ", j)
        u = 1
        while (u == a[j]) or (np.abs(u - a[j]) == (k - j)):
            #print("a: ", a)
            print("u: ", u)
            u += 1
            if u == (n+1):
                break
        if u == (n+1):
            flag = 1
    if flag:
        a[k] = u   
        print("a: ", a)
        print("RE PIOLA AMIGUITO!!!!!!!!!!!!")   
    print("flag", flag)
    print("-------------------------")
print("La cantidad de soluciones posibles son {}".format(n_sol))