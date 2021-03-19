UP = "UP"
DOWN = "DOWN"
RIGHT = "RIGHT"
LEFT = "LEFT"

def get_exit(grid):
    for i in range(0, 3):
        for j in range(0, 3):
            if grid[i][j] == 'e':
                return i, j
    return None


def get_walls(grid):
    ws = []
    for i in range(0, 3):
        for j in range(0, 3):
            if grid[i][j] == '#':
                ws.append((i, j))
    return ws


def get_dir_to_exit(e, ws):
    i, j = e
    if i == 0 and (0, 1) not in ws:
        return UP
    if j == 2 and (1, 2) not in ws:
        return RIGHT
    if j == 0 and (1, 0) not in ws:
        return LEFT
    if i == 2 and (2, 1) not in ws:
        return DOWN


def get_next_dir(ws):
    if (0, 1) not in ws:
        return UP
    if (1, 2) not in ws:
        return RIGHT
    if (1, 0) not in ws:
        return LEFT
    if (2, 1) not in ws:
        return DOWN


def display_path(b, grid):
    e = get_exit(grid)
    ws = get_walls(grid)
    
    return get_dir_to_exit(e, ws) if e is not None else get_next_dir(ws)


b = int(input())
grid = []
for i in range(0, 3):
    grid.append(input().strip())

print(display_path(b, grid))
