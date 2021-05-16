from typing import List

class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        original_len = len(nums)
        if original_len <= 0:
            return 0
        curr_number = nums[original_len - 1]
        for i in range(original_len - 2, -1, -1):
            if nums[i] == curr_number:
                nums.pop(i)
            else:
                curr_number = nums[i]

        return len(nums)

print(Solution().removeDuplicates([1,1,2,3,4]))