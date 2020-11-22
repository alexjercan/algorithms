from typing import List

class Solution:
    def maxArea(self, height: List[int]) -> int:
        max_area = 0
        l = 0
        r = len(height) - 1
        while l < r:
            max_area = max(max_area, min(height[l], height[r]) * (r - l))
            if height[l] < height[r]:
                l = l + 1
            else:
                r = r - 1
        return max_area

print(Solution().maxArea([1,8,6,2,5,4,8,3,7]))