import networkx as nx
import numpy as np
import matplotlib.pyplot as plt
from scipy.special import expit

def dijkstra_sp(net, paquetes, C_xi):
    source = []
    destin = []
    paths = []
    for i in range(paquetes):
        rng = np.random.default_rng()
        s, d = rng.choice(C_xi.shape[0], size=2, replace=False)
        s_path = nx.dijkstra_path(net, s, d)
        source.append(s)
        destin.append(d)
        paths.append(s_path)
    return source, destin, paths

def delta_kronecker(a, b):
    if a == b:
        return 1
    else:
        return 0

def ixi(u1, u2, u4, u5, C_xi, rho, s, d):
    I = np.zeros(C_xi.shape)
    for x in range(I.shape[0]):
        for i in range(I.shape[1]):
            if (x != i):
                I[x,i] = - (u1 / 2) * C_xi[x, i] * (1 - delta_kronecker(x, d) * delta_kronecker(i, s)) - (u2 / 2) * rho[x, i] * (1 - delta_kronecker(x, d) * delta_kronecker(i, s)) - (u4 / 2) + (u5 / 2) * (delta_kronecker(x, d) * delta_kronecker(i, s))
            else:
                I[x,i] = 0
    return I

def txiyj(u3, u4):
    T = np.zeros([C_xi.shape[0], C_xi.shape[0], C_xi.shape[0], C_xi.shape[0]])
    for x in range(T.shape[0]):
        for i in range(T.shape[1]):
            for y in range(T.shape[2]):
                for j in range(T.shape[3]):
                    T[x,i,y,j] = u4 * delta_kronecker(x, y) * delta_kronecker(i ,j) - u3 * (delta_kronecker(x, y) + delta_kronecker(i, j) - delta_kronecker(j,x) - delta_kronecker(i, y))
    return T

def vxi_1(l, U):
    V = expit(-1 * l * U)
    np.fill_diagonal(V,0)
    return V

def vxi_2(V):
    return np.where(V > 0.5, 1, 0)

def uxi(U, A, B, C, T, V, I):
    U_n2 = np.zeros(C_xi.shape)
    for x in range(U_n2.shape[0]):
        for i in range(U_n2.shape[1]):
            aux = 0
            for y in range(T.shape[2]):
                for j in range(T.shape[3]):
                    if y != j:
                        aux += T[x, i, y, j] * V[y, j]
            #U_n2[x, i] = U[-1][x, i] - A * U[-2][x, i] - B * U[-3][x, i] + C * (aux + I[x, i])
            U_n2[x, i] = U[-1][x, i] - A * U[-2][x, i] + B * aux + C * I[x, i]
    return U_n2

def energia(u1, u2, u3, u4, u5, C_xi, V, rho, d, s):
    E_1 = 0
    E_2 = 0
    E_3 = 0
    E_4 = 0
    for x in range(C_xi.shape[0]):
        E_3_1 = 0
        E_3_2 = 0
        for i in range(C_xi.shape[1]):
            if (x != i):
                if (x, i) != (d, s):
                    E_1 += (u1/2) * C_xi[x, i] * V[x, i]
                    E_2 += (u2/2) * rho[x, i] * V[x, i] 
                E_3_1 += (u3/2) * V[x, i]
                E_3_2 += (u3/2) * V[i, x]
                E_4 += (u4/2) * V[x, i] * (1 - V[x, i])
        E_3 += np.power(E_3_1 - E_3_2, 2)
    E_5 = (u5 / 2) * (1 - V[d, s])
    return (E_1 + E_2 + E_3 + E_4 + E_5)

"""
C_xi = np.array([[0,    0.91, 0.36, 0,    0,     0,    1.2,   0   ],
                 [0.91, 0,    0,    37.5, 0,     0,    0,     1.02],
                 [0.36, 0,    0,    0.47, 0.64,  0,    0,     0   ],
                 [0,    37.5, 0.47, 0,    0,     0.5,  0,     0   ],
                 [0,    0,    0.64, 0,    0,     0.56, 0.425, 0   ],
                 [0,    0,    0,    0.5,  0.56,  0,    0,     0.4 ],
                 [1.2,  0,    0,    0,    0.425, 0,    0,     1.1 ],
                 [0,    1.02, 0,    0,    0,     0.4,  1.1,   0   ]])
u1 = 950
u2 = 2500
u3 = 1500
u4 = 475
u5 = 2500
A = 0.0057
B = 0.0072
C = 0.0064
l = 6
"""

C_xi = np.array([[0,   70,  0,   30,  0,   0],
                [70,  0,   100, 70,  110, 0],
                [0,   100, 0,   120, 40,  80],
                [30,  70,  120, 0,   90,  0],
                [0,   110, 40,  90,  0,   50],
                [0,   0,   80,  0,   50,  0]])   
u1 = 950
u2 = 2500
u3 = 1500
u4 = 475
u5 = 2500
A = 0.0001
B = 0.00001
C = 0.00001
l = 1


net = nx.from_numpy_matrix(C_xi)
paquetes = 10
source, destin, paths = dijkstra_sp(net, paquetes, C_xi)

rho = np.where(C_xi == 0, 1, 0)
T = txiyj(u3, u4)
I = ixi(u1, u2, u4, u5, C_xi, rho, source[0], destin[0])

U = []
U.append(np.zeros(C_xi.shape))
U.append(np.zeros(C_xi.shape))
U.append(np.random.rand(C_xi.shape[0], C_xi.shape[1]))
Energy = []

for it in range(1000):
    V = vxi_1(U[-1], l)
    U.append(uxi(U, A, B, C, T, V, I))
    E_i = energia(u1, u2, u3, u4, u5, C_xi, V, rho, source[0], destin[0])
    Energy.append(E_i)
V = vxi_2(V)

print(C_xi)
print("Origen:", source[0])
print("Destino:", destin[0])
print("Camino más corto:", paths[0])
print(V)

plt.plot(Energy)
plt.show()

#nx.draw(net, with_labels = True)           # graficar red
#plt.show()