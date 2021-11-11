import os
import numpy as np

f = open ('/home/agustinsilva447/Descargas/numeros_data_golden.txt','r')
text = f.read()
f.close()

text = os.linesep.join([s for s in text.splitlines() if s])
text = [np.binary_repr(int(s), width=32) for s in text.splitlines()]
text = "".join(text)

print(text)

#text_file = open("binario_data_golden.txt", "wt")
#n = text_file.write(text)
#text_file.close()