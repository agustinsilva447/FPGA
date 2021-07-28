import numpy as np
import matplotlib.pyplot as plt

from time import time
from tqdm import tqdm
from scipy.special import expit

def vxi_1(l, U):
    V = np.zeros(U.shape)
    for x in range(U.shape[0]):
        for i in range(U.shape[1]):
            if x==i:
                V[x,i] = 0
            else:
                V[x,i] = 1 / (1 + np.exp(-1 * U[x,i] * l))
    return V

def vxi_2(l, U):
    V = expit(l * U)
    np.fill_diagonal(V,0)
    return V

n1_list = np.arange(2, 1000, 1)
n2 = 1
l = 6
t_num = []
t_sci = []

U = n2 * np.random.rand(1,1)
V = vxi_1(l, U)
V = vxi_2(l, U)

for n1 in tqdm(n1_list):
    U = n2 * np.random.rand(n1,n1)    
    
    #t_0 = time()
    #V = vxi_1(l, U)
    #t_ntot = (time() - t_0)
    #t_num.append(t_ntot)
    
    t_0 = time()
    V = vxi_2(l, U)
    t_stot = (time() - t_0)
    t_sci.append(t_stot)

#print("Tiempo final de numpy = {}".format(t_ntot))
print("Tiempo final de scipy = {}".format(t_stot))

fig, axs = plt.subplots(1, 2, figsize=(12, 5))
axs[0].plot(t_num, "r")
axs[0].set_title("Numpy")
axs[0].set_xlabel("Nodes (number)")
axs[0].set_ylabel("Time")
axs[1].plot(t_sci, "g")
axs[1].set_title("Scipy")
axs[1].set_xlabel("Nodes (number)")
axs[1].set_ylabel("Time")
plt.show()