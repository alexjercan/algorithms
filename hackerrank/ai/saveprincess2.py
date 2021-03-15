RIGHT = (0, 1)
LEFT = (0, -1)
UP = (-1, 0)
DOWN = (1, 0)
MOVES = [(RIGHT, "RIGHT"), (LEFT, "LEFT"), (UP, "UP"), (DOWN, "DOWN")]


def manhattan_distance(p1, p2):
    return abs(p1[0] - p2[0]) + abs(p1[1] - p2[1])


def find_princess(n, grid):
    for i in range(n):
        for j in range(n):
            if grid[i][j].lower() == 'p':
                return i, j


def nextMove(n, r, c, grid):
    i, j = find_princess(n, grid)

    loss = [manhattan_distance((i, j), (r + move[0], c + move[1]))
            for move, _ in MOVES]
    return MOVES[loss.index(min(loss))][1]


n = int(input())
r, c = [int(i) for i in input().strip().split()]
grid = []
for i in range(0, n):
    grid.append(input())

print(nextMove(n, r, c, grid))
