import numpy as np
import matplotlib.pyplot as plt

"""
laten = np.array([         37,    41,    47,    55,    65,    77,    91,    107,   125,   145,   167,  
                    191,   217,   245,   275,   307,   341,   377,   415,   455,   497,   541,   587,   
                    635,   685,   737,   791,   847,   905,   965,   1027,  1091,  1157,  1225,  1295])
                    
lut   = np.array([         3113,  3391,  3714,  4165,  4675,  5267,  5973,  6801,  7688,  8741,  9879, 
                    11059, 12343, 13719, 15353, 17091, 18761, 20529, 22400, 24364, 26429, 28393, 29954, 
                    31538, 33191, 34907, 36692, 38540, 40457, 42440, 44486, 46601, 48782, 51029, 53339])  
"""                    
laten = np.array([         37,    41,    47,    55,    65,    77,    91,    107,   125,   145,   167,  
                    191,   217,   245,   275,   307,   341,   377,   415,   455,   497,   541,   587,   
                    635,   685,   737,   791,   847,   905,   965,   1027,  1091,  1157,  1225,  1295])
                    
lut   = np.array([         3113,  3391,  3714,  4165,  4675,  5267,  5973,  6801,  7688,  8741,  9879, 
                    11059, 12343, 13719, 15353, 17091, 18761, 20529, 22400, 24364, 26429, 28393, 29954, 
                    31538, 33191, 34907, 36692, 38540, 40457, 42440, 44486, 46601, 48782, 51029, 53339])                    
nodes = np.arange(2, len(laten)+2, 1)

fig, axs = plt.subplots(1, 2, figsize=(12, 5))
axs[0].plot(nodes, laten, "r-o")
axs[0].set_title("Latency vs Nodes")
axs[0].set_xlabel("Nodes (number)")
axs[0].set_ylabel("Latency (cycles)")
axs[1].plot(nodes, lut, "g-o")
axs[1].set_title("LUTs vs Nodes")
axs[1].set_xlabel("Nodes (number)")
axs[1].set_ylabel("LUTs (number)")
#axs[2].plot(lut, laten, "b-o")
#axs[2].set_title("Latency vs LUTs")
#axs[2].set_xlabel("LUTs (number)")
#axs[2].set_ylabel("Latency (cycles)")
plt.show()