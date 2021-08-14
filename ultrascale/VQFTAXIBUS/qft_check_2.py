import numpy as np
import matplotlib.pyplot as plt
from tqdm import tqdm
from time import time

Q_list = np.arange(1, 11, 1)
t = []
for Q in tqdm(Q_list):
    M = np.power(2,Q)
    E = np.zeros([M, 1])
    F = np.zeros([M, M])
    S = np.zeros([M, 1])
    E[0] = 1

    t_0 = time()    
    F = [[np.power(np.e, 2 * np.pi * 1j * j * k / M) for j in range(M)] for k in range(M)] / np.sqrt(M)
    S = np.dot(F, E)
    t_1 = (time() - t_0)
    t.append(t_1)

print("Valores de qubits:", Q_list)
print("Valores de tiempo:", t)
plt.plot(Q_list, t)
plt.show()

"""print("\nENTRADA:")
print(E)
print("\nSALIDA:")
print(S)"""