from typing import List
from copy import copy


class Solution:
    def partition(self, s: str) -> List[List[str]]:
        n = len(s)
        result = []
        current_list = []
        dp = [[False for _ in range(n)] for _ in range(n)]
        self.dfs(result, s, 0, current_list, dp)
        return result

    def dfs(self, result: List[List[str]], s: str, start: int, current_list: List[str], dp: List[List[bool]]):
        if start >= len(s):
            result.append(copy(current_list))

        for end in range(start, len(s)):
            if s[start] == s[end] and (end - start <= 2 or dp[start + 1][end - 1]):
                dp[start][end] = True
                current_list.append(s[start:end + 1])
                self.dfs(result, s, end + 1, current_list, dp)
                current_list.pop()
