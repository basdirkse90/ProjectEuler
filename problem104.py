from math import sqrt, log10
all_digits = set('123456789')


def is_pandigital(n):
    return set(str(n).zfill(9)) == all_digits


def generate_fibonacci_mod(mod):
    Fnm1, Fnm2 = 1, 1
    yield 1, 1
    yield 2, 1
    n = 3
    while True:
        Fn = (Fnm1 + Fnm2) % mod
        yield n, Fn

        Fnm2 = Fnm1
        Fnm1 = Fn
        n += 1


for n, Fn in generate_fibonacci_mod(int(1e9)):
    if is_pandigital(Fn):
        phi = (1+sqrt(5))/2

        logFn = n*log10(phi) - log10(sqrt(5))
        first_digits = int(10 ** (8 + logFn % 1))

        if is_pandigital(first_digits):
            print(n)
            break
