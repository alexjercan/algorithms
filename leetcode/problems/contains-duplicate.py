    class Solution:
        def containsDuplicate(self, nums: List[int]) -> bool:
            table = set(nums)
            return len(table) != len(nums)