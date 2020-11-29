class Solution:
    def myPow(self, x: float, n: int) -> float:
        if(n == 0):
            return 1

        temp = self.myPow(x, int(n / 2))

        if (n % 2 == 0):
            return temp * temp
        else:
            return x * temp * temp if n > 0 else (temp * temp) / x

print(Solution().myPow(2, -2))


