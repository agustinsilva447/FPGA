import os
import numpy as np
import matplotlib.pyplot as plt

f = open ('/home/agustinsilva447/Descargas/numeros_data_golden.txt','r')
text = f.read()
f.close()

text = os.linesep.join([s for s in text.splitlines() if s])
text = np.array([int(s) for s in text.splitlines()])

plt.hist(text, bins=np.power(2,12))
plt.show()