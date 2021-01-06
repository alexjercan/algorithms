class Solution:
    def isHappy(self, n):
        if n == 1:
            return True
        if n < 10 and n != 1 and n != 7:
            return False
            
        s = 0
        while n > 0:
            a = n % 10
            s = s + a * a
            n = n // 10
        return self.isHappy(s)