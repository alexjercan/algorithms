#!/usr/bin/python

def displayPathtoPrincess(n, grid):
    # print all the moves here
    if grid[0][0].lower() == 'p':
        dir_1 = "LEFT"
        dir_2 = "UP"
    elif grid[-1][0].lower() == 'p':
        dir_1 = "LEFT"
        dir_2 = "DOWN"
    elif grid[0][-1].lower() == 'p':
        dir_1 = "RIGHT"
        dir_2 = "UP"
    elif grid[-1][-1].lower() == 'p':
        dir_1 = "RIGHT"
        dir_2 = "DOWN"

    for i in range(n // 2):
        print(dir_1)
        print(dir_2)


m = int(input())
grid = []
for i in range(0, m):
    grid.append(input().strip())

displayPathtoPrincess(m, grid)
