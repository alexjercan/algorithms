from typing import List
from collections import defaultdict

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        indices = defaultdict(list)
        for i in range(0, len(nums)):
            indices[nums[i]].append(i)

        for num in indices:
            new_target = target - num
            if new_target in indices:
                if new_target != num:
                    return [indices[num][0], indices[new_target][0]]
                if len(indices[num]) > 1:
                    return [indices[num][0], indices[new_target][1]]

        return None


print(Solution().twoSum([3,2,4], 6))



