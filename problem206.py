from commonTools import time_function

REF_STR = "1_2_3_4_5_6_7_8_9_0"


def get_digits(n, d, nd):
    return n // (10 ** d) % (10 ** nd)


def matches_pattern(n: int, min_size: int) -> bool:
    n = f"{n:19d}"
    for i in range(-1, -min_size-1, -2):
        if n[i] != REF_STR[i]:
            return False
    return True


def main():
    options = {0}
    next_options = set()
    for d in range(10):
        for i in range(10):
            for opt in options:
                candidate = i * (10 ** d) + opt
                if matches_pattern(candidate ** 2, d+1):
                    next_options.add(candidate)
        options = next_options.copy()
        next_options = set()

    for opt in sorted(options):
        if len(str(opt**2)) == 19 and matches_pattern(opt ** 2, 19):
            print(f"answer = {opt}")
            print(f"{opt}^2 = {opt**2}")
            return


if __name__ == "__main__":
    time_function(main)
