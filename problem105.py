from itertools import combinations
import numpy as np
import csv


# This functions yields all subsets to be tested twice
def generate_subsets(n):
    ind_set = list(range(n))
    for i in range(2, int(n/2+0.25)+1):
        for x in combinations(ind_set, i):
            x = list(x)
            remaining = list(set(ind_set)-set(x))
            remaining.sort()
            for y in combinations(remaining, i):
                y = list(y)
                comp = list(map(lambda x, y: x<y, x, y))
                if not all(comp) and any(comp):
                    yield x, y


subsets = {}

for i in range(4, 13):
    subsets[i] = list(generate_subsets(i))

# file = [[3, 5, 6, 7], [6, 9, 11, 12, 13], [11,17,20,22,23,24], [11,18,19,20,22,25], [81, 88, 75, 42, 87, 84, 86, 65]]

sol = 0
with open('p105_sets.txt', mode='r') as f:
    file = csv.reader(f)

    for S in file:
        S = list(map(int, S))
        S.sort()
        l = len(S)
        S = np.array(S)

        # Check property i.
        if not sum(S[0:(l+1)//2]) > sum(S[-l//2+1:]):
            continue

        # Check property ii.
        if any([sum(S[x]) == sum(S[y]) for x, y in subsets[l]]):
            continue

        sol += sum(S)

print(sol)







