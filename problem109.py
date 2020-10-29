import numpy as np
from itertools import takewhile, combinations_with_replacement
import time

t0 = time.time()

singles = np.append(np.arange(1, 21), 25)
doubles = singles*2
triples = np.delete(singles*3, -1)
all_fields = np.concatenate((singles, doubles, triples))

res = 0
for n in range(2, 100):
    for d1 in takewhile(lambda x: x <= n, doubles):
        remainder = n - d1

        count = sum([i + j == remainder for i, j in combinations_with_replacement(all_fields, 2)]) + \
                sum(i == remainder for i in all_fields) + \
                int(remainder == 0)

        res += count

print("Answer = {}".format(res))
print("Total computation took {:.3f} (s)".format(time.time()-t0))
