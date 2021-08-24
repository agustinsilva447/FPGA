import numpy as np    

def counter(a, k, n, u_0):
    for u in np.arange(u_0, n + 1, 1):
        count = 0
        for j, a_j in enumerate(a):
            if ((u != a_j) and (np.abs(u - a_j) != (k - j))):
                count += 1
        if count == k:
            return u
    return 0

def block(a, k, n_0, u_0, sol_list, flag):
    while (1):
        a[n_0] = counter(a, k, n, u_0)
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
        print(a)
        if len(a) == n:
            sol_list += 1
            print('---> SOLUTION NUMBER {}'.format(sol_list))
            return a, u_0, k, sol_list, flag

n = 6
a = np.zeros([1, n])[0]
n_0 = 1
u_0 = 1
k = 1
sol_list = 0
iteration = 0
flag = 0

while not flag:
    a, k, n_0, u_0, sol_list, flag = block(a, k, n_0, u_0, sol_list, flag)
    iteration += 1
    print("Number of iterations: {}".format(iteration))

print("----------> Total number of solutions for {} queens: {}".format(n, sol_list))