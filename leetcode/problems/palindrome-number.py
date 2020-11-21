class Solution:
    def isPalindrome(self, x: int) -> bool:
        if x < 0:
            return False
        x_rev = self.reverse(x)
        if x_rev == x:
            return True
        return False

    def reverse(self, x: int) -> int:
        result = 0
        while x > 0:
            digit = x % 10
            x = int(x / 10)
            result = result * 10 + digit
        return result