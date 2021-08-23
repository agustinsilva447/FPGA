import numpy as np    
import matplotlib.pyplot as plt  
from time import time 

def counter(a, k, n, u_0):
    for u in np.arange(u_0, n + 1, 1):
        count = 0
        for j, a_j in enumerate(a):
            if ((u != a_j) and (np.abs(u - a_j) != (k - j))):
                count += 1
        if count == k:
            return u
    else:
        return 0

def block(a, k, n, u_0, sol_list, flag):
    while (1):
        a.append(counter(a, k, n, u_0))
        u_0 = 1
        if a[-1] == 0:
            a.pop()
            k -= 1
            if not a:
                flag = 1
                return a, u_0, k, sol_list, flag
            u_0 = a[-1] + 1
            a.pop()
            k -= 1
        k += 1
        #print(a)
        if len(a) == n:
            sol_list.append(np.copy(a))
            #print('---> SOLUTION NUMBER {}'.format(len(sol_list)))
            return a, u_0, k, sol_list, flag

tiempos = []
n_max = int(input("Ingrese el maximo del tablero: "))
for n in range(n_max):
    sol_list = []
    flag = 0
    a_0 = [1]
    u_0 = 1
    k = 1
    t_1 = time()
    while not flag:
        a = a_0
        a_0, u_0, k, sol_list, flag = block(a, k, n, u_0, sol_list, flag)
    t_tot = time() - t_1
    tiempos.append(t_tot)
    print("Solutions: {}".format(sol_list))
    print("Total number of solutions for {} queens: {}".format(len(sol_list), n))

print(tiempos)
plt.plot(tiempos)
plt.show()