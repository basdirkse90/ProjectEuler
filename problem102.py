import numpy as np

M = np.loadtxt('p102_triangles.txt', delimiter=',')
n = M.shape[0]

A = M[:, 0:2]
B = M[:, 2:4]
C = M[:, 4:6]

AdotB = np.sum(np.multiply(A, B), axis=1)
AdotC = np.sum(np.multiply(A, C), axis=1)
BdotC = np.sum(np.multiply(B, C), axis=1)

normA = np.linalg.norm(A, ord=2, axis=1)
normB = np.linalg.norm(B, ord=2, axis=1)
normC = np.linalg.norm(C, ord=2, axis=1)

argAB = np.arccos(np.divide(AdotB, np.multiply(normA, normB)))
argAC = np.arccos(np.divide(AdotC, np.multiply(normA, normC)))
argBC = np.arccos(np.divide(BdotC, np.multiply(normB, normC)))

totalAngle = argAB + argAC + argBC
ans = np.count_nonzero(np.abs(totalAngle - 2*np.pi) <= 1e-12)

print(ans)