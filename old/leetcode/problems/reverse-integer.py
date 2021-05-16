class Solution:
    def reverse(self, x: int) -> int:
        x_sign = 1 if x > 0 else -1
        result = 0
        x = abs(x)
        while x > 0:
            digit = x % 10
            x = int(x / 10)
            result = result * 10 + digit
        max_pow = pow(2, 31)
        if result >= max_pow - 1 or result <= -max_pow:
            return 0
        return result * x_sign

print(Solution().reverse(-1534236469))