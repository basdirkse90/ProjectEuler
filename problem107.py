import numpy as np

A = np.loadtxt('p107_network.txt', dtype=int, delimiter=',')
dim = int(A.shape[0])
dims = (dim, dim)
B = np.array(A, dtype=bool)
for i in range(0, dim):
    B[i, i] = True

dist_init = np.sum(A)//2

A_arg = np.argsort(A, axis=None)


for i in range(-1, -dim*dim-1, -1):
    ind = np.unravel_index(A_arg[i], dims)
    if not B[ind]:
        continue
    B[ind] = False
    B[ind[::-1]] = False

    if np.any(np.all(np.linalg.matrix_power(B, dim), axis=0)):
        A[ind] = 0
        A[ind[::-1]] = 0
    else:
        B[ind] = True
        B[ind[::-1]] = True

dist_after = np.sum(A)//2
print(dist_init - dist_after)
