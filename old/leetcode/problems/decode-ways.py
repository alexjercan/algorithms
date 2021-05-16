class Solution:
    def numDecodings(self, s: str) -> int:
        def dfs(s):
            if s in memo:
                return memo[s]
            if not s:
                return 1
            count = 0
            if 0 < int(s[0]) <= 9:
                count += dfs(s[1:])
            if 10 <= int(s[:2]) <= 26:
                count += dfs(s[2:])
            memo[s] = count
            return count

        memo = {}
        dfs(s)
        return memo[s]