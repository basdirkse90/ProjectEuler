from typing import List
import math

from commonTools import time_function


def allowed_partitions(d: int) -> List[List[int]]:

    def build_partitions_recursively(cur_d: int):
        for i in range(1, cur_d):
            yield [i, cur_d - i]
            for sub_part in build_partitions_recursively(cur_d - i):
                yield [i] + sub_part

    max_sz = d // 2 + d % 2

    res = [part for part in build_partitions_recursively(d) if max_sz - 1 <= max(part) <= max_sz]

    return res


def is_s_number(sqrt_n: int, partitions) -> bool:
    n = sqrt_n ** 2
    n_str = str(n)

    for p in partitions:
        res = 0
        i = 0
        for offset in p:
            res += int(n_str[i:i+offset])
            i += offset
        if res == sqrt_n:
            return True
    return False


def sum_all_d_digit_s_numbers(d: int) -> int:
    res = 0

    partitions = allowed_partitions(d)
    if d % 2 == 0:
        r = range(int(math.ceil(math.sqrt(10 ** (d-1)))), 10 ** (d // 2))
    else:
        r = range(10 ** ((d-1) // 2), int(math.ceil(math.sqrt(10 ** d))))
    for sqrt_n in r:
        if is_s_number(sqrt_n, partitions):
            res += (sqrt_n ** 2)
    return res


def main(d_max: int = 4):
    res = 0
    for d in range(2, d_max+1):
        print(f"d={d}")
        res += sum_all_d_digit_s_numbers(d)
    if d_max % 2 == 0:
        res += (10 ** d_max)
    print(f"T({10 ** d_max}) = {res}")


if __name__ == "__main__":
    # Runtime is approx 8 minutes
    time_function(main, d_max=12)
    # Answer = 128088830547982

