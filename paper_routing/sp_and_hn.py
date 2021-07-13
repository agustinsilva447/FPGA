import networkx as nx
import numpy as np
import matplotlib.pyplot as plt

######################
print("---> SHORTEST PATH:")

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

#nx.draw(net1, with_labels = True)           # graficar red
#plt.show() 

######################
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