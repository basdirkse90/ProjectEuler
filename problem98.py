import csv
import numpy as np
from collections import Counter
from itertools import combinations, permutations
from time import time


def applymap(letters, digits, word):
    res = ''
    for char in word:
        res += digits[letters.index(char)]
    return res


def is_perfect_square(number):
    return int(np.sqrt(number) + 0.5) ** 2 == number


t1 = time()

with open('p098_words.txt', mode='r') as f:
    content = csv.reader(f).__next__()

wl = dict()
for word in content:
    try:
        wl[len(word)].append(word)
    except KeyError:
        wl[len(word)] = [word]

anagram_list = []

for i in range(14, 0, -1):
    word_list = wl[i]
    for w1, w2 in combinations(word_list, 2):
        if Counter(w1) == Counter(w2):
            anagram_list.append((w1, w2))

print("Found {} anagram pairs: {}".format(len(anagram_list), anagram_list))
print()

dmax = 0  # The problem example CARE and RACE (with max value 9216) given in the example is in the word list.
for w1, w2 in anagram_list:
    letters = list(set(w1))
    letters.sort()

    print(w1, w2, int(np.math.factorial(10)/np.math.factorial(10-len(letters)) + 0.5))

    for perm in permutations("0123456789", len(letters)):
        i1_str = applymap(letters, perm, w1)
        if i1_str[0] == '0':
            continue

        i1 = int(i1_str)
        if not is_perfect_square(i1):
            continue

        i2_str = applymap(letters, perm, w2)
        if i2_str[0] == '0':
            continue

        i2 = int(i2_str)
        if not is_perfect_square(i2):
            continue

        print(i1, i2)

        dmax = max(dmax, i1, i2)
    print()



print("ANSWER = {}".format(dmax))
print("Execution took {:.2f} (s)".format((time()-t1)))