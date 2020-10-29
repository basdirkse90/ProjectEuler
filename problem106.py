from itertools import combinations

n = 12

ind_set = list(range(1, n+1))

count = 0
for i in range(2, int(n/2+0.25)+1):
    for x in combinations(ind_set, i):
        x = list(x)
        remaining = list(set(ind_set)-set(x))
        remaining.sort()
        for y in combinations(remaining, i):
            y = list(y)
            comp = list(map(lambda x, y: x<y, x, y))
            if not all(comp) and any(comp):
                count += 1

print(count//2)