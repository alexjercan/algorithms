from heapq import heappop, heappush
from typing import Dict, Tuple, List

DIRS = [(-1, 0), (0, -1), (0, 1), (1, 0)]

def manhattan_distance(a, b) -> float:
    (x1, y1) = a
    (x2, y2) = b
    return int(abs(x1 - x2) + abs(y1 - y2))


def build_path(discovered: Dict[int, Tuple[int, float]], sj: int) -> List[int]:
    path = []
    (s, _) = discovered[sj]
    while s:
        path.append(sj)
        sj = s
        (s, _) = discovered[sj]
    path.append(sj)
    return path[::-1]


class AStar:
    def __init__(self, env, h):
        (self.start, self.end, self.grid) = env
        self.h = h

    def execute(self):
        frontier = []
        w = 0 + self.h(self.start, self.end)
        heappush(frontier, (w, self.start))
        discovered = {self.start: (None, 0)}

        while frontier:
            (_, s) = heappop(frontier)
            if s == self.end:
                break
            (_, g) = discovered[s]
            for sj in get_next_states(self.grid, s):
                gj = g + 1
                wj = gj + self.h(sj, self.end)
                if sj not in discovered:
                    discovered[sj] = (s, gj)
                    heappush(frontier, (wj, sj))
                else:
                    (_, gj_old) = discovered[sj]
                    if gj_old > gj:
                        discovered[sj] = (s, gj)
                        heappush(frontier, (wj, sj))
        return build_path(discovered, self.end)


def get_next_states(grid, s):
    n = []
    for d in DIRS:
        w = (s[0] + d[0], s[1] + d[1])
        if grid[w[0]][w[1]] != '%':
            n.append(w)
    return n

if __name__ == '__main__':
    pacman = tuple([int(x) for x in input().split() if x])
    food = tuple([int(x) for x in input().split() if x])
    n, m = tuple([int(x) for x in input().split() if x])
    grid = []
    for i in range(0, n):
        grid.append(input().strip())

    path = AStar((pacman, food, grid), manhattan_distance).execute()

    print(len(path)-1)
    for v in path:
        print(v[0], v[1])
