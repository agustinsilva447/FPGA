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
            if x == i:
                I[x,i] = 0
            else:
                I[x,i] = - (u1 / 2) * C_xi[x, i] * (1 - delta_kronecker(x, d) * delta_kronecker(i, s)) - (u2 / 2) * rho[x, i] * (1 - delta_kronecker(x, d) * delta_kronecker(i, s)) - (u4 / 2) + (u5 / 2) * (delta_kronecker(x, d) * delta_kronecker(i, s))
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

def uxi(U_n1, U_n0, A, B, C, T, V, I):
    U_n2 = np.zeros(C_xi.shape)
    for x in range(U_n2.shape[0]):
        for i in range(U_n2.shape[1]):
            aux = 0
            for y in range(T.shape[2]):
                for j in range(T.shape[3]):
                    if y == j:
                        aux = 0
                    else:
                        aux = T[x, i, y, j] * V[y, j]
            U_n2[x, i] = U_n1[x, i] - A * U_n0[x, i] + B * aux + C * I[x, i]
    return U_n2, U_n1

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

net = nx.from_numpy_matrix(C_xi)
paquetes = 10
source, destin, paths = dijkstra_sp(net, paquetes, C_xi)

rho = np.where(C_xi == 0, 1, 0)
T = txiyj(u3, u4)
I = ixi(u1, u2, u4, u5, C_xi, rho, source[0], destin[0])

U_n1 = np.random.rand(C_xi.shape[0], C_xi.shape[1])
U_n0 = np.copy(U_n1)

for it in range(50):
    V = vxi_1(U_n1, l)
    U_n1, U_n0 = uxi(U_n1, U_n0, A, B, C, T, V, I)
    # CALCULAR ENERGÍA
V = vxi_2(V)

print(C_xi)
print("Origen:", source[0])
print("Destino:", destin[0])
print("Camino más corto:", paths[0])
print(V)

"""
print(rho.shape)
print(V.shape)
print(I.shape)
print(T.shape)
print(U_n0.shape)
print(U_n1.shape)
"""

#nx.draw(net, with_labels = True)           # graficar red
#plt.show()