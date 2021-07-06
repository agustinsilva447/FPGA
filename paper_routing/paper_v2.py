import networkx as nx
import numpy as np
import matplotlib.pyplot as plt

w = np.array([[0,   70,  0,   30,  0,   0],
              [70,  0,   100, 70,  110, 0],
              [0,   100, 0,   120, 40,  80],
              [30,  70,  120, 0,   90,  0],
              [0,   110, 40,  90,  0,   50],
              [0,   0,   80,  0,   50,  0]])

net = nx.from_numpy_matrix(w)
paths = []
paquetes = 10

for i in range(paquetes):
    rng = np.random.default_rng()
    source, destin = rng.choice(w.shape[0], size=2, replace=False)
    s_path = nx.dijkstra_path(net, source, destin)
    paths.append(s_path)

print(w)
print(paths)

u1 = 950
u2 = 2500
u3 = 1500
u4 = 475
u5 = 2500
A = 0.0001
B = 0.00001
C = 0.00001
l = 1

#nx.draw(net, with_labels = True)           # graficar red
#plt.show()