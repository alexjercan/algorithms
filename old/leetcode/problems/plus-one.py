from typing import List

class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        if not digits:
            return []
        result = []
        carry = 0
        curr = len(digits) - 1
        num = digits[curr] + 1
        result.insert(0, num % 10)
        carry = num // 10
        curr = curr - 1
        while carry > 0 and curr >= 0:
            num = digits[curr] + carry
            result.insert(0, num % 10)
            carry = num // 10
            curr = curr - 1
        while curr >= 0:
            num = digits[curr]
            result.insert(0, num)
            curr = curr - 1
        if carry > 0:
            result.insert(0, carry)
        return result


print(Solution().plusOne([]))