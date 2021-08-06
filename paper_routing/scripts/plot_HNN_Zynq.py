import math
import numpy as np
import matplotlib.pyplot as plt

from time import time
from tqdm import tqdm
from scipy.special import expit

def vxi_0(l, U):
    V = np.zeros(U.shape)
    for x in range(U.shape[0]):
        for i in range(U.shape[1]):
            if x==i:
                V[x,i] = 0
            else:
                V[x,i] = 1 / (1 + math.e**(-1 * U[x,i] * l))
    return V
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

"""
laten = np.array([         37,    41,    47,    55,    65,    77,    91,    107,   125,   145,   167,  
                    191,   217,   245,   275,   307,   341,   377,   415,   455,   497,   541,   587,   
                    635,   685,   737,   791,   847,   905,   965,   1027,  1091,  1157,  1225,  1295])
                    
lut   = np.array([         3113,  3391,  3714,  4165,  4675,  5267,  5973,  6801,  7688,  8741,  9879, 
                    11059, 12343, 13719, 15353, 17091, 18761, 20529, 22400, 24364, 26429, 28393, 29954, 
                    31538, 33191, 34907, 36692, 38540, 40457, 42440, 44486, 46601, 48782, 51029, 53339])  
"""                    
laten = np.array([         64,    68,    74,    82,    92,    104,   118,   134,   152,   172,   194,  
                    218,   244,   272,   302,   334,   368,   404,   442,   482,   524,   568,   614,
                    662,   712,   764,   818,   874,   992,   1054,  1118,  1184])
                    
lut   = np.array([         8911,  9189,  9521,  10025, 10559, 11163, 11869, 12713, 13607, 14623, 15761, 
                    16941, 18219, 19675, 21229, 22961, 24631, 26399, 28265, 30229, 32235, 34147, 35705,
                    37289, 38938, 40655, 42437, 44285, 48179, 50225, 52337, 54515])                    
nodes_h = np.arange(2, len(laten)+2, 1)

l = 6
t_num = []
t_sci = []
U = np.random.rand(1,1)
V = vxi_1(l, U)
V = vxi_2(l, U)
it = 1

nodes_s = np.arange(2, 500, 1)

for n1 in tqdm(nodes_h):
    t_ntot = 0
    t_stot = 0
    for n2 in range(it):
        U = np.random.rand(n1,n1)    
        #numpy
        t_0 = time()
        V = vxi_0(l, U)
        t_ntot += (time() - t_0)
        #scipy    
        t_0 = time()
        V = vxi_2(l, U)
        t_stot += (time() - t_0)
    t_num.append(t_ntot/it)
    t_sci.append(t_stot/it)

fig, axs = plt.subplots(2, 2, figsize=(12, 12))
axs[0, 0].plot(nodes_h, laten, "r-o")
axs[0, 0].set_title("HNN FPGA Latency")
#axs[0, 0].set_xlabel("Nodes (number)")
axs[0, 0].set_ylabel("Latency (cycles)")
axs[0, 1].plot(nodes_h, lut, "g-o")
axs[0, 1].set_title("HNN FPGA LUTs")
#axs[0, 1].set_xlabel("Nodes (number)")
axs[0, 1].set_ylabel("LUTs (number)")
axs[1, 0].plot(nodes_h, t_num, "b-o")
axs[1, 0].set_title("HNN Numpy")
axs[1, 0].set_xlabel("Nodes (number)")
axs[1, 0].set_ylabel("Time")
axs[1, 1].plot(nodes_h, t_sci, "c-o")
axs[1, 1].set_title("HNN Scipy")
axs[1, 1].set_xlabel("Nodes (number)")
axs[1, 1].set_ylabel("Time")
plt.show()