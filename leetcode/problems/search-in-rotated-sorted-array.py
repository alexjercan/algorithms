from typing import List

class Solution:
    def search(self, nums: List[int], target: int) -> int:
        def findPivot(arr, l, r):
            if r < l:
                return -1
            mid = l + (r - l) // 2
            if mid - 1 >= l and arr[mid] < arr[mid - 1]:
                return mid - 1
            elif r >= mid + 1 and arr[mid] > arr[mid + 1]:
                return mid
            elif arr[mid] < arr[l]:
                return findPivot(arr, l, mid - 1);
            else:
                return findPivot(arr, mid + 1, r);

        def binarySearch(arr, l, r, x):
            if r < l:
                return -1
            mid = l + (r - l) // 2
            if arr[mid] == x:
                return mid
            elif arr[mid] > x:
                return binarySearch(arr, l, mid-1, x)
            else:
                return binarySearch(arr, mid + 1, r, x)

        l1 = 0
        r1 = findPivot(nums, 0, len(nums) - 1)
        l2 = r1 + 1
        r2 = len(nums)

        if r1 == -1:
            return binarySearch(nums, l1, r2 - 1, target)

        res1 = binarySearch(nums, l1, r1, target)
        if res1 != -1:
            return res1
        res2 = binarySearch(nums, l2, r2 - 1, target)
        return res2

print(Solution().search([1], 2))