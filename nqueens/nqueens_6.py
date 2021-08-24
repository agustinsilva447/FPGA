import numpy as np       

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

def block(a, k, n, u_0, sol_list):
    while (1):
        a.append(counter(a, k, n, u_0))
        u_0 = 1
        if a[-1] == 0:
            a.pop()
            k -= 1
            if not a:
                break
            u_0 = a[-1] + 1
            a.pop()
            k -= 1
        k += 1
        print(a)
        if len(a) == n:
            sol_list.append(a)
            print('---> SOLUTION NUMBER {}'.format(len(sol_list)))
            break


n = int(input("Ingrese el tamano del tablero: "))
sol_list = []

for a_0 in np.arange(1, n+1, 1):
    a = [a_0]
    u_0 = 1
    k = 1
    block(a, k, n, u_0, sol_list)

print("Solutions: {}".format(sol_list))
print("Total number of solutions: {}".format(len(sol_list)))