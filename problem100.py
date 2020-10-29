import math
import time

t0 = time.time()

p = 3
q = 2

is_x = True

n = 0

while n < 1e12:
    qnew = p + q
    pnew = p + 2*q

    x = p * qnew
    n = p * pnew
    if not is_x:
        x += 1
        n += 1

    p = pnew
    q = qnew
    is_x = not is_x

print("{}/{} * {}/{} = 1/2".format(x, n, x-1, n-1))
print("Answer = {}".format(x))
print()
print("Total computation took {:.3f} (s)".format(time.time()-t0))



