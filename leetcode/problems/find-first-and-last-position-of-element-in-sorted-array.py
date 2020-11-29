from typing import List
import math


class Solution:
    def searchRange(self, nums: List[int], target: int) -> List[int]:
        def binarySearchLower(arr, l, r, x):
            mid = l + (r - l) // 2
            if arr[mid] == x and r - l == 0:
                return mid
            elif r <= l:
                return -1
            elif arr[mid] >= x:
                return binarySearchLower(arr, l, mid, x)
            else:
                return binarySearchLower(arr, mid + 1, r, x)

        def binarySearchUpper(arr, l, r, x):
            mid = l + math.ceil((r - l) / 2)
            if arr[mid] == x and r - l == 0:
                return mid
            elif r <= l:
                return -1
            elif arr[mid] > x:
                return binarySearchUpper(arr, l, mid - 1, x)
            else:
                return binarySearchUpper(arr, mid, r, x)

        if not nums:
            return [-1, -1]
        return [binarySearchLower(nums, 0, len(nums) - 1, target),
                binarySearchUpper(nums, 0, len(nums) - 1, target)]


print(Solution().searchRange([5, 7, 7, 8, 8, 10], 6))

# [5,7,(7),8,8,10]
# [5,(7),7],8,8,10]
# [(5),7],7],8,8,10]
# [5,[(7)],7],8,8,10]
