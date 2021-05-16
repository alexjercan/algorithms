class Solution:
    def climbStairs(self, n: int) -> int:
        pn_2 = 1
        pn_1 = 2
        pn = 0
        if n == 2:
            return 2
        if n == 1:
            return 1
        if n == 0:
            return 0
        for _ in range(3, n + 1):
            pn = pn_1 + pn_2
            pn_2 = pn_1
            pn_1 = pn

        return pn

print(Solution().climbStairs(3))