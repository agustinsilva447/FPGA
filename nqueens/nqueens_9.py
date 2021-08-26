import numpy as np    

def find_0(a, n):
    for i in range(n):
        if a[i] == 0:
            return i
    return n

def counter(a, k, n, u_0):
    f = find_0(a, n)
    for u in np.arange(u_0, n + 1, 1):
        count = 0
        for j in range(f):
            if ((u != a[j]) and (np.abs(u - a[j]) != (k - j))):
                count += 1
        if count == k:
            return u
    return 0

def block(a, k, u_0, sol_list, flag):
    while (1):
        a[k] = counter(a, k, n, u_0)
        u_0 = 1
        if a[k] == 0:
            k -= 1
            if find_0(a, n) == 0:
                flag = 1
                return a, k, u_0, sol_list, flag
            u_0 = a[k] + 1
            a[k] = 0
            k -= 1
        k += 1
        #print(a)
        if find_0(a, n) == n:
            sol_list += 1
            #print('---> SOLUTION NUMBER {}'.format(sol_list))
            return a, k, u_0, sol_list, flag

n = int(input("Ingrese el tamano del tablero: "))
a = np.zeros([1, n+1])[0]
iteration = 1
sol_list = 0
flag = 0
u_0 = 1
k = 0

while not flag:
    a, k, u_0, sol_list, flag = block(a, k, u_0, sol_list, flag)
    print("Number of iterations: {}".format(iteration))
    iteration += 1

print("----------> Total number of solutions for {} queens: {}".format(n, sol_list))