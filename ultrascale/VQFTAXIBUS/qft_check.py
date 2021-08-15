import numpy as np

Q = 4
M = np.power(2,Q)

E = np.zeros([2*M, 1])
E[0]   = 1
E[0+M] = 0

S = np.zeros([2*M, 1])
for j in range(M):
    S[j]   = 0
    S[j+M] = 0
    for k in range(M):
        m = np.cos(2*np.pi*j*k/M)/np.sqrt(M)
        n = np.sin(2*np.pi*j*k/M)/np.sqrt(M)
        S[j]   = S[j]   + (m)   *   E[k]   - (n)   *   E[k+M]
        S[j+M] = S[j+M] + (m)   *   E[k+M] + (n)   *   E[k]

print("\nENTRADA:")
for j in range(M):
    print("{} + j {}".format(E[j][0], E[j+M][0]))
print("\nSALIDA:")
for j in range(M):
    print("{} + j {}".format(S[j][0], S[j+M][0]))