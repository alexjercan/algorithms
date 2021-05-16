DIRS = [(-1, 0), (0, -1), (0, 1), (1, 0)]

def build_path(discovered, w):
    path = []
    v = discovered[w]
    while v:
        path.append(w)
        w = v
        v = discovered[w]
    path.append(w)
    return path[::-1]


def dfs(grid, v, f):
    explored = []
    stack = [v]  # stack
    discovered = {v: None}  # discovered
    while stack:
        v = stack.pop()
        explored.append(v)
        for d in DIRS:
            w = (v[0] + d[0], v[1] + d[1])
            if grid[w[0]][w[1]] != '%' and w not in discovered:
                stack.append(w)
                discovered[w] = v
        if v == f:
            return len(explored), build_path(discovered, f)
    return len(explored), []


pacman = tuple([int(x) for x in input().split() if x])
food = tuple([int(x) for x in input().split() if x])
n, m = tuple([int(x) for x in input().split() if x])

grid = []
for i in range(0, n):
    grid.append(input().strip())

from copy import copy
explored, path = dfs(copy(grid), pacman, food)
print(explored)
for v in path:
    print(v[0], v[1])
print(len(path)-1)
for v in path:
    print(v[0], v[1])
