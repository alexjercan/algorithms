class Solution(object):
    def trailingZeroes(self, n):
        """
        :type n: int
        :rtype: int
        """
        a = 0
        while n // 5 != 0:
            a = a + n // 5
            n = n // 5
        return a
        