import time

def prime_factors(n):
    i = 2
    factors = []
    while i * i <= n:
        if n % i:
            i += 1
        else:
            n //= i
            factors.append(i)
    if n > 1:
        factors.append(n)
    return factors


def time_function(func, *args, **kwargs):
    t1 = time.time()
    func(*args, **kwargs)
    elapsed = time.time() - t1
    print(f"Total computation took {elapsed:.3f} (s)")

