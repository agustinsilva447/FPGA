import networkx as nx
import numpy as np
import matplotlib.pyplot as plt
import copy

def generar_mapa():
    a = 0
    while (np.linalg.matrix_rank(a)!=n1):
        a = np.random.randint(n3, size=(n1,n1))
        np.fill_diagonal(a,0)
        a = np.tril(a) + np.tril(a, -1).T
    return a

n1 = 5                                      # cantidad de ciudades
n3 = 2                                      # distancia máxima

a = generar_mapa()                          # genero matriz
net1 = nx.from_numpy_matrix(a)
p = nx.dijkstra_path(net1, 0, 1)

print(a)
print(p)

nx.draw(net1, with_labels = True)           # graficar red
plt.show() 