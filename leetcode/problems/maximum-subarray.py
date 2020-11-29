from typing import List
import math

class Solution:
    def maxSubArray(self, nums: List[int]) -> int:
        curr_sum = 0
        curr_max = -math.inf
        for num in nums:
            curr_sum = curr_sum + num
            curr_max = max(curr_max, curr_sum)
            curr_sum = max(0, curr_sum);
        return curr_max

print(Solution().maxSubArray([-2,1,-3,4,-1,2,1,-5,4]))