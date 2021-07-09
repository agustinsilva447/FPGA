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

def findall(element, matrix):
    result = []
    for i in range(len(matrix)):
        for j in range(len(matrix[i])):
            if matrix[i][j] == element:
                result.append((i, j))
    return result

def list_sp(path):
    compare_paths = []
    for n,m in enumerate(path):
        compare_paths.append((path[n-1], path[n]))
    return compare_paths

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
    V = expit(l * U)
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
def generar_mapa(n1, n2):
    a = 0
    while (np.linalg.matrix_rank(a)!=n1):
        #a = np.random.randint(n2, size=(n1,n1))
        a = n2 * np.random.rand(n1,n1)
        np.fill_diagonal(a,0)
        a = np.tril(a) + np.tril(a, -1).T
    return a
n1 = 8       # cantidad de nodos
n2 = 1       # distancia máxima
C_xi = generar_mapa(n1, n2)
"""

C_xi = np.array([[0,    0.91,  0.36, 0,     0,     0,    1.2,   0   ],
                 [0.91, 0,     0,    0.375, 0,     0,    0,     1.02],
                 [0.36, 0,     0,    0.47,  0.64,  0,    0,     0   ],
                 [0,    0.375, 0.47, 0,     0,     0.5,  0,     0   ],
                 [0,    0,     0.64, 0,     0,     0.56, 0.425, 0   ],
                 [0,    0,     0,    0.5,   0.56,  0,    0,     0.4 ],
                 [1.2,  0,     0,    0,     0.425, 0,    0,     1.1 ],
                 [0,    1.02,  0,    0,     0,     0.4,  1.1,   0   ]])

paquetes = 1
it_max = 100
net = nx.from_numpy_matrix(C_xi)
source, destin, paths = dijkstra_sp(net, paquetes, C_xi)

u1 = 950
u2 = 2500
u3 = 1500
u4 = 475
u5 = 2500
A = 0.0057
B = 0.0072
C = 0.0064
l = 6

rho = np.where(C_xi == 0, 1, 0)
T = txiyj(u3, u4)
I = ixi(u1, u2, u4, u5, C_xi, rho, source[0], destin[0])

U = []
U.append(np.zeros(C_xi.shape))
U.append(np.random.rand(C_xi.shape[0], C_xi.shape[1]))
Energy = []
Energy.append(10000)

print(rho)
print(T)
print(I)

flag = 1
it = 0
while (flag) and (it < it_max):
    it += 1
    V = vxi_1(U[-1], l)
    U.append(uxi(U, A, B, C, T, V, I))
    E_i = energia(u1, u2, u3, u4, u5, C_xi, V, rho, source[0], destin[0])
    if (E_i == Energy[-1]):
        flag = 0
    Energy.append(E_i)
V = vxi_2(V)

print("Origen:", source[0])
print("Destino:", destin[0])
print("Matriz de caminos:\n", C_xi)
print("Matriz de Hopfield:\n", V)
print("Energía final luego de {} iteraciones = {}".format(it, Energy[-1]))
print("---------------")

hopfield_spath = findall(1, V)
dijkstra_spath = list_sp(paths[0])
print("Camino de Hopfield: {}".format(hopfield_spath))
print("Camino de Dijkstra: {}".format(dijkstra_spath))

if len(hopfield_spath)>len(dijkstra_spath):
    coincidencia = 100 * len(set(hopfield_spath).intersection(dijkstra_spath)) / len(hopfield_spath)
else:
    coincidencia = 100 * len(set(dijkstra_spath).intersection(hopfield_spath)) / len(dijkstra_spath)
print("Coincidencia = {}%".format(coincidencia))
print("---------------")

distancia_hopfield = np.zeros(C_xi.shape)
for i in hopfield_spath:
    distancia_hopfield[i[0], i[1]] = 1
dist_hopfield = np.sum(np.multiply(distancia_hopfield, C_xi))
print("Distancia de Hopfield = {}".format(dist_hopfield))

distancia_dijkstra = np.zeros(C_xi.shape)
for i in dijkstra_spath:
    distancia_dijkstra[i[0], i[1]] = 1
dist_dijkstra = np.sum(np.multiply(distancia_dijkstra, C_xi))
print("Distancia de Dijkstra = {}".format(dist_dijkstra))

if dist_dijkstra < dist_hopfield:
    accuracy = dist_dijkstra / dist_hopfield
else:
    accuracy = dist_hopfield / dist_dijkstra
print("Accuracy = {}".format(accuracy))
print("---------------")

fig = plt.figure(figsize=(12, 5))
plt.subplot(121)
nx.draw(net, with_labels = True)
plt.subplot(122)
plt.plot(Energy)
plt.show()