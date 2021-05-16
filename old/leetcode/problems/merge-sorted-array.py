from typing import List


class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        array_len = m
        i = 0
        j = 0
        while i < array_len and j < n:
            if nums1[i] >= nums2[j]:
                insert(nums1, i, nums2[j])
                i = i + 1
                j = j + 1
                array_len = array_len + 1
            else:
                i = i + 1
        while j < n:
            insert(nums1, i, nums2[j])
            i = i + 1
            j = j + 1

def insert(nums, index, num):
    for i in range(len(nums) - 1, index, -1):
        nums[i] = nums[i - 1]
    nums[index] = num

nums1 = [1, 2, 3, 0, 0, 0]
Solution().merge(nums1, 3, [2, 5, 6], 3)
print(nums1)
