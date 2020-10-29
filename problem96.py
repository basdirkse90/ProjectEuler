import numpy as np


class UnsolvableSudokuError(Exception):
    pass


def read_sudoku_file():
    with open('p096_sudoku.txt') as f:
        sud_list = []
        for i in range(50):
            sud = np.zeros((9, 9), dtype=int)
            for j in range(10):
                str = f.readline()
                if j == 0:
                    continue

                sud[j-1, :] = np.array(list(str)[0:9])
            sud_list.append(sud)

    return sud_list


def get_block(sud, i):
    a = i // 3
    b = i % 3
    return sud[3*a:3*(a+1), 3*b:3*(b+1)]


def is_valid(sud):
    def check_false(arr):
        val, count = np.unique(arr, return_counts=True)
        if val[0] == 0:
            if any(count[1::] > 1):
                return False
        else:
            if any(count > 1):
                return False
        return True

    for i in range(9):
        if not check_false(sud[i, :]) or not check_false(sud[:, i]) or not check_false(get_block(sud, i)):
            return False

    return True


def is_solved(sud):
    return np.all(sud!=0) and is_valid(sud)


def sole_candidate(sud):
    modified = False
    for a in range(81):
        i = a//9
        j = a % 9
        if sud[i, j] != 0:
            continue

        can = []
        for num in range(1, 10):
            sud[i, j] = num
            if is_valid(sud):
                can.append(num)
        if len(can) == 0:
            raise UnsolvableSudokuError('Sudoku is invalid. Position {}, {} has no candidates'.format(i, j))
        elif len(can) == 1:
            sud[i, j] = can[0]
            modified = True
        else:
            sud[i, j] = 0

    return modified


def unique_candidate(sud):
    modified = False
    for i in range(9):
        for arr, group in [(sud[i, :], 'row'), (sud[:, i], 'column'), (get_block(sud, i).ravel(), 'block')]:
            for num in range(1, 10):
                if num in arr:
                    continue
                ind_can = []
                for k in range(9):
                    if arr[k] != 0:
                        continue
                    arr[k] = num
                    if is_valid(sud):
                        ind_can.append(k)
                    arr[k] = 0
                if len(ind_can) == 0:
                    raise UnsolvableSudokuError('Sudoku is invalid. No position for {} in {} {}'.format(num, group, i))
                elif len(ind_can) == 1:
                    arr[ind_can[0]] = num
                    modified = True

    return modified


def solve_sudoku(sud):
    while sole_candidate(sud) or unique_candidate(sud):
        pass

    if is_solved(sud):
        return sud

    a = 0
    for a in range(81):
        if sud[a//9, a % 9] == 0:
            break
    i = a//9
    j = a % 9

    can = []
    for num in range(1, 10):
        sud[i, j] = num
        if is_valid(sud):
            can.append(num)
    sud[i, j] = 0

    for guess in can:
        sud_copy = np.array(sud)
        sud_copy[i, j] = guess
        try:
            return solve_sudoku(sud_copy)
        except UnsolvableSudokuError:
            pass
    raise UnsolvableSudokuError('Sudoku is invalid. Each candidate at {}, {} leads to an unsolvable sudoku'.format(i,j))


def result_value_of_sudoku(sud):
    return 100*sud[0, 0] + 10*sud[0, 1] + sud[0, 2]


input_sudokus = read_sudoku_file()
res = 0
for x, sud in enumerate(input_sudokus):
    sol = solve_sudoku(np.array(sud))
    val = result_value_of_sudoku(sol)
    print("i: {}\tval: {}".format(x, val))
    res += val

print("Answer = {}".format(res))
