import numpy as np
import matplotlib.pyplot as plt  
from scipy.special import factorial

n = np.arange(0,171,1)
#a = 6.012 * np.power(10.0,-11)
#b = 2.353
#a_0 = np.array([1, 1, 0, 0, 2, 10, 4, 40, 92, 352, 724, 2680, 14200, 73712, 365596, 2279184, 14772512, 95815104, 666090624, 4968057848, 39029188884, 314666222712, 2691008701644, 24233937684440, 227514171973736, 2207893435808352, 22317699616364044, 234907967154122528])
a_1 = (factorial(n))/(np.power(np.e, 0.9*n))
#a_2 = a * np.power(np.e, b * n)

#print(a_0[27])
print(a_1[-1])
#print(a_2[-1])

#plt.plot(np.log(a_0), label = 'real')
plt.plot(np.log(a_1), label = 'conjecture')
#plt.plot(np.log(a_2), label = 'matlab')
plt.legend()
plt.show()