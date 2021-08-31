import numpy as np    
from time import time 

def counter(a, k, n, u_0):
    for u in np.arange(u_0, n + 1, 1):
        count = 0
        for j in range(k):
            if ((u != a[j]) and (np.abs(u - a[j]) != (k - j))):
                count += 1
            else:
                break
        if count == k:
            return u
    return 0

n = int(input("Ingrese el tamano del tablero: "))
a = np.zeros([1, n+1])[0]
iteration = 1
sol_list = 0
flag = 0
u_0 = 1
k = 0

t_1 = time()
while not flag:
    exit = 0
    while not exit:
        a[k] = counter(a, k, n, u_0)
        u_0 = 1
        if a[k] == 0:
            k -= 1
            if k == -1:
                flag = 1
                exit = 1
            u_0 = a[k] + 1
            a[k] = 0
            k -= 1
        k += 1
        if k == n:
            sol_list += 1
            #print('---> SOLUTION NUMBER {} = {}'.format(sol_list, a))
            exit = 1
    iteration += 1
t_tot = time() - t_1
print("----------> Total number of solutions for {} queens: {}. Time execution = {} seg.".format(n, sol_list, t_tot))