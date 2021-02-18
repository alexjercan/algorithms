from typing import List

class Solution:
    def solve(self, board: List[List[str]]) -> None:
        if not board:
            return board

        border = set()
        intern = set()

        n, m = len(board), len(board[0])

        for i in range(n):
            for j in range(m):
                if board[i][j] != "O":
                    continue

                if i == 0 or j == 0 or i == n - 1 or j == m - 1:
                    border.add((i, j))
                else:
                    intern.add((i, j))

        while True:
            aux = set()
            for i, j in intern:
                if has_neighbor(i, j, border):
                    aux.add((i, j))

            if aux:
                border.update(aux)
                intern.difference_update(aux)
            else:
                for i, j in intern:
                    board[i][j] = "X"
                break
                

def has_neighbor(x, y, l):
    return (x - 1, y) in l or (x + 1, y) in l or (x, y - 1) in l or (x, y + 1) in l
        