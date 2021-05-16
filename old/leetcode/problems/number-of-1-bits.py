class Solution(object):
    def hammingWeight(self, n):
        """
        :type n: int
        :rtype: int
        """
        bits = 0
        for i in range(32):
            if n & 1 != 0:
                bits = bits + 1
            n = n >> 1
        return bits