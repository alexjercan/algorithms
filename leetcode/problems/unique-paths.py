from typing import Dict, Tuple


class Solution:
    def uniquePaths(self, m: int, n: int) -> int:
        return uniquePathsDp(m, n), uniquePathsMemo(m - 1, n - 1, m, n, dict())


def uniquePathsRec(i: int, j: int, m: int, n: int) -> int:
    if i < 0 or j < 0:
        return 0

    if i == 0 or j == 0:
        return 1

    return uniquePathsRec(i - 1, j, m, n) + uniquePathsRec(i, j - 1, m, n)


def uniquePathsMemo(i: int, j: int, m: int, n: int, memo: Dict[Tuple[int, int], int]) -> int:
    if i < 0 or j < 0:
        return 0

    if i == 0 or j == 0:
        return 1

    if (i, j) in memo:
        return memo[(i, j)]

    v1 = uniquePathsMemo(i - 1, j, m, n, memo)
    v2 = uniquePathsMemo(i, j - 1, m, n, memo)
    memo[(i, j)] = v1 + v2
    return v1 + v2


def uniquePathsDp(m: int, n: int) -> int:
    dp = [[0 for i in range(n)] for j in range(m)]

    for i in range(n):
        dp[0][i] = 1
    for i in range(m):
        dp[i][0] = 1

    for i in range(1, m):
        for j in range(1, n):
            dp[i][j] = dp[i-1][j] + dp[i][j-1]

    return dp[-1][-1]


print(Solution().uniquePaths(3, 7))
