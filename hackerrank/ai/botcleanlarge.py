RIGHT = (0, 1)
LEFT = (0, -1)
UP = (-1, 0)
DOWN = (1, 0)
MOVES = [(RIGHT, "RIGHT"), (LEFT, "LEFT"), (UP, "UP"), (DOWN, "DOWN")]


def manhattan_distance(p1, p2):
    return abs(p1[0] - p2[0]) + abs(p1[1] - p2[1])


def get_dust_pos(board):
    dust = []
    for i, line in enumerate(board):
        for j, c in enumerate(line):
            if c == 'd':
                dust.append((i, j))
    return dust


def next_move(posr, posc, n, m, board):
    if board[posr][posc] == 'd':
        print("CLEAN")
        return
    loss = [manhattan_distance((i, j), (posr + move[0], posc + move[1]))
            for (i, j) in get_dust_pos(board) for move, _ in MOVES]
    print(MOVES[loss.index(min(loss)) % 4][1])


if __name__ == "__main__":
    pos = [int(i) for i in input().strip().split()]
    dim = [int(i) for i in input().strip().split()]
    board = [[j for j in input().strip()] for i in range(dim[0])]
    next_move(pos[0], pos[1], dim[0], dim[1], board)
