import numpy as np
import networkx as nx
import matplotlib.pyplot as plt
from time import time
from tqdm import tqdm

print("---> SHORTEST PATH:")

def generar_mapa(n1, n2, p):
    a = 0
    while (np.linalg.matrix_rank(a)!=n1):
        a = n2 * np.random.rand(n1,n1)
        np.fill_diagonal(a,0)
        a = np.tril(a) + np.tril(a, -1).T
        a = np.where(a < (p * n2), a, 0)
    return a

def dijkstra_sp(net, paquetes, C_xi_shape):
    source = []
    destin = []
    paths = []
    for i in range(paquetes):
        rng = np.random.default_rng()
        s, d = rng.choice(C_xi_shape, size=2, replace=False)
        tiempo_begin = time()
        s_path = nx.dijkstra_path(net, s, d)
        tiempo_prom = (time() - tiempo_begin) / paquetes
        source.append(s)
        destin.append(d)
        paths.append(s_path)
    return source, destin, paths, tiempo_prom

desde = 10
hasta = 500
print("Total de iteraciones: {}.".format(int(hasta/desde)-1))
n1_list = np.arange(desde, hasta, desde)    # cantidad de nodos
n2 = 1                                      # distancia máxima
p = 0.5                                     # probabilidad de cerrar camino
temp = np.zeros(n1_list.shape)
paquetes = 1
iteraciones = 10


for t, n1 in tqdm(enumerate(n1_list)):
    print("\n\nCálculo de tiempo del Shortest Path para {} nodos.".format(n1))
    for it in tqdm(range(iteraciones)):
        C_xi = generar_mapa(n1, n2, p)
        net = nx.from_numpy_matrix(C_xi)
        source, destin, paths, tiempo = dijkstra_sp(net, paquetes, C_xi.shape[0])
        temp[t] += tiempo
    print("\nTotal de iteraciones: {}/{}.".format(t+1, int(hasta/desde)-1))

#print(np.round(C_xi, 3))
print("Origines: {}".format(source))
print("Destinos: {}".format(destin))
print("Caminos: {}".format(paths))
#print("Tiempo promedio en calcular tiempos: {}".format(tiempo))

plt.plot(n1_list, (temp/iteraciones))
plt.show()

#nx.draw(net, with_labels = True)           # graficar red
#plt.show() 

"""
print("---> HOPFIELD NETWORK:")

n = 500
p = 10
print("NEURONAS: {}. PATRONES: {}.".format(n, p))

patrones = np.random.choice([1, -1], size=[p,n])
w = np.zeros((n, n))
for p_i in range(p):
    w += np.dot(patrones[p_i].reshape(-1,1),np.transpose(patrones[p_i].reshape(-1,1)))
np.fill_diagonal(w,0)
w /= n

j = 0
j_lim = 100
r_aux = np.copy(patrones)
while (j<j_lim):
    reconstruido = np.sign(np.dot(r_aux,w))
    reconstruido = np.where(reconstruido==0, 1, reconstruido)
    if (reconstruido==r_aux).all():
        print("Convergió con {} iteraciones. ".format(j+1), end='')
        break
    else:
        r_aux = np.copy(reconstruido)
        j += 1
if j==j_lim:
    print("No convergió. ", end='')

m = 0
for k in range(p):    
    m += np.dot(patrones[k], reconstruido[k].T)
m = m / (n * p)
print("<m> = {}.".format(m))
"""