from typing import List


class Solution:
    def longestPalindrome(self, s: str) -> str:
        max_len = 1
        start_idx = 0
        dp: List[List[bool]] = [[False for _ in range(len(s))] for _ in range(len(s))]
        for i in range(len(s)):
            dp[i][i] = True

        for i in range(len(s) - 1, -1, -1):
            for j in range(i+1, len(s)):
                if s[i] == s[j] and (dp[i+1][j-1] or j == i+1):
                    dp[i][j] = True
                    if max_len < j - i + 1:
                        max_len = j - i + 1
                        start_idx = i

        return s[start_idx:start_idx + max_len]

print(Solution().longestPalindrome("aaaa"))