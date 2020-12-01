from typing import List


class Solution:
    def spiralOrder(self, matrix: List[List[int]]) -> List[int]:
        if not matrix:
            return []
        T = L = 0
        R = len(matrix[0]) - 1
        B = len(matrix) - 1
        dir = 0
        result = []
        while L <= R and T <= B:
            if dir == 0:
                result = result + [matrix[T][k] for k in range(L, R + 1)]
                T = T + 1
            elif dir == 1:
                result = result + [matrix[k][R] for k in range(T, B + 1)]
                R = R - 1
            elif dir == 2:
                result = result + [matrix[B][k] for k in range(R, L - 1, - 1)]
                B = B - 1
            elif dir == 3:
                result = result + [matrix[k][L] for k in range(B, T - 1, - 1)]
                L = L + 1
            dir = (dir + 1) % 4
        return result

print(Solution().spiralOrder([[1,2,3,4],[5,6,7,8],[9,10,11,12]]))