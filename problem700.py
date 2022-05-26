from collections import OrderedDict

from commonTools import time_function


def main():
    p = 4503599627370517
    e = 1504170715041707

    remainders = OrderedDict()
    remainders[1] = e

    i = 1
    rmin = e

    total = e

    while rmin > 1:
        for n, r in remainders.items():
            a = i*e % p
            i = i + ((p-a) // r) * n
            next_r = (i+n) * e % p
            if next_r < rmin:
                i += n
                remainders[i] = next_r
                rmin = next_r
                total += rmin
                break
        # print(remainders)
    print(f"Answer  = {total}")


if __name__ == "__main__":
    time_function(main)
