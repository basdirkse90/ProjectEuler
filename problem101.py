import numpy as np

p = np.array([1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1], dtype=np.float64)
x = np.array(range(1, 12), dtype=np.float64)
u = np.polyval(p, x)

ans = 0
for k in range(1,11):
    pfit = np.polyfit(x[0:k], u[0:k], k - 1)
    ans += np.polyval(pfit, x[k])

print(ans)