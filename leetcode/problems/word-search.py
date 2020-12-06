from typing import List

class Solution:
    def exist(self, board: List[List[str]], word: str) -> bool:
        def search(board, row, col, word, inx):
            if row < 0 or row >= len(board) or col < 0 or col >= len(board[0]) or board[row][col] != word[inx]:
                return False
            if inx == len(word) - 1:
                return True

            board[row][col] = '-'
            if search(board, row + 1, col, word, inx + 1) or search(board, row - 1, col, word, inx + 1) or search(board, row, col + 1, word, inx + 1) or search(board, row, col - 1, word, inx + 1):
                return True
            board[row][col] = word[inx]
            return False

        x = len(board)
        y = len(board[0])
        if x == 0 or y == 0:
            return False
        if len(word) == 0:
            return True
        for i in range (x):
            for j in range (y):
                if search(board, i, j, word, 0):
                    return True
        return False

