import networkx as nx
import numpy as np
import matplotlib.pyplot as plt

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

def vxi_1(l, U):
    V = 1 / (1 + np.exp(-1 * l * U))
    np.fill_diagonal(V,0)
    return V

def delta_kronecker(a, b):
    if a == b:
        return 1
    else:
        return 0

def ixi(u1, u2, u4, u5, C_xi, rho, s, d):
    for x in range(I.shape[0]):
        for i in range(I.shape[1]):
            if x == i:
                I[x,i] = 0
            else:
                I[x,i] = - (u1 / 2) * C_xi[x, i] * (1 - delta_kronecker(x, d) * delta_kronecker(i, s)) - (u2 / 2) * rho[x, i] * (1 - delta_kronecker(x, d) * delta_kronecker(i, s)) - (u4 / 2) + (u5 / 2) * (delta_kronecker(x, d) * delta_kronecker(i, s))
    return I

C_xi = np.array([[0,    0.91, 0.36, 0,    0,     0,    1.2,   0   ],
                 [0.91, 0,    0,    37.5, 0,     0,    0,     1.02],
                 [0.36, 0,    0,    0.47, 0.64,  0,    0,     0   ],
                 [0,    37.5, 0.47, 0,    0,     0.5,  0,     0   ],
                 [0,    0,    0.64, 0,    0,     0.56, 0.425, 0   ],
                 [0,    0,    0,    0.5,  0.56,  0,    0,     0.4 ],
                 [1.2,  0,    0,    0,    0.425, 0,    0,     1.1 ],
                 [0,    1.02, 0,    0,    0,     0.4,  1.1,   0   ]])

net = nx.from_numpy_matrix(C_xi)
paquetes = 10
source, destin, paths = dijkstra_sp(net, paquetes, C_xi)

print(C_xi)
print(paths)

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
#print(rho)

U = np.zeros(C_xi.shape)
I = np.zeros(C_xi.shape)

V = vxi_1(U, l)
I = ixi(u1, u2, u4, u5, C_xi, rho, source[0], destin[0])

#nx.draw(net, with_labels = True)           # graficar red
#plt.show()